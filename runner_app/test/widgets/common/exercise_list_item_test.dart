import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:runner_app/widgets/common/exercise_list_item.dart';

void main() {
  group('ExerciseListItem', () {
    group('REQ-EXLIST-001: Display', () {
      test('@test REQ-EXLIST-001 shows exercise name',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: ExerciseListItem(
                exerciseName: '开合跳',
                durationSeconds: 45,
                targetMuscles: ['legs', 'core'],
                index: 1,
              ),
            ),
          ),
        );

        expect(find.text('开合跳'), findsOneWidget);
      });

      test('@test REQ-EXLIST-001 shows duration in MM:SS format',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: ExerciseListItem(
                exerciseName: '深蹲',
                durationSeconds: 60,
                targetMuscles: ['legs'],
                index: 2,
              ),
            ),
          ),
        );

        expect(find.text('1:00'), findsOneWidget);
      });

      test('@test REQ-EXLIST-001 shows duration for 45 seconds as 0:45',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: ExerciseListItem(
                exerciseName: '开合跳',
                durationSeconds: 45,
                targetMuscles: [],
                index: 1,
              ),
            ),
          ),
        );

        expect(find.text('0:45'), findsOneWidget);
      });

      test('@test REQ-EXLIST-001 uses ListTile', (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: ExerciseListItem(
                exerciseName: '测试',
                durationSeconds: 30,
                targetMuscles: [],
                index: 1,
              ),
            ),
          ),
        );

        expect(find.byType(ListTile), findsOneWidget);
      });
    });

    group('REQ-EXLIST-002: Number badge', () {
      test('@test REQ-EXLIST-002 shows index number in leading badge',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: ExerciseListItem(
                exerciseName: '深蹲',
                durationSeconds: 60,
                targetMuscles: [],
                index: 3,
              ),
            ),
          ),
        );

        expect(find.text('3'), findsOneWidget);
      });

      test('@test REQ-EXLIST-002 badge uses CircleAvatar',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: ExerciseListItem(
                exerciseName: '测试',
                durationSeconds: 30,
                targetMuscles: [],
                index: 1,
              ),
            ),
          ),
        );

        expect(find.byType(CircleAvatar), findsOneWidget);
      });
    });

    group('REQ-EXLIST-003: Target muscle chips', () {
      test('@test REQ-EXLIST-003 shows target muscles as text in subtitle',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: ExerciseListItem(
                exerciseName: '深蹲',
                durationSeconds: 60,
                targetMuscles: ['legs', 'core'],
                index: 1,
              ),
            ),
          ),
        );

        expect(find.textContaining('legs'), findsOneWidget);
        expect(find.textContaining('core'), findsOneWidget);
      });

      test('@test REQ-EXLIST-003 shows nothing when targetMuscles is empty',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: ExerciseListItem(
                exerciseName: '测试',
                durationSeconds: 30,
                targetMuscles: [],
                index: 1,
              ),
            ),
          ),
        );

        final listTile = tester.widget<ListTile>(find.byType(ListTile));
        expect(listTile.subtitle, isNull);
      });
    });

    group('REQ-EXLIST-004: Trailing content', () {
      test('@test REQ-EXLIST-004 shows chevron_right icon as trailing',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: ExerciseListItem(
                exerciseName: '测试',
                durationSeconds: 30,
                targetMuscles: [],
                index: 1,
              ),
            ),
          ),
        );

        expect(find.byIcon(Icons.chevron_right), findsOneWidget);
      });
    });
  });
}
