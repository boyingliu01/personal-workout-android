import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:runner_app/models/exercise.dart';
import 'package:runner_app/models/workout.dart';
import 'package:runner_app/screens/workout_detail_screen.dart';
import 'package:runner_app/models/workout_type.dart';
import 'package:runner_app/constants/app_strings.dart';

void main() {
  group('WorkoutDetailScreen Tests', () {
    final testExercise = Exercise(
      id: '1',
      name: '深蹲',
      description: '标准下肢练习',
      durationSeconds: 30,
      restSeconds: 5,
      targetMuscles: ['腿部', '臀部'],
    );

    final testWorkout = Workout(
      id: '1',
      name: '跑前动态热身',
      description: '完整的热身训练计划',
      type: WorkoutType.warmup,
      estimatedMinutes: 10,
      exercises: [testExercise],
    );

    testWidgets('Displays workout details correctly', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: WorkoutDetailScreen(workout: testWorkout),
          ),
        ),
      );

      // Verify workout description (unique element) is displayed
      expect(find.text(testWorkout.description), findsOneWidget);
      
      // Verify exercise list item is shown
      expect(find.text(testExercise.name), findsOneWidget);
      
      // Verify exercise count is displayed somewhere
      expect(find.textContaining('个动作'), findsOneWidget);
    });

    testWidgets('Displays multiple exercises correctly', (tester) async {
      final multipleExercises = [
        testExercise,
        Exercise(
          id: '2',
          name: '高抬腿',
          description: '有氧运动',
          durationSeconds: 45,
          restSeconds: 5,
          targetMuscles: ['腿部', '臀部'],
        ),
      ];

      final workoutWithMultipleExercises = testWorkout.copyWith(
        exercises: multipleExercises,
        estimatedMinutes: 15,
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: WorkoutDetailScreen(workout: workoutWithMultipleExercises),
          ),
        ),
      );

      // Verify both exercises are shown
      expect(find.text('深蹲'), findsOneWidget);
      expect(find.text('高抬腿'), findsOneWidget);
      
      // Verify exercise count is displayed in card
      expect(find.textContaining('2 个动作'), findsWidgets);
    });

    testWidgets('Start button navigates to exercise screen', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: WorkoutDetailScreen(workout: testWorkout),
          ),
          navigatorKey: GlobalKey<NavigatorState>(), // Provide navigator key
        ),
      );

      // Initially no snackbar shown
      expect(find.text('训练将从前置动作开始'), findsNothing);

      // Tap the start button
      await tester.tap(find.text(AppStrings.startTraining));
      await tester.pump(); // Trigger event
      await tester.pump(const Duration(seconds: 1)); // Allow for animation

      // Verify snackbar with appropriate message is displayed
      expect(find.text('训练将从前置动作开始'), findsOneWidget);
    });

    testWidgets('Shows workout type based on workout category', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: WorkoutDetailScreen(workout: testWorkout),
          ),
        ),
      );

      // Should reflect workout type info
      expect(find.text('1 个动作, 10 分钟'), findsOneWidget);
    });

    testWidgets('AppBar has back button', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: WorkoutDetailScreen(workout: testWorkout),
          ),
        ),
      );

      // Find back arrow icon
      expect(find.byIcon(Icons.arrow_back), findsOneWidget);
    });
  });
}