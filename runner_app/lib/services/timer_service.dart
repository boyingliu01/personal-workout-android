import 'dart:async';

import 'package:runner_app/models/timer_status.dart';

/// Singleton service for countdown timer management.
///
/// Uses Stopwatch internally (not Timer.periodic) for single instance
/// management across the app. See Design Decision DD-TIMER-001.
///
/// Provides `Stream<int>` for countdown updates. See DD-TIMER-002.
class TimerService {
  /// Internal stopwatch for tracking elapsed time
  final Stopwatch _stopwatch = Stopwatch();

  /// Stream controller for countdown emissions
  StreamController<int>? _streamController;

  /// Timer for periodic stream emissions
  Timer? _tickTimer;

  /// Current countdown duration in seconds
  int _durationSeconds = 0;

  /// Current remaining seconds
  int _remainingSeconds = 0;

  /// Accumulated pause time (milliseconds)
  int _pausedElapsedMs = 0;

  /// Current timer status
  TimerStatus _status = TimerStatus.idle;

  /// Callback triggered when countdown reaches zero
  void Function()? _onComplete;

  /// Stream emitting remaining seconds every tick.
  /// Each emission decreases by 1 until reaching 0.
  Stream<int> get countdownStream {
    _streamController ??= StreamController<int>.broadcast();
    return _streamController!.stream;
  }

  /// Current remaining seconds value.
  int get remainingSeconds => _remainingSeconds;

  /// Current timer state.
  TimerStatus get status => _status;

  /// True if timer is actively running.
  bool get isRunning => _status == TimerStatus.running;

  /// True if timer is paused.
  bool get isPaused => _status == TimerStatus.paused;

  /// Elapsed milliseconds from Stopwatch.
  /// Used for testing Stopwatch usage.
  int get elapsedMilliseconds => _stopwatch.elapsedMilliseconds;

  /// Start countdown from specified duration.
  ///
  /// If timer is already running, resets to new duration.
  /// If duration is 0, immediately triggers completion.
  void start(int durationSeconds) {
    // Reset any existing timer state
    _tickTimer?.cancel();
    _stopwatch.reset();
    _pausedElapsedMs = 0;

    _durationSeconds = durationSeconds;
    _remainingSeconds = durationSeconds;

    // Handle edge case: duration = 0
    if (durationSeconds == 0) {
      _status = TimerStatus.completed;
      _onComplete?.call();
      _streamController?.close();
      _streamController = null;
      return;
    }

    _status = TimerStatus.running;
    _stopwatch.start();

    // Create new stream controller if needed
    _streamController ??= StreamController<int>.broadcast();

    // Emit initial value
    _streamController!.add(_remainingSeconds);

    // Start tick timer
    _tickTimer = Timer.periodic(const Duration(seconds: 1), _onTick);
  }

  /// Pause countdown, preserving remaining seconds.
  ///
  /// If timer is not running, returns gracefully with no effect.
  void pause() {
    if (!isRunning) return;

    _tickTimer?.cancel();
    _pausedElapsedMs = _stopwatch.elapsedMilliseconds;
    _stopwatch.stop();
    _status = TimerStatus.paused;
  }

  /// Resume countdown from paused state.
  ///
  /// If timer is not paused, returns gracefully with no effect.
  void resume() {
    if (!isPaused) return;

    _status = TimerStatus.running;
    _stopwatch.start();

    // Resume tick timer
    _tickTimer = Timer.periodic(const Duration(seconds: 1), _onTick);
  }

  /// Reset timer to idle state.
  ///
  /// Stops all timers and resets remaining seconds to 0.
  void reset() {
    _tickTimer?.cancel();
    _stopwatch.reset();
    _pausedElapsedMs = 0;
    _remainingSeconds = 0;
    _durationSeconds = 0;
    _status = TimerStatus.idle;

    // Close stream
    _streamController?.close();
    _streamController = null;
  }

  /// Set callback for countdown completion.
  ///
  /// Called when countdown reaches zero.
  void setOnComplete(void Function() callback) {
    _onComplete = callback;
  }

  /// Dispose resources.
  ///
  /// Must be called when service is no longer needed.
  void dispose() {
    reset();
  }

  /// Internal tick handler.
  ///
  /// Called every second while timer is running.
  void _onTick(Timer timer) {
    // Calculate remaining seconds based on stopwatch elapsed time
    final elapsedMs = _stopwatch.elapsedMilliseconds + _pausedElapsedMs;
    final elapsedSeconds = elapsedMs / 1000;
    _remainingSeconds = _durationSeconds - elapsedSeconds.floor();

    // Clamp to 0 minimum
    if (_remainingSeconds < 0) _remainingSeconds = 0;

    // Emit current value
    _streamController?.add(_remainingSeconds);

    // Check for completion
    if (_remainingSeconds == 0) {
      _tickTimer?.cancel();
      _stopwatch.stop();
      _status = TimerStatus.completed;
      _onComplete?.call();
      _streamController?.close();
      _streamController = null;
    }
  }
}
