# 跑者训练APP - 完整开发规划

## 项目概述

为马拉松和越野跑爱好者打造的个人训练APP（Android APK），提供跑前热身、跑后拉伸、力量训练三大核心功能。

---

## 技术选型

| 维度 | 选择 | 理由 |
|------|------|------|
| 框架 | **Flutter 3.x** | 单Dart代码库编译Android原生APK，性能接近原生，UI一致性高 |
| 状态管理 | **Riverpod** | 类型安全、可测试、适合音视频状态管理 |
| 本地存储 | **Hive** | 轻量NoSQL，存储训练记录和用户偏好 |
| 视频播放 | **video_player** | Flutter官方插件，支持本地和网络视频 |
| 音频/语音 | **audioplayers** + **flutter_tts** | 提示音+文字转语音 |
| 屏幕常亮 | **wakelock_plus** | 保持屏幕常亮训练时（wakelock已deprecated） |

---

<!-- /autoplan restore point: ~/.gstack/projects/sport-apk/master-autoplan-restore-20260411-220111.md -->

<!-- AUTONOMOUS DECISION LOG -->
## Decision Audit Trail

| # | Phase | Decision | Classification | Principle | Rationale |
|---|-------|----------|-----------------|-----------|-----------|
| 1 | CEO | Mode: SELECTIVE EXPANSION | Mechanical | P6 | Default for autoplan |
| 2 | CEO | Approach: Flutter Native | Mechanical | P5 | Matches documented environment |
| 3 | CEO | Add calendar widget | Taste | P1/P2 | In blast radius, <1d effort |
| 4 | CEO | Add session recovery UI | Mechanical | P1 | Missing critical state |
| 5 | CEO | Add loading state | Mechanical | P1 | Missing UX state |
| 6 | CEO | Bundle warmup videos only | Taste | P3 | APK size concern |
| 7 | Eng | Use enum for WorkoutStatus | Mechanical | P5 | Type safety |
| 8 | Eng | Add test section | Mechanical | P1 | 100% coverage goal |
| 9 | Eng | Add video dispose constraint | Mechanical | P5 | Memory safety |

---

## Session Recovery Flow (added by autoplan)

When user exits training mid-way or app crashes:

### Exit Confirmation
- Back button during exercise → show dialog: "退出训练？当前进度将保存"
- Options: "继续训练" / "保存并退出"
- On save: persist `WorkoutSession.pausedAt`, `currentExerciseIndex`, `status="paused"`

### Crash Recovery
- App restart with `status="paused"` → show: "上次训练未完成，是否继续？"
- Options: "继续上次训练" / "开始新训练"
- On continue: resume from `currentExerciseIndex + 1` (skip partial exercise)

### Data Persistence
```dart
// Recovery state
class WorkoutSession {
  final String status; // completed | interrupted | paused
  final DateTime? pausedAt;
  final int currentExerciseIndex;
  final int remainingSeconds; // timer state
}
```

---

## Loading States (added by autoplan)

### Exercise Screen Loading
- State: `loading → playing → paused → error`
- Loading indicator: circular progress + "加载动作视频..."
- Max load time: 3 seconds, then fallback to static image

### Fallback Strategy
```dart
// Video fallback
if (videoLoadTimeout > 3000ms) {
  showStaticImage(exercise.imagePath);
  speak(exercise.description); // TTS fallback
}
```

---

## Performance Constraints (added by autoplan)

### Video Memory
- Single `VideoPlayerController` per screen
- `dispose()` on `dispose()` callback
- No cached video controllers across screens

### Audio Pre-loading
- Load `beep.mp3`, `countdown.mp3`, `complete.mp3` at app init
- Use `audioplayers.createPlayer()` for voice (not cache)

### Timer
- Single `Stopwatch` instance in `TimerService`
- Not per-screen `Timer.periodic`
- Use `Stream<int>` for countdown updates

---

## 核心功能模块

### 模块一：跑前动态热身 (PreRunWarmup)
**时长**：10-15分钟  
**目标**：激活心肺、提升体温、动态拉伸主要肌群

**动作列表（12-14个动作，每个45-60秒）**：
1. 开合跳 (Jumping Jacks) - 全身激活
2. 高抬腿 (High Knees) - 髋屈肌激活
3. 后踢腿 (Butt Kicks) - 股四头肌/腘绳肌
4. 侧向交叉步 (Grapevine) - 髋关节活动度
5. 动态弓步转体 (Lunge with Twist) - 髋屈肌/胸椎
6. 直腿踢 (Leg Swings - Front/Back) - 腘绳肌
7. 侧摆腿 (Leg Swings - Side) - 髋内收/外展
8. 髋关节绕环 (Hip Circles) - 髋关节活动度
9. 最伟大拉伸 (World's Greatest Stretch) - 全身动态
10. 小腿拉伸 (Calf Raises/Walks) - 小腿/跟腱
11. 手臂绕环 (Arm Circles) - 肩关节
12. 躯干旋转 (Torso Twists) - 核心激活

**组间休息**：5秒自动过渡

---

### 模块二：跑后拉伸 (PostRunStretch)
**时长**：20-30分钟  
**目标**：放松紧张肌群、促进乳酸代谢、提升柔韧性、加速恢复

**动作列表（16-20个动作，每个45-60秒）**：

**下肢拉伸（核心）**：
1. 站立股四头肌拉伸 (Standing Quad Stretch)
2. 站立腘绳肌拉伸 (Standing Hamstring Stretch)
3. 小腿后侧拉伸 (Standing Calf Stretch - Straight/Knee Bent)
4. 髋屈肌弓步拉伸 (Kneeling Hip Flexor Stretch)
5. 鸽子式臀肌拉伸 (Pigeon Pose - Glute)
6. 坐姿蝴蝶式 (Butterfly Stretch - Adductors)
7. 仰卧4字拉伸 (Supine Figure-4 - Piriformis)
8. 坐姿宽腿前屈 (Wide-Legged Forward Fold)

**躯干/核心拉伸**：
9. 猫牛式 (Cat-Cow - 脊柱活动)
10. 仰卧脊柱扭转 (Supine Spinal Twist)
11. 眼镜蛇式 (Cobra - 腹部/髋屈肌)
12. 婴儿式 (Child's Pose - 全身放松)

**上肢/肩颈拉伸**：
13. 颈部侧屈拉伸 (Neck Side Stretch)
14. 上斜方肌拉伸 (Upper Trapezius Stretch)
15. 胸肌门框拉伸 (Doorway Pec Stretch)
16. 肩部后伸拉伸 (Cross-Body Shoulder Stretch)
17. 过头三头肌拉伸 (Overhead Triceps Stretch)

**组间休息**：5秒自动过渡

---

### 模块三：力量训练 (StrengthTraining)
**时长**：30-45分钟  
**目标**：增强肌力、改善跑姿、预防损伤、提升跑步经济性

**训练结构**：三大板块，每板块后接专项拉伸

#### 板块A：臀腿力量（Runner's Legs）
**6个动作，每个45-60秒，组间休息5秒**：
1. 深蹲 (Squats) - 股四头肌/臀大肌
2. 弓步蹲 (Lunges) - 单腿稳定性
3. 单腿硬拉 (Single-Leg RDL) - 腘绳肌/平衡
4. 侧弓步 (Side Lunges) - 髋内收/外展
5. 提踵 (Calf Raises) - 小腿/跟腱
6. 臀桥 (Glute Bridge) - 臀大肌/核心

**臀腿专项拉伸（3分钟）**：
- 站立股四头肌拉伸
- 腘绳肌拉伸
- 髋屈肌拉伸
- 小腿拉伸

#### 板块B：核心力量（Core for Runners）
**6个动作，每个45-60秒，组间休息5秒**：
1. 平板支撑 (Plank) - 核心稳定性
2. 死虫式 (Dead Bug) - 对侧伸展/核心控制
3. 登山者 (Mountain Climbers) - 核心/心肺
4. 俄罗斯转体 (Russian Twists) - 腹斜肌
5. 仰卧抬腿 (Leg Raises) - 下腹部
6. 鸟狗式 (Bird Dog) - 核心/平衡

**核心专项拉伸（2分钟）**：
- 猫牛式
- 仰卧脊柱扭转
- 眼镜蛇式
- 婴儿式

#### 板块C：上肢力量（Upper Body Balance）
**6个动作，每个45-60秒，组间休息5秒**：
1. 俯卧撑 (Push-ups) - 胸/肩/三头
2. 三头肌撑体 (Tricep Dips) - 三头肌
3. 超人式 (Superman) - 下背/臀/后肩
4. 侧卧撑 (Side Plank) - 腹斜肌/肩
5. 墙壁天使 (Wall Angels) - 肩胛稳定
6. 哑铃/水瓶弯举 (Bicep Curls - 可选水瓶) - 二头肌

**上肢专项拉伸（3分钟）**：
- 胸肌拉伸
- 肩部拉伸
- 三头肌拉伸
- 颈部拉伸

---

## 交互设计规范

### 1. 训练流程状态机

```
[训练选择页] → [准备页] → [动作执行页] → [休息页] → [完成页]
                    ↓              ↓
               [暂停] ←─────── [跳过/重播]
```

### 2. 动作执行页核心元素

| 元素 | 说明 |
|------|------|
| 视频区域 | 顶部60%屏幕，循环播放当前动作教学视频 |
| 动作名称 | 视频下方大字号显示 |
| 倒计时圈 | 中央圆形进度条，剩余时间 |
| 数字倒计时 | 大字号显示剩余秒数 |
| 进度点 | 底部一行圆点，显示当前是第几个动作 |
| 控制按钮 | 暂停/继续、上一个、下一个、音量 |

### 3. 音频系统

| 场景 | 音频反馈 |
|------|----------|
| 动作开始 | "开始：{动作名称}" |
| 每秒滴答 | "嘀"（短促提示音） |
| 最后5秒 | "5、4、3、2、1"（语音倒计时） |
| 动作结束 | "动作完成，休息5秒" |
| 休息结束 | "准备下一个动作" |
| 训练完成 | "训练完成，真棒！" |

### 4. 手势操作

| 手势 | 操作 |
|------|------|
| 点击视频 | 播放/暂停 |
| 左滑 | 下一个动作 |
| 右滑 | 上一个动作 |
| 双击 | 静音/取消静音 |

---

## 数据模型

### Workout（训练计划）
```dart
class Workout {
  final String id;                    // 唯一标识
  final String name;                  // 训练名称
  final String description;           // 描述
  final WorkoutType type;             // 类型：热身/拉伸/力量
  final int estimatedMinutes;         // 预计时长
  final List<Exercise> exercises;     // 动作列表
  final String? coverImage;           // 封面图
}
```

### Exercise（单个动作）
```dart
class Exercise {
  final String id;
  final String name;                  // 动作名称
  final String description;           // 动作说明
  final String? videoUrl;             // 教学视频URL
  final String? localVideoPath;       // 本地视频路径
  final int durationSeconds;          // 持续时间（默认45-60s）
  final int restSeconds;              // 组间休息（默认5s）
  final List<String> targetMuscles;   // 目标肌群
  final ExerciseCategory category;    // 分类
}
```

### WorkoutSession（训练记录）
```dart
class WorkoutSession {
  final String id;
  final String workoutId;             // 关联的训练计划
  final DateTime startTime;           // 开始时间
  final DateTime? endTime;              // 结束时间
  final int completedExercises;       // 完成动作数
  final int totalExercises;           // 总动作数
  final int totalSeconds;             // 实际用时
  final List<ExerciseRecord> exerciseRecords; // 每个动作的记录
}
```

---

## 视频资源方案

### MVP阶段
- **来源**：本地预置视频（assets/videos/目录）
- **格式**：MP4, 720p, 2Mbps码率
- **Fallback**：如果视频未准备好，使用静态示意图 + GIF动态演示
- **存储位置**：assets/videos/{warmup,stretch,strength}/

### 视频制作建议
- 每个动作录制15-30秒演示片段
- 循环播放以覆盖训练时长
- 可使用免费运动教学视频资源或自行录制

---

## 难度分级体系

每个训练模块提供难度筛选功能：
- **初级**：适合新手，动作简单易学
- **中级**：有一定基础，动作有一定挑战
- **高级**：适合有经验的跑者，动作难度较高

用户可在首页按难度筛选训练，或在设置页设置默认难度偏好。

---

## 数据模型（完整版）

### UserProfile（用户信息）
```dart
class UserProfile {
  final String id;
  final String name;                  // 用户昵称
  final DateTime createdAt;           // 创建时间
  final int totalWorkouts;            // 总训练次数
  final int totalMinutes;             // 总训练时长
  final String preferredDifficulty;   // 默认难度偏好
  final int defaultExerciseDuration;  // 默认动作时长（秒）
  final int defaultRestDuration;      // 默认休息时长（秒）
}
```

### WorkoutSession（训练记录 - 增强版）
```dart
class WorkoutSession {
  final String id;
  final String workoutId;             // 关联的训练计划
  final DateTime startTime;           // 开始时间
  final DateTime? endTime;            // 结束时间
  final DateTime? pausedAt;           // 暂停时间点（用于恢复）
  final int currentExerciseIndex;     // 当前动作索引（用于恢复）
  final int completedExercises;       // 完成动作数
  final int totalExercises;           // 总动作数
  final int totalSeconds;             // 实际用时
  final String status;                // completed | interrupted | paused
  final List<ExerciseRecord> exerciseRecords;
}
```

### Exercise（单个动作 - 增强版）
```dart
class Exercise {
  final String id;
  final String name;                  // 动作名称
  final String description;           // 动作说明
  final String? videoUrl;             // 教学视频URL
  final String? localVideoPath;       // 本地视频路径
  final String? imagePath;            // 预览图片路径（fallback）
  final int durationSeconds;          // 持续时间（默认45-60s）
  final int restSeconds;              // 组间休息（默认5s）
  final List<String> targetMuscles;   // 目标肌群
  final String difficulty;            // 难度：beginner/intermediate/advanced
  final ExerciseCategory category;    // 分类
}
```

---

## 测试计划 (added by autoplan)

### 单元测试

| 文件 | 测试内容 | 覆盖率目标 |
|------|----------|------------|
| `lib/services/timer_service.dart` | start/pause/resume/reset | 100% |
| `lib/services/audio_service.dart` | playBeep/playCountdown/speak/setVolume | 100% |
| `lib/providers/workout_provider.dart` | startWorkout/nextExercise/completeWorkout | 100% |
| `lib/providers/session_provider.dart` | pauseSession/resumeSession | 100% |

### Widget 测试

| Widget | 测试内容 |
|--------|----------|
| `countdown_timer.dart` | 渲染、倒计时更新、完成回调 |
| `exercise_controls.dart` | 暂停/继续、上一个/下一个按钮 |
| `progress_dots.dart` | 进度显示、当前索引高亮 |

### Integration 测试 (E2E)

| 流程 | 测试场景 |
|------|----------|
| 热身模块完整流程 | 开始 → 完成 → 统计页 |
| 暂停恢复 | 训练中暂停 → 恢复 → 继续 |
| 跳过动作 | 点击跳过 → 休息页 → 下一个动作 |
| 中途退出 | 训练中退出 → 确认 → 保存状态 |

### 测试命令

```bash
flutter test                           # 单元测试
flutter test test/widgets/             # Widget 测试
flutter test integration_test/         # E2E 测试
flutter test --coverage                # 覆盖率报告
```

---

## 项目文件结构

```
lib/
├── main.dart                      # 应用入口
├── app.dart                       # MaterialApp配置
├── constants/
│   ├── app_theme.dart             # 主题配置
│   ├── app_colors.dart              # 颜色常量
│   ├── app_strings.dart             # 文本常量
│   └── exercise_data.dart         # 预置动作数据
├── models/
│   ├── workout.dart
│   ├── exercise.dart
│   ├── workout_session.dart
│   └── exercise_record.dart
├── providers/
│   ├── workout_provider.dart      # 训练计划状态
│   ├── session_provider.dart      # 当前训练会话
│   ├── timer_provider.dart        # 倒计时控制
│   └── settings_provider.dart     # 用户设置
├── screens/
│   ├── home_screen.dart           # 首页-训练选择
│   ├── workout_detail_screen.dart # 训练详情/准备页
│   ├── exercise_screen.dart       # 动作执行页（核心）
│   ├── rest_screen.dart           # 休息过渡页
│   ├── workout_complete_screen.dart # 训练完成页
│   ├── settings_screen.dart       # 设置页
│   └── history_screen.dart        # 历史记录页
├── widgets/
│   ├── common/
│   │   ├── countdown_timer.dart   # 倒计时圆圈组件
│   │   ├── progress_dots.dart     # 进度点组件
│   │   ├── exercise_video_player.dart # 视频播放器
│   │   └── audio_controller.dart  # 音频控制
│   ├── workout/
│   │   ├── workout_card.dart      # 训练卡片
│   │   ├── exercise_list_item.dart # 动作列表项
│   │   └── muscle_tag.dart        # 肌群标签
│   └── exercise/
│       ├── exercise_controls.dart # 播放控制
│       ├── exercise_info.dart     # 动作信息
│       └── countdown_overlay.dart # 倒计时遮罩
├── services/
│   ├── audio_service.dart         # 音频播放/TTS
│   ├── video_service.dart         # 视频管理
│   ├── timer_service.dart         # 计时器服务
│   ├── haptic_service.dart        # 振动反馈
│   └── storage_service.dart       # 本地存储
├── utils/
│   ├── time_formatter.dart        # 时间格式化
│   ├── exercise_validator.dart    # 数据校验
│   └── constants.dart
└── routes.dart                    # 路由配置

assets/
├── videos/                        # 动作教学视频
│   ├── warmup/                    # 热身动作视频
│   ├── stretch/                   # 拉伸动作视频
│   └── strength/                  # 力量训练视频
├── images/
│   ├── covers/                    # 训练封面图
│   ├── muscles/                   # 肌群示意图
│   └── icons/                     # 图标资源
├── audio/
│   ├── beep.mp3                   # 滴答声
│   ├── countdown.mp3              # 倒计时音效
│   └── complete.mp3               # 完成音效
└── fonts/                         # 自定义字体

android/                           # Android原生配置
├── app/src/main/res/raw/          # 视频资源（备用）
└── AndroidManifest.xml            # 权限配置

pubspec.yaml                       # 依赖管理
README.md                          # 项目说明
