# 力量训练APP Sprint 2 - 设计文档

> Sprint ID: sprint-2026-05-09-01
> Phase: MVP - 力量训练模块
> 方法论: MVP First → Delphi Review → TDD Build → 真机验证

---

## 1. 问题陈述

### v1 Sprint回顾
- ✅ 完成了所有服务层/模型层的TDD实现
- ✅ 单元测试202个通过，覆盖率93.5%
- ❌ APK安装到手机后白屏，完全无法使用

### 白屏根因分析
| # | 根因 | 严重性 |
|---|------|--------|
| 1 | `main()` 中没有 `await Hive.initFlutter()` | P0-Critical |
| 2 | `HomeScreenProvider` 是无效包装器（仅显示CircularProgressIndicator） | P0-Critical |
| 3 | `routes.dart` 中每次路由调用都 `AudioService.create()`, `TimerService()`, `StorageService()` | P0-Critical |
| 4 | Import循环依赖风险 | P1-Major |
| 5 | 没有错误边界（初始化失败无反馈） | P1-Major |

### Lessons Learned
- 单元测试通过 ≠ 能运行
- Hive必须在runApp前初始化
- Services必须通过ProviderScope全局管理
- 必须尽早真机验证，不能等全部代码写完

---

## 2. 产品概述

### 产品定位
个人使用的力量训练APP（Android APK），专注于跑者/健身爱好者的力量训练。

### MVP核心价值
- 力量训练模块完整可运行（深蹲、硬拉等8个臀腿动作）
- 倒计时系统 + 语音提示 + 音频反馈
- 训练记录本地保存
- 设置页面（音量/语音/时长）
- **离线可用**

### 非目标（Sprint 2排除）
- ❌ 跑前热身模块
- ❌ 跑后拉伸模块
- ❌ 训练历史记录页
- ❌ 暗色模式
- ❌ 视频播放（用静态图片+替代方案）
- ❌ go_router

---

## 3. 架构设计

### 3.1 层次结构
```
lib/
├── main.dart                    # Hive init → ProviderScope → MaterialApp
│
├── domain/                      # Pure Dart — no Flutter deps, no external packages
│   ├── entities/                # Exercise, Workout, TrainingSession
│   └── repositories/            # Abstract interfaces (TrainingRepository)
│
├── data/                        # Implements domain interfaces
│   ├── models/                  # SQLite DTOs (fromJson/toJson)
│   ├── repositories/            # TrainingRepositoryImpl
│   └── datasources/             # HiveDataSource
│
├── presentation/
│   ├── providers/               # Riverpod @riverpod Notifiers
│   ├── screens/                 # UI 页面
│   └── widgets/                 # 可复用组件
│
└── core/
    ├── services/                # TimerService, AudioService
    └── constants/               # Theme, strings, exercise data
```

### 3.2 Riverpod 生命周期规则（统一标准）

**规则**: Services=AppScope，页面状态=AutoDispose

| Service/Provider | 注册方式 | 生命周期 | 依据 |
|---------|---------|----------|------|
| `audioServiceProvider` | `@riverpod AudioService` | AppScope单例 | 全局共享音频资源 |
| `timerServiceProvider` | `@riverpod TimerService` | AppScope单例 | 全局计时器 |
| `storageServiceProvider` | `@riverpod StorageService` | AppScope单例 | 全局存储访问 |
| `trainingSessionProvider` | `@riverpod TrainingSessionNotifier` | AppScope单例 | 跨页面共享训练状态 |
| `settingsProvider` | `@riverpod SettingsNotifier` | AppScope单例 | 全局设置读写 |
| `exerciseController` | `@riverpod ExerciseController` | AutoDispose | 页面级，离开自动清理 |

**关键设计决策**:
- **不使用路由参数传递训练状态** - 所有训练数据通过Riverpod providers跨页面共享
- `TrainingSessionNotifier` 使用 `@Riverpod(keepAlive: true)` 确保训练状态跨页面不丢失
- 页面 `dispose` 时，`AutoDispose` provider 自动清理资源

### 3.3 音频系统架构（细化）

```
AudioService (AppScope单例)
├── 初始化 (preload)
│   ├── beep.mp3 → AudioPlayer 缓存实例
│   ├── complete.mp3 → AudioPlayer 缓存实例
│   └── flutter_tts → 单例 TTS 实例
├── 播放 (play)
│   ├── playBeep() → 使用缓存 AudioPlayer
│   ├── speak(text) → flutter_tts.speak()
│   └── playCountdown(N) → 缓存 AudioPlayer
├── 控制
│   ├── setVolume(0.0-1.0)
│   └── toggleMute()
└── 降级策略
    ├── TTS 不可用 → 降级为 beep-only 模式
    └── 资源加载失败 → 静默跳过，不影响主流程
```

**资源释放**: `AudioService` 为 AppScope 单例，**不手动 dispose**（App 生命周期 = 音频生命周期）。

### 3.4 初始化流程（强化）
```dart
void main() {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    
    // Flutter error override (prevents white screen)
    FlutterError.onError = (details) {
      FlutterError.presentError(details);
      debugPrint('FlutterError: ${details.exception}');
    };
    
    try {
      await Hive.initFlutter();
      await Hive.openBox('settings');
      await Hive.openBox('sessions');
    } on HiveError catch (e) {
      runApp(AppErrorScreen(error: e));
      return;
    }
    
    runApp(
      ProviderScope(
        child: MaterialApp(
          title: '力量训练',
          theme: AppTheme.light,
          debugShowCheckedModeBanner: false,
          home: const HomeScreen(),
        ),
      ),
    );
  }, (error, stackTrace) {
    // Global async error handler
    debugPrint('Uncaught async error: $error');
  });
}
```

### 3.5 错误边界
| 层级 | 机制 | 兜底表现 |
|------|-----|---------|
| App启动 | try-catch + runZonedGuarded | 显示 AppErrorScreen |
| Flutter framework | FlutterError.onError | debugPrint，不崩溃 |
| 页面 | ErrorWidget.builder | 显示 "页面加载失败" |
| TTS | 捕获异常，降级为beep | 仅音频，无语音 |

---

## 4. 页面设计

### 4.1 HomeScreen
```
┌──────────────────────────────┐
│        力量训练               │
│                              │
│  ┌────────────────────────┐  │
│  │  🏋️ 臀腿训练            │  │
│  │  8个动作 · 15分钟       │  │
│  │  难度: 初级             │  │
│  │                         │  │
│  │  [ 开始训练 ]           │  │
│  └────────────────────────┘  │
│                              │
│  ┌────────────────────────┐  │
│  │  ⚙️ 设置               │  │
│  └────────────────────────┘  │
└──────────────────────────────┘
```

### 4.2 WorkoutDetailScreen
```
┌──────────────────────────────┐
│ ← 臀腿训练                   │
│                              │
│  时长: 15分钟 · 8个动作       │
│                              │
│  动作列表:                    │
│  1. 深蹲           60s        │
│  2. 硬拉           60s        │
│  3. 箭步蹲         60s        │
│  ...                          │
│                              │
│  [ 开始训练 ]                 │
└──────────────────────────────┘
```

### 4.3 ExerciseScreen
```
┌──────────────────────────────┐
│ 深蹲              01/08       │
│                              │
│  ┌────────────────────────┐  │
│  │                        │  │
│  │   [动作示意图]          │  │
│  │                        │  │
│  │      ┌──────┐         │  │
│  │      │  45  │         │  │
│  │      └──────┘         │  │
│  │                        │  │
│  └────────────────────────┘  │
│                              │
│  双脚与肩同宽，膝盖弯曲...    │
│                              │
│  ⏮  ⏸  ⏭  🔊               │
└──────────────────────────────┘
```

### 4.4 RestScreen
```
┌──────────────────────────────┐
│         休息一下              │
│                              │
│         ┌──────┐             │
│         │   5  │             │
│         └──────┘             │
│                              │
│  下一个: 硬拉                 │
│  臀部/大腿后侧                │
│                              │
│       [ 跳过休息 ]           │
└──────────────────────────────┘
```

### 4.5 WorkoutCompleteScreen
```
┌──────────────────────────────┐
│         ✅                   │
│    训练完成！                 │
│                              │
│  时长: 15:00                  │
│  动作: 8/8                    │
│  消耗: ~120kcal               │
│                              │
│  [ 返回首页 ]                 │
└──────────────────────────────┘
```

### 4.6 SettingsScreen
```
┌──────────────────────────────┐
│ ← 设置                       │
│                              │
│  音频设置                     │
│  ├ 音量: ━━━━━●━━ 80%       │
│  ├ 语音提示: [ON]            │
│  └ 提示音: [ON]              │
│                              │
│  训练设置                     │
│  ├ 动作时长: 60秒             │
│  └ 休息时长: 5秒              │
└──────────────────────────────┘
```

---

## 5. 数据模型

### 5.1 Exercise
```dart
class Exercise {
  final String id;
  final String name;
  final String description;
  final String imagePath;
  final int durationSeconds;
  final int restSeconds;
  final List<String> targetMuscles;
  final Difficulty difficulty;
  final ExerciseCategory category;
}

enum Difficulty { beginner, intermediate, advanced }
enum ExerciseCategory { legs, core, upperBody, fullBody }
```

### 5.2 Workout
```dart
class Workout {
  final String id;
  final String name;
  final String description;
  final int estimatedMinutes;
  final List<Exercise> exercises;
}
```

### 5.3 TrainingSession
```dart
class TrainingSession {
  final String id;
  final String workoutId;
  final String workoutName;
  final DateTime startTime;
  final DateTime endTime;
  final int completedExercises;
  final int totalExercises;
  final int totalSeconds;
  final List<ExerciseLog> exerciseLogs;
}

class ExerciseLog {
  final String exerciseId;
  final String exerciseName;
  final int actualSeconds;
  final bool completed;
}
```

---

## 6. 页面导航与数据传递

### 6.1 导航策略：Riverpod Providers 取代路由参数

**决策**: 不使用路由参数或 Navigator.pushNamed(arguments)。所有训练状态通过 Riverpod providers 共享。

```dart
// TrainingSessionNotifier 管理训练全流程状态
@riverpod
class TrainingSessionNotifier extends _$TrainingSessionNotifier {
  @override
  TrainingSessionState build() => const TrainingSessionState.initial();
  
  void selectWorkout(String workoutId) {
    state = state.copyWith(
      status: WorkoutStatus.detail,
      currentWorkoutId: workoutId,
    );
  }
  
  void startWorkout() {
    state = state.copyWith(
      status: WorkoutStatus.exercising,
      currentExerciseIndex: 0,
      startTime: DateTime.now(),
    );
  }
  
  void nextExercise() { ... }
  void skipRest() { ... }
  void completeWorkout() { ... }
}
```

### 6.2 页面导航表

| 页面 | 数据来源 | 跳转方式 |
|------|---------|---------|
| HomeScreen | `workoutsProvider` | `Navigator.push(context, route)` |
| WorkoutDetailScreen | `trainingSessionProvider.currentWorkout` | 同上 |
| ExerciseScreen | `trainingSessionProvider.currentExercise` | 同上 |
| RestScreen | `trainingSessionProvider.nextExercise` | 同上 |
| WorkoutCompleteScreen | `trainingSessionProvider.completedSession` | 同上 |
| SettingsScreen | `settingsProvider` | 同上 |

### 6.3 状态流转（细化版）

```
[HomeScreen]
  ref.watch(workoutsProvider) → 显示训练卡片
    │ click → ref.read(trainingSessionProvider.notifier).selectWorkout('legs')
    ▼
[WorkoutDetailScreen]
  ref.watch(trainingSessionProvider) → 显示当前训练详情
    │ click "开始" → startWorkout()
    ▼
[ExerciseScreen]
  ref.watch(trainingSessionProvider.currentExercise)
    │ timer完成 → nextExercise()
    ▼
[RestScreen]
  ref.watch(trainingSessionProvider.nextExercise)
    │ rest结束/skip → 回到 ExerciseScreen
    ▼
[ExerciseScreen] → 循环直到最后一个动作
    │ 最后一个完成 → completeWorkout() → saveSession()
    ▼
[WorkoutCompleteScreen]
  ref.watch(trainingSessionProvider.completedSession)
    │ click "返回" → 重置状态
    ▼
[HomeScreen]
```

---

## 7. 音频系统

### 7.1 提示词表
| 场景 | 语音内容 |
|------|---------|
| 动作开始 | "开始：{动作名称}" |
| 每秒 | beep短音 |
| 最后5秒 | "5、4、3、2、1" |
| 动作结束 | "动作完成，休息{N}秒" |
| 休息结束 | "准备下一个动作" |
| 训练完成 | "训练完成，真棒！" |

### 7.2 技术方案
- `audioplayers` 播放 beep/complete 等音效
- `flutter_tts` 语音播报中文
- pre-load 音效在app启动时
- Settings 控制音量/语音开关

---

## 8. TDD策略

### 8.1 单元测试（100% 服务层覆盖）
| 文件 | 测试内容 | 覆盖目标 |
|------|---------|---------|
| `TimerService` | start/pause/resume/reset/stream发射 | 100% |
| `AudioService` | playBeep/speak/setVolume/mute/preload | 100% |
| `StorageService` | save/load/list/delete sessions | 100% |
| `TrainingSessionNotifier` | select/start/pause/next/complete/reset | 100% |
| `Domain entities` | 构造函数、copyWith、序列化 | 100% |

### 8.2 Widget测试（关键页面覆盖）
| Widget | 测试内容 | 覆盖目标 |
|--------|---------|---------|
| `CountdownTimer` | 初始显示、倒计时更新、完成回调、暂停/恢复 | 80%+ |
| `ProgressDots` | 渲染正确数量、当前索引高亮、全部完成状态 | 80%+ |
| `ExerciseControls` | 暂停/继续按钮交互、上一个/下一个按钮 | 80%+ |
| `HomeScreen` | 训练卡片显示、设置入口可见 | 80%+ |
| `WorkoutDetailScreen` | 动作列表渲染、开始按钮可见 | 80%+ |

### 8.3 动作数据来源
**MVP阶段**: 8个臀腿动作硬编码在 `core/constants/exercise_data.dart`
```dart
class ExerciseData {
  static Workout legsWorkout = Workout(
    id: 'legs',
    name: '臀腿训练',
    description: '针对跑者的核心力量训练',
    estimatedMinutes: 15,
    exercises: [
      Exercise(id: 'squat', name: '深蹲', durationSeconds: 60, restSeconds: 5,
        description: '双脚与肩同宽，膝盖弯曲...', targetMuscles: ['臀部', '大腿前侧']),
      // ... 其余7个动作
    ],
  );
}
```

### 8.4 测试工具
- `mocktail` - 无代码生成的 mock 库
- `fake_async` - 控制定时器测试
- `ProviderContainer` - Riverpod 测试隔离

### 8.5 测试命令
```bash
flutter test                                    # 全部测试
flutter test --coverage                         # 覆盖率
flutter test test/services/                     # 仅服务层测试
flutter build apk --debug                       # 构建
adb install -r build/app/outputs/flutter-apk/app-debug.apk  # 真机安装
```

---

## 9. 关键验证Gate

| Gate | 检查内容 | 通过标准 | 失败处理 |
|------|---------|---------|---------|
| **Delphi APPROVED** | 设计通过多专家评审 | ≥91% 共识，全部 Critical 已修复 | 修复后重新评审 (Round 2) |
| **TDD PASS** | 所有单元测试通过 | 服务层 100%，widget 80%，0 失败 | 修复测试或实现 |
| **构建成功** | `flutter build apk --debug` | 无编译错误，`flutter analyze` 0 error | 修复构建问题 |
| **真机可运行** | APK安装到手机首页能正常显示 | (1) 无白屏 (2) 首页显示训练卡片 (3) 点击可进入详情页 | 必须修复，不能跳过 |
| **真机训练流程** | 完整跑通8个动作循环 | (1) 开始训练 → 8个动作走完 → 完成页 (2) 3次连续训练无崩溃 (3) 训练记录正确保存 | 必须修复 |

---

## 10. Risks & Mitigations

| Risk | 影响 | 缓解措施 |
|------|-----|---------|
| Hive初始化再次失败 | 白屏 | try-catch + ErrorDisplay |
| 真机上TTS不可用 | 语音无反馈 | TTS初始化失败降级为beep |
| 资源文件缺失 | 构建失败 | 使用placeholder替代真实资源 |
| 内存泄漏（Timer） | APP卡顿 | 使用AutoDisposeNotifier |
| Android权限问题 | APK安装失败 | 最小化权限声明 |

---

## 11. 实施顺序

```
Step 0: 项目初始化 (清空runner_app旧代码，pubspec.yaml, AndroidManifest)
Step 1: main.dart + Hive初始化 + 错误边界 + ProviderScope (真机Gate 1: 白屏验证)
Step 2: domain entities + 数据模型 + exercise_data (硬编码8个动作) + TDD
Step 3: core services (TimerService, AudioService) + TDD
Step 4: StorageService (Hive CRUD) + SettingsStorage + TDD
Step 5: TrainingSessionNotifier + TDD
Step 6: HomeScreen + SettingsScreen + 基础路由 (真机Gate 2: 首页+设置可显示)
Step 7: WorkoutDetailScreen (真机Gate 2.5: 训练详情页可显示)
Step 8: ExerciseScreen + CountdownTimer + ProgressDots + ExerciseControls (真机Gate 3)
Step 9: RestScreen + 状态流转 (真机Gate 3.5: 能执行完整训练流程)
Step 10: WorkoutCompleteScreen + 训练记录保存 (真机Gate 4: 训练流程全跑通)
Step 11: Widget测试补全 + delphi-review --mode code-walkthrough
```

## 12. Settings 存储规范

| 设置项 | Hive Key | 默认值 | 类型 |
|--------|---------|-------|------|
| 音量 | `volume` | 0.8 | double |
| 语音开关 | `voiceEnabled` | true | bool |
| 音效开关 | `soundEnabled` | true | bool |
| 动作时长 | `exerciseDuration` | 60 | int |
| 休息时长 | `restDuration` | 5 | int |
| 屏幕常亮 | `keepScreenOn` | true | bool |

**存储策略**: 所有设置写入 `settings` Hive box。修改即时生效。APP 崩溃不影响设置数据。

## 13. 资源降级策略

| 资源类型 | 正常来源 | Fallback |
|---------|---------|---------|
| 动作图片 | `assets/images/exercises/{id}.png` | 占位图 `assets/images/placeholder.png` |
| 音效文件 | `assets/audio/beep.mp3` | 静默跳过 |
| TTS语音 | `flutter_tts.speak()` | beep 短音替代 |
| 图标 | Material Icons | Unicode emoji |

## 14. 预计时间
- 开发周期: 3-4 个工作日
- 依赖: 已有 Flutter 3.27.4 环境 + Android SDK + WSL2 ADB
