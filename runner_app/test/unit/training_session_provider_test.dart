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
        id: 'legs',
        name: 'Test',
        description: '',
        estimatedMinutes: 10,
        exercises: [],
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
        id: 'squat',
        name: '深蹲',
        description: '',
        imagePath: '',
        durationSeconds: 60,
        restSeconds: 5,
        targetMuscles: [],
        difficulty: Difficulty.beginner,
        category: ExerciseCategory.legs,
      );
      const workout = Workout(
        id: 'legs',
        name: '',
        description: '',
        estimatedMinutes: 1,
        exercises: [exercise],
      );
      notifier.selectWorkout(workout);
      notifier.startWorkout();

      expect(
        container.read(trainingSessionProvider).currentExercise?.id,
        'squat',
      );
    });

    test('after nextExercise during rest, currentExercise is the upcoming one',
        () {
      const ex1 = Exercise(
        id: 'squat',
        name: '深蹲',
        description: '',
        imagePath: '',
        durationSeconds: 60,
        restSeconds: 5,
        targetMuscles: [],
        difficulty: Difficulty.beginner,
        category: ExerciseCategory.legs,
      );
      const ex2 = Exercise(
        id: 'plank',
        name: '平板支撑',
        description: '',
        imagePath: '',
        durationSeconds: 30,
        restSeconds: 5,
        targetMuscles: [],
        difficulty: Difficulty.beginner,
        category: ExerciseCategory.core,
      );
      const ex3 = Exercise(
        id: 'lunge',
        name: '弓步',
        description: '',
        imagePath: '',
        durationSeconds: 45,
        restSeconds: 5,
        targetMuscles: [],
        difficulty: Difficulty.beginner,
        category: ExerciseCategory.legs,
      );
      const workout = Workout(
        id: 'legs',
        name: 'Leg Day',
        description: '',
        estimatedMinutes: 3,
        exercises: [ex1, ex2, ex3],
      );
      notifier.selectWorkout(workout);
      notifier.startWorkout();

      // Start: index 0, doing squat
      expect(
        container.read(trainingSessionProvider).currentExercise?.id,
        'squat',
      );
      expect(
        container.read(trainingSessionProvider).screen,
        WorkoutScreen.exercising,
      );

      // User skips squat → enters rest for plank
      notifier.nextExercise();

      // After skip: index 1, screen resting
      final restingState = container.read(trainingSessionProvider);
      expect(restingState.screen, WorkoutScreen.resting);
      expect(restingState.currentExerciseIndex, 1);

      // BUG FIX VERIFICATION: During rest, currentExercise should be the
      // upcoming exercise (plank), NOT the next one after that (lunge).
      // RestScreen was using nextExercise (index+1=2=lunge) but should use
      // currentExercise (index=1=plank).
      expect(restingState.currentExercise?.id, 'plank');
      expect(
        restingState.nextExercise?.id,
        'lunge',
      ); // nextExercise shows lunge (WRONG for RestScreen)
    });

    test('full cycle preserves index across exercise→rest→exercise transitions',
        () {
      const ex1 = Exercise(
        id: 'squat',
        name: '深蹲',
        description: '',
        imagePath: '',
        durationSeconds: 60,
        restSeconds: 5,
        targetMuscles: [],
        difficulty: Difficulty.beginner,
        category: ExerciseCategory.legs,
      );
      const ex2 = Exercise(
        id: 'plank',
        name: '平板支撑',
        description: '',
        imagePath: '',
        durationSeconds: 30,
        restSeconds: 5,
        targetMuscles: [],
        difficulty: Difficulty.beginner,
        category: ExerciseCategory.core,
      );
      const ex3 = Exercise(
        id: 'lunge',
        name: '弓步',
        description: '',
        imagePath: '',
        durationSeconds: 45,
        restSeconds: 5,
        targetMuscles: [],
        difficulty: Difficulty.beginner,
        category: ExerciseCategory.legs,
      );
      const workout = Workout(
        id: 'legs',
        name: 'Leg Day',
        description: '',
        estimatedMinutes: 3,
        exercises: [ex1, ex2, ex3],
      );
      notifier.selectWorkout(workout);
      notifier.startWorkout();

      // Start: index 0, exercising squat
      expect(
        container.read(trainingSessionProvider).currentExerciseIndex,
        0,
      );
      expect(
        container.read(trainingSessionProvider).screen,
        WorkoutScreen.exercising,
      );

      // Squat timer completes → index advances, rest begins
      notifier.nextExercise();
      var state = container.read(trainingSessionProvider);
      expect(state.currentExerciseIndex, 1);
      expect(state.screen, WorkoutScreen.resting);

      // Rest completes → skipRest (what RestScreen._onRestComplete does).
      // Index must NOT reset to 0 (Issue 001 regression guard).
      notifier.skipRest();
      state = container.read(trainingSessionProvider);
      expect(state.currentExerciseIndex, 1);
      expect(state.screen, WorkoutScreen.exercising);

      // Plank timer completes → rest before last exercise
      notifier.nextExercise();
      state = container.read(trainingSessionProvider);
      expect(state.currentExerciseIndex, 2);
      expect(state.screen, WorkoutScreen.resting);

      // Rest completes → last exercise IS reached (not skipped)
      notifier.skipRest();
      state = container.read(trainingSessionProvider);
      expect(state.currentExerciseIndex, 2);
      expect(state.screen, WorkoutScreen.exercising);

      // Last exercise timer completes → workout completes
      notifier.nextExercise();
      expect(
        container.read(trainingSessionProvider).screen,
        WorkoutScreen.complete,
      );
    });

    test('skipRest never resets currentExerciseIndex', () {
      const ex1 = Exercise(
        id: 'squat',
        name: '深蹲',
        description: '',
        imagePath: '',
        durationSeconds: 60,
        restSeconds: 5,
        targetMuscles: [],
        difficulty: Difficulty.beginner,
        category: ExerciseCategory.legs,
      );
      const ex2 = Exercise(
        id: 'plank',
        name: '平板支撑',
        description: '',
        imagePath: '',
        durationSeconds: 30,
        restSeconds: 5,
        targetMuscles: [],
        difficulty: Difficulty.beginner,
        category: ExerciseCategory.core,
      );
      const workout = Workout(
        id: 'legs',
        name: 'Leg Day',
        description: '',
        estimatedMinutes: 2,
        exercises: [ex1, ex2],
      );
      notifier.selectWorkout(workout);
      notifier.startWorkout();

      // Exercise 1 completes → rest begins, index advanced to 1
      notifier.nextExercise();
      expect(
        container.read(trainingSessionProvider).currentExerciseIndex,
        1,
      );
      expect(
        container.read(trainingSessionProvider).screen,
        WorkoutScreen.resting,
      );

      // Rest completes → index must stay at 1, not reset to 0
      notifier.skipRest();
      expect(
        container.read(trainingSessionProvider).currentExerciseIndex,
        1,
      );
      expect(
        container.read(trainingSessionProvider).screen,
        WorkoutScreen.exercising,
      );
    });
  });
}
