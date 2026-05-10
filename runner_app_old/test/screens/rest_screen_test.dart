import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:runner_app/screens/rest_screen.dart';
import 'package:runner_app/models/exercise.dart';
import 'package:runner_app/models/workout_type.dart';

void main() {
  group('RestScreen', () {
    testWidgets('displays countdown timer and skip button', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: RestScreen(
            seconds: 5,
            currentExercise: Exercise(
              id: 'ex1', name: '开合跳', description: '',
              durationSeconds: 45, difficulty: Difficulty.beginner,
              category: ExerciseCategory.fullBody,
            ),
            nextExercise: Exercise(
              id: 'ex2', name: '高抬腿', description: '',
              durationSeconds: 45, difficulty: Difficulty.beginner,
              category: ExerciseCategory.fullBody,
            ),
          ),
        ),
      );
      expect(find.text('高抬腿'), findsOneWidget);
      expect(find.text('跳过'), findsOneWidget);
    });
  });
}
