# Bug: 第一个动作倒计时结束后未进入下一个动作

**优先级**: Critical (阻塞MVP可用性)
**Gate**: Gate 3 真机验证
**报告日期**: 2026-05-17

## 复现步骤
1. 打开应用 → 点击"腿部力量训练"卡片
2. 点击"开始训练"进入 ExerciseScreen
3. 第一个动作（深蹲）60秒倒计时完成
4. 进入 RestScreen，休息5秒倒计时完成

## 预期结果
休息倒计时结束后，应自动进入第二个动作（弓步蹲）

## 实际结果
仍然停留在第一个动作（深蹲），循环重复深蹲倒计时

## 根因分析

### 嫌疑1: `TrainingSessionNotifier.nextExercise()` 逻辑问题
```dart
// training_session_provider.dart:88-97
void nextExercise() {
  if (state.currentExerciseIndex >= (state.currentWorkout?.exercises.length ?? 0) - 1) {
    completeWorkout();  // 最后一个动作 → 完成
    return;
  }
  state = state.copyWith(
    screen: WorkoutScreen.resting,
    currentExerciseIndex: state.currentExerciseIndex + 1,
  );
}
```
`nextExercise()` 在 ExerciseScreen 计时结束后被调用，它将 screen 设为 `resting`，index + 1。这是正确的。

### 嫌疑2: ExerciseScreen 计时完成时 `currentExerciseIndex` 已经是 0
```dart
// exercise_screen.dart:37-41
final exercise = ref.read(trainingSessionProvider).currentExercise;
if (exercise != null && seconds >= exercise.durationSeconds) {
  _onTimerComplete();
}
```
`_onTimerComplete()` 检查 `isLastExercise` 并调用 `nextExercise()` 或 `completeWorkout()`。

### 嫌疑3: **最可能的原因 — RestScreen `_onRestComplete` 路径问题**
```dart
// rest_screen.dart:51-58
void _onRestComplete() {
  _timer.stop();
  final notifier = ref.read(trainingSessionProvider.notifier);
  if (ref.read(trainingSessionProvider).isLastExercise) {
    notifier.completeWorkout();
  } else {
    notifier.skipRest();
  }
}
```
`skipRest()` 只改变 screen 为 `exercising`：
```dart
void skipRest() {
  state = state.copyWith(screen: WorkoutScreen.exercising);
}
```

### 嫌疑4: **TimerService 状态共享问题**
ExerciseScreen 和 RestScreen 各自创建独立的 `TimerService` 实例。当 RestScreen 计时结束后调用 `skipRest()` 回到 exercising，但 ExerciseScreen 的 `_elapsedSeconds` 在上一次 dispose 时已经重置。然而 **ExerciseScreen 重新 build 时 `initState` 会重新 `_timer.start()`**，这应该没问题。

### 嫌疑5: **训练流程状态机问题 — 最可能**
查看 TrainingFlowScreen 的路由逻辑：
```dart
return switch (state.screen) {
  WorkoutScreen.exercising => const ExerciseScreen(),
  WorkoutScreen.resting => const RestScreen(),
  ...
};
```

当 RestScreen 调用 `skipRest()` → screen 变为 `exercising` → TrainingFlowScreen rebuild → 显示 ExerciseScreen。

ExerciseScreen 的 `initState` 调用 `ref.read(trainingSessionProvider.notifier).startWorkout()`：
```dart
void startWorkout() {
  state = state.copyWith(
    screen: WorkoutScreen.exercising,
    currentExerciseIndex: 0,  // ← 这里！重置为 0！
    isPaused: false,
  );
}
```

**这就是根因！** `startWorkout()` 每次都会把 `currentExerciseIndex` 重置为 0。当从 RestScreen 返回 ExerciseScreen 时，ExerciseScreen 的 `initState` 再次调用 `startWorkout()`，把 index 设回 0，所以永远停留在第一个动作。

## 修复方案

### 方案A: `ExerciseScreen` 不调用 `startWorkout()`
`startWorkout()` 应该在 WorkoutDetailScreen 点击"开始训练"时调用，而不是在 ExerciseScreen 的 initState 中调用。ExerciseScreen 只需启动本地 TimerService 计时器。

```dart
// exercise_screen.dart initState — 移除 startWorkout() 调用
@override
void initState() {
  super.initState();
  // 移除: ref.read(trainingSessionProvider.notifier).startWorkout();
  _timer.start();
  // ...
}
```

### 方案B: `startWorkout()` 不重置 index（更安全）
```dart
void startWorkout() {
  state = state.copyWith(
    screen: WorkoutScreen.exercising,
    isPaused: false,
    // 不重置 currentExerciseIndex，由 startTraining(workout) 专门负责
  );
}
```

**推荐方案A**：ExerciseScreen 不应改变训练状态，它只是一个展示层。状态变更应由按钮触发。

## 相关文件
- `runner_app/lib/presentation/screens/exercise_screen.dart`
- `runner_app/lib/presentation/providers/training_session_provider.dart`
