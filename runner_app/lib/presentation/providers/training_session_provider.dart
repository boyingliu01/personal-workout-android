import 'package:flutter_riverpod/flutter_riverpod.dart';
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

  const TrainingState({
    this.screen = WorkoutScreen.home,
    this.currentWorkout,
    this.currentExerciseIndex = 0,
    this.isPaused = false,
    this.completedSession,
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
  }) {
    return TrainingState(
      screen: screen ?? this.screen,
      currentWorkout: currentWorkout ?? this.currentWorkout,
      currentExerciseIndex: currentExerciseIndex ?? this.currentExerciseIndex,
      isPaused: isPaused ?? this.isPaused,
      completedSession: completedSession ?? this.completedSession,
    );
  }
}

class TrainingSessionNotifier extends StateNotifier<TrainingState> {
  TrainingSessionNotifier() : super(const TrainingState());

  void selectWorkout(Workout workout) {
    state = state.copyWith(
      screen: WorkoutScreen.detail,
      currentWorkout: workout,
      currentExerciseIndex: 0,
    );
  }

  void startWorkout() {
    state = state.copyWith(
      screen: WorkoutScreen.exercising,
      currentExerciseIndex: 0,
      isPaused: false,
    );
  }

  void goHome() {
    state = const TrainingState();
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
      startTime: DateTime.now(),
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
  }
}

final trainingSessionProvider =
    StateNotifierProvider<TrainingSessionNotifier, TrainingState>(
  (ref) => TrainingSessionNotifier(),
);
