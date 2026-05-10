import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import 'package:runner_app/models/workout.dart';
import 'package:runner_app/models/exercise.dart';
import 'package:runner_app/models/workout_session.dart';
import 'package:runner_app/models/workout_type.dart';
import 'package:runner_app/models/exercise_record.dart';

/// Workout state containing current workout progress.
class WorkoutState {
  /// Current workout being executed
  final Workout? workout;

  /// Current exercise index (0-based)
  final int currentExerciseIndex;

  /// Number of completed exercises
  final int completedExercises;

  /// Number of skipped exercises
  final int skippedExercises;

  /// Total elapsed seconds
  final int elapsedSeconds;

  /// Whether workout is in progress
  final bool isInProgress;

  const WorkoutState({
    this.workout,
    this.currentExerciseIndex = 0,
    this.completedExercises = 0,
    this.skippedExercises = 0,
    this.elapsedSeconds = 0,
    this.isInProgress = false,
  });

  /// Current exercise being executed
  Exercise? get currentExercise {
    if (workout == null || currentExerciseIndex >= workout!.exercises.length) {
      return null;
    }
    return workout!.exercises[currentExerciseIndex];
  }

  /// Total exercises in workout
  int get totalExercises => workout?.exercises.length ?? 0;

  /// Progress percentage (0-100)
  double get progressPercentage {
    if (totalExercises == 0) return 0;
    return (completedExercises / totalExercises) * 100;
  }

  /// Whether on last exercise
  bool get isLastExercise =>
      workout != null && currentExerciseIndex >= workout!.exercises.length - 1;

  /// Copy with modified fields
  WorkoutState copyWith({
    Workout? workout,
    int? currentExerciseIndex,
    int? completedExercises,
    int? skippedExercises,
    int? elapsedSeconds,
    bool? isInProgress,
  }) {
    return WorkoutState(
      workout: workout ?? this.workout,
      currentExerciseIndex: currentExerciseIndex ?? this.currentExerciseIndex,
      completedExercises: completedExercises ?? this.completedExercises,
      skippedExercises: skippedExercises ?? this.skippedExercises,
      elapsedSeconds: elapsedSeconds ?? this.elapsedSeconds,
      isInProgress: isInProgress ?? this.isInProgress,
    );
  }
}

/// Workout provider managing workout execution state.
class WorkoutNotifier extends StateNotifier<WorkoutState> {
  final Uuid _uuid = const Uuid();

  /// Current session (for persistence/recovery)
  WorkoutSession? _currentSession;

  WorkoutNotifier() : super(const WorkoutState());

  /// Get current session
  WorkoutSession? get currentSession => _currentSession;

  /// Start a new workout session.
  ///
  /// Creates a new WorkoutSession and initializes state.
  /// If already running a workout, resets and starts new one.
  void startWorkout(Workout workout) {
    _currentSession = WorkoutSession(
      id: _uuid.v4(),
      workoutId: workout.id,
      workoutName: workout.name,
      workoutType: workout.type,
      startTime: DateTime.now(),
      currentExerciseIndex: 0,
      remainingSeconds: 0,
      completedExercises: 0,
      totalExercises: workout.exercises.length,
      totalSeconds: 0,
      status: WorkoutStatus.running,
      exerciseRecords: const [],
    );

    state = WorkoutState(
      workout: workout,
      currentExerciseIndex: 0,
      completedExercises: 0,
      skippedExercises: 0,
      elapsedSeconds: 0,
      isInProgress: true,
    );
  }

  /// Advance to next exercise.
  ///
  /// Increments completedExercises and currentExerciseIndex.
  /// If on last exercise, triggers workout completion.
  void nextExercise() {
    if (state.workout == null || !state.isInProgress) return;

    final newIndex = state.currentExerciseIndex + 1;
    final newCompleted = state.completedExercises + 1;

    if (newIndex >= state.workout!.exercises.length) {
      completeWorkout();
      return;
    }

    _currentSession = _currentSession?.copyWith(
      currentExerciseIndex: newIndex,
      completedExercises: newCompleted,
    );

    state = state.copyWith(
      currentExerciseIndex: newIndex,
      completedExercises: newCompleted,
    );
  }

  /// Skip current exercise without marking as completed.
  ///
  /// Advances to next exercise but increments skippedExercises.
  void skipExercise() {
    if (state.workout == null || !state.isInProgress) return;

    final newIndex = state.currentExerciseIndex + 1;

    if (newIndex >= state.workout!.exercises.length) {
      completeWorkout();
      return;
    }

    _currentSession = _currentSession?.copyWith(
      currentExerciseIndex: newIndex,
    );

    state = state.copyWith(
      currentExerciseIndex: newIndex,
      skippedExercises: state.skippedExercises + 1,
    );
  }

  /// Go back to previous exercise.
  ///
  /// Only allowed if not on first exercise.
  void previousExercise() {
    if (state.currentExerciseIndex == 0) return;

    final newIndex = state.currentExerciseIndex - 1;

    _currentSession = _currentSession?.copyWith(
      currentExerciseIndex: newIndex,
    );

    state = state.copyWith(
      currentExerciseIndex: newIndex,
    );
  }

  /// Complete the workout session.
  ///
  /// Sets status to completed, records end time.
  void completeWorkout() {
    final endTime = DateTime.now();
    final totalSeconds =
        endTime.difference(_currentSession!.startTime).inSeconds;

    _currentSession = _currentSession?.copyWith(
      endTime: endTime,
      status: WorkoutStatus.completed,
      totalSeconds: totalSeconds,
      completedExercises: state.workout!.exercises.length,
    );

    state = state.copyWith(
      isInProgress: false,
      completedExercises: state.totalExercises,
    );
  }

  /// Pause the workout session.
  ///
  /// Sets status to paused, records pause timestamp.
  void pauseWorkout() {
    if (!state.isInProgress) return;

    _currentSession = _currentSession?.copyWith(
      status: WorkoutStatus.paused,
      pausedAt: DateTime.now(),
      remainingSeconds: 0,
    );

    state = state.copyWith(
      isInProgress: false,
    );
  }

  /// Resume a paused workout session.
  ///
  /// Sets status back to running, clears pause timestamp.
  void resumeWorkout() {
    if (_currentSession?.status != WorkoutStatus.paused) return;

    _currentSession = _currentSession?.copyWith(
      status: WorkoutStatus.running,
      clearPausedAt: true,
    );

    state = state.copyWith(
      isInProgress: true,
    );
  }

  /// Reset workout state completely.
  ///
  /// Clears session and provider state.
  void resetWorkout() {
    _currentSession = null;
    state = const WorkoutState();
  }

  /// Update elapsed seconds.
  ///
  /// Called by timer service to track total duration.
  void updateElapsedSeconds(int seconds) {
    state = state.copyWith(
      elapsedSeconds: seconds,
    );

    _currentSession = _currentSession?.copyWith(
      totalSeconds: seconds,
    );
  }
}

/// Main workout provider for state management.
final workoutProvider = StateNotifierProvider<WorkoutNotifier, WorkoutState>(
  (ref) => WorkoutNotifier(),
);

/// Current session provider for persistence/recovery.
final currentSessionProvider = Provider<WorkoutSession?>((ref) {
  return ref.watch(workoutProvider.notifier).currentSession;
});
