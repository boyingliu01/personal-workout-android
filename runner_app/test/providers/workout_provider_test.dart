import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mocktail/mocktail.dart';

import 'package:runner_app/models/workout.dart';
import 'package:runner_app/models/exercise.dart';
import 'package:runner_app/models/workout_type.dart';
import 'package:runner_app/models/workout_session.dart';
import 'package:runner_app/providers/workout_provider.dart';

void main() {
  group('WorkoutProvider', () {
    late ProviderContainer container;
    late Workout testWorkout;

    setUp(() {
      container = ProviderContainer();

      testWorkout = Workout(
        id: 'warmup-001',
        name: '跑前动态热身',
        description: '10-15分钟动态热身',
        type: WorkoutType.warmup,
        estimatedMinutes: 12,
        exercises: [
          Exercise(
            id: 'ex-001',
            name: '开合跳',
            description: '全身激活',
            durationSeconds: 45,
            restSeconds: 5,
          ),
          Exercise(
            id: 'ex-002',
            name: '高抬腿',
            description: '髋屈肌激活',
            durationSeconds: 45,
            restSeconds: 5,
          ),
          Exercise(
            id: 'ex-003',
            name: '后踢腿',
            description: '股四头肌激活',
            durationSeconds: 45,
            restSeconds: 5,
          ),
        ],
      );

      registerFallbackValue(testWorkout);
    });

    tearDown(() {
      container.dispose();
    });

    group('REQ-WORKOUT-001: Start Workout', () {
      test('@test REQ-WORKOUT-001 startWorkout() creates new session', () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);

        final session = container.read(currentSessionProvider);
        expect(session, isNotNull);
        expect(session!.workoutId, 'warmup-001');
        expect(session.status, WorkoutStatus.running);
      });

      test(
          '@test REQ-WORKOUT-001 startWorkout() sets currentExerciseIndex to 0',
          () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);

        final state = container.read(workoutProvider);
        expect(state.currentExerciseIndex, 0);
      });

      test('@test REQ-WORKOUT-001 startWorkout() sets totalExercises correctly',
          () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);

        final session = container.read(currentSessionProvider);
        expect(session!.totalExercises, 3);
      });
    });

    group('REQ-WORKOUT-002: Next Exercise', () {
      test('@test REQ-WORKOUT-002 nextExercise() advances to next exercise',
          () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        container.read(workoutProvider.notifier).nextExercise();

        final state = container.read(workoutProvider);
        expect(state.currentExerciseIndex, 1);
      });

      test('@test REQ-WORKOUT-002 nextExercise() increments completedExercises',
          () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        container.read(workoutProvider.notifier).nextExercise();

        final session = container.read(currentSessionProvider);
        expect(session!.completedExercises, 1);
      });

      test(
          '@test REQ-WORKOUT-002 nextExercise() on last exercise triggers completion',
          () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        container.read(workoutProvider.notifier).nextExercise();
        container.read(workoutProvider.notifier).nextExercise();
        container.read(workoutProvider.notifier).nextExercise();

        final session = container.read(currentSessionProvider);
        expect(session!.status, WorkoutStatus.completed);
      });
    });

    group('REQ-WORKOUT-003: Complete Workout', () {
      test('@test REQ-WORKOUT-003 completeWorkout() sets status to completed',
          () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        container.read(workoutProvider.notifier).completeWorkout();

        final session = container.read(currentSessionProvider);
        expect(session!.status, WorkoutStatus.completed);
      });

      test('@test REQ-WORKOUT-003 completeWorkout() sets endTime', () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        container.read(workoutProvider.notifier).completeWorkout();

        final session = container.read(currentSessionProvider);
        expect(session!.endTime, isNotNull);
      });
    });

    group('REQ-WORKOUT-004: Pause/Resume Workout', () {
      test('@test REQ-WORKOUT-004 pauseWorkout() sets status to paused', () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        container.read(workoutProvider.notifier).pauseWorkout();

        final session = container.read(currentSessionProvider);
        expect(session!.status, WorkoutStatus.paused);
      });

      test('@test REQ-WORKOUT-004 pauseWorkout() sets pausedAt timestamp', () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        container.read(workoutProvider.notifier).pauseWorkout();

        final session = container.read(currentSessionProvider);
        expect(session!.pausedAt, isNotNull);
      });

      test('@test REQ-WORKOUT-004 resumeWorkout() sets status back to running',
          () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        container.read(workoutProvider.notifier).pauseWorkout();
        container.read(workoutProvider.notifier).resumeWorkout();

        final session = container.read(currentSessionProvider);
        expect(session!.status, WorkoutStatus.running);
      });

      test('@test REQ-WORKOUT-004 resumeWorkout() clears pausedAt', () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        container.read(workoutProvider.notifier).pauseWorkout();
        container.read(workoutProvider.notifier).resumeWorkout();

        final session = container.read(currentSessionProvider);
        expect(session!.pausedAt, isNull);
      });
    });

    group('REQ-WORKOUT-005: Skip Exercise', () {
      test(
          '@test REQ-WORKOUT-005 skipExercise() advances without marking completed',
          () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        container.read(workoutProvider.notifier).skipExercise();

        final state = container.read(workoutProvider);
        expect(state.currentExerciseIndex, 1);
        expect(state.skippedExercises, 1);
      });
    });

    group('REQ-WORKOUT-006: Previous Exercise', () {
      test('@test REQ-WORKOUT-006 previousExercise() goes back one exercise',
          () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        container.read(workoutProvider.notifier).nextExercise();
        container.read(workoutProvider.notifier).previousExercise();

        final state = container.read(workoutProvider);
        expect(state.currentExerciseIndex, 0);
      });

      test(
          '@test REQ-WORKOUT-006 previousExercise() on first exercise has no effect',
          () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        container.read(workoutProvider.notifier).previousExercise();

        final state = container.read(workoutProvider);
        expect(state.currentExerciseIndex, 0);
      });
    });

    group('REQ-WORKOUT-007: Get Current Exercise', () {
      test(
          '@test REQ-WORKOUT-007 currentExercise getter returns current exercise',
          () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);

        final exercise = container.read(workoutProvider).currentExercise;
        expect(exercise, isNotNull);
        expect(exercise!.name, '开合跳');
      });

      test(
          '@test REQ-WORKOUT-007 currentExercise after nextExercise returns next',
          () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        container.read(workoutProvider.notifier).nextExercise();

        final exercise = container.read(workoutProvider).currentExercise;
        expect(exercise!.name, '高抬腿');
      });
    });

    group('REQ-WORKOUT-008: Reset Workout', () {
      test('@test REQ-WORKOUT-008 resetWorkout() clears session state', () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        container.read(workoutProvider.notifier).nextExercise();
        container.read(workoutProvider.notifier).resetWorkout();

        final session = container.read(currentSessionProvider);
        expect(session, isNull);
      });

      test('@test REQ-WORKOUT-008 resetWorkout() resets provider state', () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        container.read(workoutProvider.notifier).nextExercise();
        container.read(workoutProvider.notifier).resetWorkout();

        final state = container.read(workoutProvider);
        expect(state.currentExerciseIndex, 0);
        expect(state.completedExercises, 0);
      });
    });

    group('Edge Cases', () {
      test('@test EC-WORKOUT-001 startWorkout() when already running resets',
          () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        container.read(workoutProvider.notifier).nextExercise();

        final secondWorkout = Workout(
          id: 'stretch-001',
          name: '跑后拉伸',
          description: '20-30分钟拉伸',
          type: WorkoutType.stretch,
          estimatedMinutes: 25,
          exercises: [
            Exercise(
              id: 'ex-s001',
              name: '股四头肌拉伸',
              description: '站立拉伸',
              durationSeconds: 60,
            ),
          ],
        );

        container.read(workoutProvider.notifier).startWorkout(secondWorkout);

        final session = container.read(currentSessionProvider);
        expect(session!.workoutId, 'stretch-001');
        expect(session.currentExerciseIndex, 0);
      });

      test('@test EC-WORKOUT-002 nextExercise() when completed has no effect',
          () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        container.read(workoutProvider.notifier).nextExercise();
        container.read(workoutProvider.notifier).nextExercise();
        container.read(workoutProvider.notifier).nextExercise();
        container.read(workoutProvider.notifier).nextExercise();

        final session = container.read(currentSessionProvider);
        expect(session!.completedExercises, 3);
      });
    });

    group('REQ-WORKOUT-009: Progress Tracking', () {
      test('@test REQ-WORKOUT-009 progressPercentage returns 0 when no workout',
          () {
        final state = container.read(workoutProvider);
        expect(state.progressPercentage, 0);
      });

      test('@test REQ-WORKOUT-009 progressPercentage updates after completion',
          () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        container.read(workoutProvider.notifier).nextExercise();

        final state = container.read(workoutProvider);
        expect(state.progressPercentage, closeTo(33.33, 0.01));
      });

      test('@test REQ-WORKOUT-009 isLastExercise returns true on last exercise',
          () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        container.read(workoutProvider.notifier).nextExercise();
        container.read(workoutProvider.notifier).nextExercise();

        final state = container.read(workoutProvider);
        expect(state.isLastExercise, true);
      });

      test('@test REQ-WORKOUT-009 isLastExercise returns false when not last',
          () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);

        final state = container.read(workoutProvider);
        expect(state.isLastExercise, false);
      });
    });

    group('REQ-WORKOUT-010: Timer Integration', () {
      test('@test REQ-WORKOUT-010 updateElapsedSeconds() updates state', () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        container.read(workoutProvider.notifier).updateElapsedSeconds(30);

        final state = container.read(workoutProvider);
        expect(state.elapsedSeconds, 30);
      });

      test('@test REQ-WORKOUT-010 updateElapsedSeconds() updates session', () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        container.read(workoutProvider.notifier).updateElapsedSeconds(60);

        final session = container.read(currentSessionProvider);
        expect(session!.totalSeconds, 60);
      });
    });

    group('REQ-WORKOUT-011: Skip to Complete', () {
      test(
          '@test REQ-WORKOUT-011 skipExercise on last exercise completes workout',
          () {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        container.read(workoutProvider.notifier).nextExercise();
        container.read(workoutProvider.notifier).nextExercise();

        // Now on last exercise, skip should complete
        container.read(workoutProvider.notifier).skipExercise();

        final state = container.read(workoutProvider);
        expect(state.isInProgress, false);

        // skippedExercises is NOT incremented when completing via skip
        expect(state.skippedExercises, 0);
      });
    });
  });
}
