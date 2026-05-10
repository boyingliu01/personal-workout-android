import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:strength_app/domain/entities/exercise.dart';
import 'package:strength_app/domain/entities/workout.dart';
import 'package:strength_app/presentation/providers/training_session_provider.dart';

void main() {
  group('TrainingState', () {
    test('home screen shows correct values', () {
      const s = TrainingState();
      expect(s.screen, WorkoutScreen.home);
      expect(s.currentWorkout, isNull);
      expect(s.currentExerciseIndex, 0);
      expect(s.isPaused, isFalse);
    });

    test('currentExercise returns null when no workout', () {
      const s = TrainingState();
      expect(s.currentExercise, isNull);
    });

    test('isLastExercise true when no workout', () {
      const s = TrainingState();
      expect(s.isLastExercise, isTrue);
    });
  });

  group('TrainingSessionNotifier', () {
    late ProviderContainer container;
    late TrainingSessionNotifier notifier;

    setUp(() {
      container = ProviderContainer();
      notifier = container.read(trainingSessionProvider.notifier);
    });

    tearDown(() {
      container.dispose();
    });

    test('selectWorkout sets detail screen', () {
      const workout = Workout(
        id: 'legs', name: 'Test', description: '',
        estimatedMinutes: 10, exercises: [],
      );
      notifier.selectWorkout(workout);
      final state = container.read(trainingSessionProvider);
      expect(state.screen, WorkoutScreen.detail);
      expect(state.currentWorkout?.id, 'legs');
    });

    test('startWorkout sets exercising screen', () {
      notifier.startWorkout();
      final state = container.read(trainingSessionProvider);
      expect(state.screen, WorkoutScreen.exercising);
    });

    test('pause and resume', () {
      notifier.startWorkout();
      notifier.pauseExercise();
      expect(container.read(trainingSessionProvider).isPaused, isTrue);

      notifier.resumeExercise();
      expect(container.read(trainingSessionProvider).isPaused, isFalse);
    });

    test('goHome resets state', () {
      notifier.startWorkout();
      notifier.goHome();
      final state = container.read(trainingSessionProvider);
      expect(state.screen, WorkoutScreen.home);
      expect(state.currentWorkout, isNull);
    });

    test('currentExercise with workout', () {
      const exercise = Exercise(
        id: 'squat', name: '深蹲', description: '',
        imagePath: '', durationSeconds: 60, restSeconds: 5,
        targetMuscles: [], difficulty: Difficulty.beginner,
        category: ExerciseCategory.legs,
      );
      const workout = Workout(
        id: 'legs', name: '', description: '',
        estimatedMinutes: 1, exercises: [exercise],
      );
      notifier.selectWorkout(workout);
      notifier.startWorkout();

      expect(container.read(trainingSessionProvider).currentExercise?.id, 'squat');
    });
  });
}
