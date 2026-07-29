import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:strength_app/data/repositories/training_storage.dart';
import 'package:strength_app/domain/entities/exercise.dart';
import 'package:strength_app/domain/entities/training_session.dart';
import 'package:strength_app/domain/entities/workout.dart';

enum WorkoutScreen { home, detail, exercising, resting, complete }

class TrainingState {
  final WorkoutScreen screen;
  final Workout? currentWorkout;
  final int currentExerciseIndex;
  final bool isPaused;
  final TrainingSession? completedSession;
  final TrainingSession? interruptedSession;
  final DateTime? sessionStartTime;

  const TrainingState({
    this.screen = WorkoutScreen.home,
    this.currentWorkout,
    this.currentExerciseIndex = 0,
    this.isPaused = false,
    this.completedSession,
    this.interruptedSession,
    this.sessionStartTime,
  });

  Exercise? get currentExercise => currentWorkout != null &&
          currentExerciseIndex < currentWorkout!.exercises.length
      ? currentWorkout!.exercises[currentExerciseIndex]
      : null;

  Exercise? get nextExercise {
    if (currentWorkout == null) return null;
    final nextIndex = currentExerciseIndex + 1;
    return nextIndex < currentWorkout!.exercises.length
        ? currentWorkout!.exercises[nextIndex]
        : null;
  }

  bool get isLastExercise =>
      currentWorkout == null ||
      currentExerciseIndex >= currentWorkout!.exercises.length - 1;

  TrainingState copyWith({
    WorkoutScreen? screen,
    Workout? currentWorkout,
    int? currentExerciseIndex,
    bool? isPaused,
    TrainingSession? completedSession,
    TrainingSession? interruptedSession,
    DateTime? sessionStartTime,
  }) {
    return TrainingState(
      screen: screen ?? this.screen,
      currentWorkout: currentWorkout ?? this.currentWorkout,
      currentExerciseIndex: currentExerciseIndex ?? this.currentExerciseIndex,
      isPaused: isPaused ?? this.isPaused,
      completedSession: completedSession ?? this.completedSession,
      interruptedSession: interruptedSession ?? this.interruptedSession,
      sessionStartTime: sessionStartTime ?? this.sessionStartTime,
    );
  }
}

class TrainingSessionNotifier extends StateNotifier<TrainingState> {
  final TrainingStorage? _storage;
  DateTime? _sessionStartTime;

  TrainingSessionNotifier({TrainingStorage? storage}) : _storage = storage, super(const TrainingState());

  void selectWorkout(Workout workout) {
    state = state.copyWith(
      screen: WorkoutScreen.detail,
      currentWorkout: workout,
      currentExerciseIndex: 0,
    );
  }

  void startWorkout() {
    _sessionStartTime = DateTime.now();
    state = state.copyWith(
      screen: WorkoutScreen.exercising,
      currentExerciseIndex: 0,
      isPaused: false,
      sessionStartTime: _sessionStartTime,
    );
  }

  void goHome() {
    _sessionStartTime = null;
    state = const TrainingState();
  }

  /// Save current session as interrupted before exiting.
  Future<void> saveInterruptedSession() async {
    final workout = state.currentWorkout;
    if (workout == null || _storage == null) return;

    final session = TrainingSession(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      workoutId: workout.id,
      workoutName: workout.name,
      startTime: _sessionStartTime ?? DateTime.now(),
      completedExercises: state.currentExerciseIndex,
      totalExercises: workout.exercises.length,
      totalSeconds: 0,
      exerciseLogs: [],
      status: SessionStatus.paused,
      currentExerciseIndex: state.currentExerciseIndex,
    );

    await _storage.saveInterruptedSession(session);
    state = state.copyWith(interruptedSession: session);
  }

  /// Check for interrupted session and load it.
  void checkForInterruptedSession() {
    if (_storage == null) return;
    final interrupted = _storage.getInterruptedSession();
    if (interrupted != null && interrupted.isResumable) {
      state = state.copyWith(interruptedSession: interrupted);
    }
  }

  /// Resume from an interrupted session.
  void resumeInterruptedSession() {
    final interrupted = state.interruptedSession;
    if (interrupted == null) return;

    // Find the workout from ExerciseData
    // For now, we'll just restore the state
    state = state.copyWith(
      screen: WorkoutScreen.exercising,
      currentExerciseIndex: interrupted.currentExerciseIndex ?? 0,
      isPaused: false,
      sessionStartTime: interrupted.startTime,
    );

    // Clear the interrupted session from storage
    _storage?.clearInterruptedSession();
  }

  /// Discard the interrupted session.
  void discardInterruptedSession() {
    _storage?.clearInterruptedSession();
    state = state.copyWith();
  }

  void pauseExercise() {
    state = state.copyWith(isPaused: true);
  }

  void resumeExercise() {
    state = state.copyWith(isPaused: false);
  }

  void nextExercise() {
    if (state.currentExerciseIndex >=
        (state.currentWorkout?.exercises.length ?? 0) - 1) {
      completeWorkout();
      return;
    }
    state = state.copyWith(
      screen: WorkoutScreen.resting,
      currentExerciseIndex: state.currentExerciseIndex + 1,
    );
  }

  void skipRest() {
    state = state.copyWith(screen: WorkoutScreen.exercising);
  }

  void completeWorkout() {
    final workout = state.currentWorkout;
    if (workout == null) return;

    final session = TrainingSession(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      workoutId: workout.id,
      workoutName: workout.name,
      startTime: _sessionStartTime ?? DateTime.now(),
      endTime: DateTime.now(),
      completedExercises: workout.exercises.length,
      totalExercises: workout.exercises.length,
      totalSeconds: workout.totalDurationSeconds,
      exerciseLogs: workout.exercises
          .map(
            (e) => ExerciseLog(
              exerciseId: e.id,
              exerciseName: e.name,
              actualSeconds: e.durationSeconds,
              completed: true,
            ),
          )
          .toList(),
    );

    state = state.copyWith(
      screen: WorkoutScreen.complete,
      completedSession: session,
    );
    _sessionStartTime = null;
  }
}

final trainingSessionProvider =
    StateNotifierProvider<TrainingSessionNotifier, TrainingState>(
  (ref) => TrainingSessionNotifier(),
);
