import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:strength_app/core/constants/exercise_data.dart';
import 'package:strength_app/presentation/providers/training_session_provider.dart';
import 'package:strength_app/presentation/screens/home_screen.dart';
import 'package:strength_app/presentation/screens/workout_detail_screen.dart';

void main() {
  group('HomeScreen', () {
    testWidgets('shows welcome header', (tester) async {
      await tester.pumpWidget(
        const ProviderScope(child: MaterialApp(home: HomeScreen())),
      );

      expect(find.text('欢迎训练'), findsOneWidget);
      expect(find.text('选择一个训练模块开始'), findsOneWidget);
    });

    testWidgets('shows workout cards', (tester) async {
      await tester.pumpWidget(
        const ProviderScope(child: MaterialApp(home: HomeScreen())),
      );

      expect(find.byType(Card), findsWidgets);
      expect(find.text('腿部力量训练'), findsOneWidget);
    });

    testWidgets('shows settings button', (tester) async {
      await tester.pumpWidget(
        const ProviderScope(child: MaterialApp(home: HomeScreen())),
      );

      expect(find.byIcon(Icons.settings), findsOneWidget);
    });
  });

  group('WorkoutDetailScreen', () {
    testWidgets('shows error when no workout selected', (tester) async {
      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(home: WorkoutDetailScreen()),
        ),
      );

      expect(find.text('未选择训练模块'), findsOneWidget);
    });

    testWidgets('shows workout details after selection', (tester) async {
      final workout = ExerciseData.allWorkouts.first;

      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    ProviderScope.containerOf(context)
                        .read(trainingSessionProvider.notifier)
                        .selectWorkout(workout);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const WorkoutDetailScreen(),
                      ),
                    );
                  },
                  child: const Text('Go'),
                );
              },
            ),
          ),
        ),
      );

      await tester.tap(find.text('Go'));
      await tester.pumpAndSettle();

      expect(find.text(workout.name), findsOneWidget);
      expect(find.text('动作列表'), findsOneWidget);
      expect(find.text('开始训练'), findsOneWidget);
    });

    testWidgets('shows exercise count', (tester) async {
      final workout = ExerciseData.allWorkouts.first;

      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    ProviderScope.containerOf(context)
                        .read(trainingSessionProvider.notifier)
                        .selectWorkout(workout);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const WorkoutDetailScreen(),
                      ),
                    );
                  },
                  child: const Text('Go'),
                );
              },
            ),
          ),
        ),
      );

      await tester.tap(find.text('Go'));
      await tester.pumpAndSettle();

      expect(find.text('${workout.exercises.length}个动作'), findsOneWidget);
    });
  });

  group('TrainingState', () {
    test('starts at home screen', () {
      const state = TrainingState();
      expect(state.screen, WorkoutScreen.home);
      expect(state.currentWorkout, isNull);
      expect(state.currentExerciseIndex, 0);
      expect(state.isPaused, false);
    });

    test('selectWorkout sets detail screen', () {
      final notifier = TrainingSessionNotifier();
      final workout = ExerciseData.allWorkouts.first;

      notifier.selectWorkout(workout);

      expect(notifier.state.screen, WorkoutScreen.detail);
      expect(notifier.state.currentWorkout, workout);
      expect(notifier.state.currentExerciseIndex, 0);
    });

    test('startWorkout sets exercising screen', () {
      final notifier = TrainingSessionNotifier();
      final workout = ExerciseData.allWorkouts.first;

      notifier.selectWorkout(workout);
      notifier.startWorkout();

      expect(notifier.state.screen, WorkoutScreen.exercising);
      expect(notifier.state.isPaused, false);
    });

    test('pause and resume toggle isPaused', () {
      final notifier = TrainingSessionNotifier();
      final workout = ExerciseData.allWorkouts.first;

      notifier.selectWorkout(workout);
      notifier.startWorkout();

      notifier.pauseExercise();
      expect(notifier.state.isPaused, true);

      notifier.resumeExercise();
      expect(notifier.state.isPaused, false);
    });

    test('nextExercise moves to resting screen', () {
      final notifier = TrainingSessionNotifier();
      final workout = ExerciseData.allWorkouts.first;

      notifier.selectWorkout(workout);
      notifier.startWorkout();
      notifier.nextExercise();

      expect(notifier.state.screen, WorkoutScreen.resting);
      expect(notifier.state.currentExerciseIndex, 1);
    });

    test('completeWorkout creates session', () {
      final notifier = TrainingSessionNotifier();
      final workout = ExerciseData.allWorkouts.first;

      notifier.selectWorkout(workout);
      notifier.completeWorkout();

      expect(notifier.state.screen, WorkoutScreen.complete);
      expect(notifier.state.completedSession, isNotNull);
      expect(notifier.state.completedSession!.workoutName, workout.name);
    });

    test('goHome resets state', () {
      final notifier = TrainingSessionNotifier();
      final workout = ExerciseData.allWorkouts.first;

      notifier.selectWorkout(workout);
      notifier.startWorkout();
      notifier.goHome();

      expect(notifier.state.screen, WorkoutScreen.home);
      expect(notifier.state.currentWorkout, isNull);
      expect(notifier.state.completedSession, isNull);
    });
  });
}
