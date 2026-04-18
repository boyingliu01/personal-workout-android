import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:runner_app/constants/app_colors.dart';
import 'package:runner_app/models/workout_type.dart';
import 'package:runner_app/widgets/common/simple_workout_card.dart';

void main() {
  group('SimpleWorkoutCard', () {
    group('REQ-CARD-001: Display', () {
      test('@test REQ-CARD-001 shows workout name',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: SimpleWorkoutCard(
                workoutName: '跑前动态热身',
                exerciseCount: 8,
                estimatedMinutes: 12,
                type: WorkoutType.warmup,
              ),
            ),
          ),
        );

        expect(find.text('跑前动态热身'), findsOneWidget);
      });

      test('@test REQ-CARD-001 shows exercise count',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: SimpleWorkoutCard(
                workoutName: '力量训练',
                exerciseCount: 10,
                estimatedMinutes: 15,
                type: WorkoutType.strength,
              ),
            ),
          ),
        );

        expect(find.text('10 个动作'), findsOneWidget);
      });

      test('@test REQ-CARD-001 shows estimated time',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: SimpleWorkoutCard(
                workoutName: '跑后拉伸',
                exerciseCount: 6,
                estimatedMinutes: 20,
                type: WorkoutType.stretch,
              ),
            ),
          ),
        );

        expect(find.text('20 分钟'), findsOneWidget);
      });

      test('@test REQ-CARD-001 is wrapped in a Card widget',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: SimpleWorkoutCard(
                workoutName: '测试',
                exerciseCount: 5,
                estimatedMinutes: 10,
                type: WorkoutType.warmup,
              ),
            ),
          ),
        );

        expect(find.byType(Card), findsOneWidget);
      });
    });

    group('REQ-CARD-002: Type icon', () {
      test('@test REQ-CARD-002 shows fire icon for warmup type',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: SimpleWorkoutCard(
                workoutName: '热身',
                exerciseCount: 5,
                estimatedMinutes: 10,
                type: WorkoutType.warmup,
              ),
            ),
          ),
        );

        expect(find.byIcon(Icons.local_fire_department), findsOneWidget);
      });

      test('@test REQ-CARD-002 shows access icon for stretch type',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: SimpleWorkoutCard(
                workoutName: '拉伸',
                exerciseCount: 5,
                estimatedMinutes: 10,
                type: WorkoutType.stretch,
              ),
            ),
          ),
        );

        // Using accessibility icon for stretch
        expect(find.byIcon(Icons.accessibility), findsOneWidget);
      });

      test('@test REQ-CARD-002 shows fitness_center icon for strength type',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: SimpleWorkoutCard(
                workoutName: '力量',
                exerciseCount: 5,
                estimatedMinutes: 10,
                type: WorkoutType.strength,
              ),
            ),
          ),
        );

        expect(find.byIcon(Icons.fitness_center), findsOneWidget);
      });
    });

    group('REQ-CARD-003: Type accent color', () {
      test('@test REQ-CARD-003 warmup uses warmupAccent color',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: SimpleWorkoutCard(
                workoutName: '热身',
                exerciseCount: 5,
                estimatedMinutes: 10,
                type: WorkoutType.warmup,
              ),
            ),
          ),
        );

        final icon =
            tester.widget<Icon>(find.byIcon(Icons.local_fire_department));
        expect(icon.color, AppColors.warmupAccent);
      });

      test('@test REQ-CARD-003 stretch uses stretchAccent color',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: SimpleWorkoutCard(
                workoutName: '拉伸',
                exerciseCount: 5,
                estimatedMinutes: 10,
                type: WorkoutType.stretch,
              ),
            ),
          ),
        );

        final icon = tester.widget<Icon>(find.byIcon(Icons.accessibility));
        expect(icon.color, AppColors.stretchAccent);
      });

      test('@test REQ-CARD-003 strength uses strengthAccent color',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: SimpleWorkoutCard(
                workoutName: '力量',
                exerciseCount: 5,
                estimatedMinutes: 10,
                type: WorkoutType.strength,
              ),
            ),
          ),
        );

        final icon = tester.widget<Icon>(find.byIcon(Icons.fitness_center));
        expect(icon.color, AppColors.strengthAccent);
      });
    });

    group('REQ-CARD-004: Tappable', () {
      test('@test REQ-CARD-004 calls onTap when card is tapped',
          (WidgetTester tester) async {
        var tapped = false;

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: SimpleWorkoutCard(
                workoutName: '热身',
                exerciseCount: 5,
                estimatedMinutes: 10,
                type: WorkoutType.warmup,
                onTap: () {
                  tapped = true;
                },
              ),
            ),
          ),
        );

        await tester.tap(find.byType(Card));
        await tester.pump();

        expect(tapped, isTrue);
      });

      test('@test REQ-CARD-004 onTap is optional', (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: SimpleWorkoutCard(
                workoutName: '热身',
                exerciseCount: 5,
                estimatedMinutes: 10,
                type: WorkoutType.warmup,
              ),
            ),
          ),
        );

        // Should not throw when tapped without callback
        await tester.tap(find.byType(Card));
        await tester.pump();
      });
    });
  });
}
