/// Timer status enum for tracking countdown timer state.
///
/// Used by TimerService to expose current timer state to UI.
/// Design Decision DD-TIMER-003: Use enum for type safety.
enum TimerStatus {
  /// Timer not started or reset
  idle,

  /// Timer actively counting down
  running,

  /// Timer paused, can be resumed
  paused,

  /// Timer reached zero
  completed,
}
