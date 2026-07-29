# 力量训练APP Sprint 2 - 设计文档

> Sprint ID: sprint-2026-05-09-01
> Phase: MVP - 力量训练模块

## 1. 问题陈述

### v1 Sprint回顾
- 完成了所有服务层/模型层的TDD实现
- 单元测试202个通过，覆盖率93.5%
- APK安装到手机后白屏，完全无法使用

### 白屏根因分析
| # | 根因 | 严重性 |
|---|------|--------|
| 1 | `main()` 中没有 `await Hive.initFlutter()` | P0-Critical |
| 2 | `HomeScreenProvider` 是无效包装器 | P0-Critical |
| 3 | `routes.dart` 中每次路由调用都创建新Service实例 | P0-Critical |
| 4 | Import循环依赖风险 | P1-Major |
| 5 | 没有错误边界 | P1-Major |

### Lessons Learned
- 单元测试通过 ≠ 能运行
- Hive必须在runApp前初始化
- Services必须通过ProviderScope全局管理
- 必须尽早真机验证

---

## 2. 产品概述

### MVP核心价值
- 力量训练模块完整可运行（8个臀腿动作）
- 倒计时 + 语音 + 音频反馈
- 训练记录本地保存
- 设置页面
- 离线可用

### 非目标
- 跑前热身、跑后拉伸、历史记录、暗色模式、视频播放、go_router

---

## 3. 架构设计

### 3.1 层次结构
```
lib/
├── main.dart                    # Hive init → ProviderScope → MaterialApp
├── domain/                      # Pure Dart
├── data/                        # Implements domain interfaces
├── presentation/                # Riverpod providers + screens + widgets
└── core/                        # services + constants
```

### 3.2 初始化流程
```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Hive.initFlutter();
    await Hive.openBox('settings');
    await Hive.openBox('sessions');
  } catch (e, st) {
    runApp(AppErrorScreen(error: e, stackTrace: st));
    return;
  }
  runApp(ProviderScope(child: MaterialApp(...)));
}
```

---

## 4. 页面设计
HomeScreen → WorkoutDetail → Exercise → Rest → Exercise → ... → Complete → Home

## 5. 数据模型
Exercise, Workout, TrainingSession, ExerciseLog

## 6. 音频系统
audioplayers + flutter_tts, pre-load音效

## 7. TDD策略
100%服务层覆盖 + widget测试 + 真机验证

## 8. 验证Gate
Delphi → TDD → 构建 → 真机

## 9. Risks & Mitigations
- Hive失败 → ErrorDisplay
- TTS不可用 → 降级
- 资源缺失 → placeholder