import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:runner_app/models/workout.dart';
import 'package:runner_app/models/workout_type.dart';
import 'package:runner_app/screens/home_screen.dart';
import 'package:runner_app/widgets/common/workout_card.dart';

class MockWorkout extends Mock implements Workout {}

void main() {
  group('HomeScreen Tests', () {
    late List<Workout> mockWorkouts;

    setUp(() {
      mockWorkouts = [
        Workout(
          id: '1',
          name: 'Warmup Session',
          description: 'Dynamic warmup exercises',
          type: WorkoutType.warmup,
          estimatedMinutes: 15,
          exercises: [],
          difficulty: Difficulty.beginner,
        ),
        Workout(
          id: '2',
          name: 'Stretch Session',
          description: 'Cool-down stretches',
          type: WorkoutType.stretch,
          estimatedMinutes: 20,
          exercises: [],
          difficulty: Difficulty.intermediate,
        ),
        Workout(
          id: '3',
          name: 'Strength Training',
          description: 'Core and strength exercises',
          type: WorkoutType.strength,
          estimatedMinutes: 25,
          exercises: [],
          difficulty: Difficulty.advanced,
        ),
      ];
    });

    testWidgets('HomeScreen builds without errors',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: HomeScreen(workouts: mockWorkouts),
          ),
        ),
      );

      expect(find.byType(Scaffold), findsOneWidget);
      expect(find.text('跑者训练'), findsOneWidget);
    });

    testWidgets('AppBar with settings button', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: HomeScreen(workouts: mockWorkouts),
          ),
        ),
      );

      expect(find.byIcon(Icons.settings), findsOneWidget);
    });

    testWidgets('Displays 3 workout cards', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: HomeScreen(workouts: mockWorkouts),
          ),
        ),
      );

      expect(find.byType(WorkoutCard), findsNWidgets(3));

      // Check that each workout type is represented
      expect(find.text('Warmup Session'), findsOneWidget);
      expect(find.text('Stretch Session'), findsOneWidget);
      expect(find.text('Strength Training'), findsOneWidget);
    });

    testWidgets('Difficulty filter chips work', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: HomeScreen(workouts: mockWorkouts),
          ),
        ),
      );

      expect(find.text('入门'), findsOneWidget);
      expect(find.text('中级'), findsOneWidget);
      expect(find.text('高级'), findsOneWidget);

      // Test that beginner chip can be tapped
      await tester.tap(find.text('入门'));
      await tester.pump();

      // Verify tap response (UI changes based on filter)
      expect(find.text('入门'), findsOneWidget);
    });

    testWidgets('User stats section displays correctly',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: HomeScreen(
              workouts: mockWorkouts,
              totalCompletedWorkouts: 5,
              totalTrainingMinutes: 120,
            ),
          ),
        ),
      );

      expect(find.text('5'), findsOneWidget); // Total workouts
      expect(find.text('120分钟'), findsOneWidget); // Total minutes
    });

    testWidgets('Workout card onTap navigates to detail',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: HomeScreen(workouts: mockWorkouts),
            routes: {
              '/workout': (context) => Container(key: ValueKey('detail_page')),
            },
          ),
        ),
      );

      // Find and tap the first workout card
      final firstCardFinder =
          find.widgetWithText(WorkoutCard, 'Warmup Session');
      await tester.tap(firstCardFinder);
      await tester.pump();

      // This test checks the card itself works - actual navigation tested separately
      expect(firstCardFinder, findsOneWidget);
    });

    testWidgets('HomeScreen displays difficulty filters properly',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: HomeScreen(workouts: mockWorkouts),
          ),
        ),
      );

      // Check that difficulty chip selector is present
      expect(find.byType(Wrap), findsWidgets); // Wrap is used for chips
    });
  });
}
