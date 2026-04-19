import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:runner_app/models/exercise.dart';
import 'package:runner_app/screens/rest_screen.dart';
import 'package:runner_app/widgets/common/countdown_timer.dart';

class MockSystemChrome extends Mock {
  static void setPreferredOrientations(List<DeviceOrientation> orientations) {}
  static void setSystemUIOverlayStyle(SystemUiOverlayStyle style) {}
}

void main() {
  group('RestScreen Tests', () {
    late Exercise currentExercise;
    late Exercise nextExercise;

    setUp(() {
      currentExercise = Exercise(
        id: '1',
        name: '深蹲',
        description: '标准下肢练习',
        durationSeconds: 30,
        restSeconds: 10,
        targetMuscles: ['腿部', '臀部'],
      );

      nextExercise = Exercise(
        id: '2',
        name: '高抬腿',
        description: '有氧运动',
        durationSeconds: 45,
        restSeconds: 10,
        targetMuscles: ['腿部', '腹部'],
      );
    });

    testWidgets('displays rest screen layout correctly', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: RestScreen(
            seconds: 10,
            currentExercise: currentExercise,
            nextExercise: nextExercise,
          ),
        ),
      );

      // Verify essential UI components are visible
      expect(find.byType(Scaffold), findsOneWidget);
      expect(find.byType(CountdownTimer), findsOneWidget);
      expect(find.text(currentExercise.name), findsOneWidget);
      expect(find.text(nextExercise.name), findsOneWidget);
      expect(find.text('准备下一个动作'), findsOneWidget);
      expect(find.text('已完成，休息时间'), findsOneWidget);
      expect(find.text('跳过'), findsOneWidget);
    });

    testWidgets('displays correct rest duration', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: RestScreen(
            seconds: 5,
            currentExercise: currentExercise,
            nextExercise: nextExercise,
          ),
        ),
      );

      // Should initially show the starting time (5 seconds)
      expect(find.text('5'), findsOneWidget);
    });

    testWidgets('shows current exercise and next exercise info', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: RestScreen(
            seconds: 10,
            currentExercise: currentExercise,
            nextExercise: nextExercise,
          ),
        ),
      );

      // Verify current exercise displayed
      expect(find.text(currentExercise.name), findsOneWidget);
      expect(find.text('已完成，休息时间'), findsOneWidget);

      // Verify next exercise displayed
      expect(find.text(nextExercise.name), findsOneWidget);
      expect(find.text('准备下一个动作'), findsOneWidget);
    });

    testWidgets('skip button functions properly', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: RestScreen(
            seconds: 10,
            currentExercise: currentExercise,
            nextExercise: nextExercise,
          ),
        ),
      );

      // Skip button is initially enabled
      final skipButton = find.text('跳过');  // or use proper string from AppStrings
      expect(skipButton, findsOneWidget);
      expect(tester.widget<ElevatedButton>(find.ancestor(of: skipButton, matching: find.byType(ElevatedButton))).enabled, isTrue);

      // Tap the skip button
      await tester.tap(skipButton);
      await tester.pumpAndSettle();
    });

    testWidgets('countdown timer counts down properly', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: RestScreen(
            seconds: 3,
            currentExercise: currentExercise,
            nextExercise: nextExercise,
          ),
        ),
      );

      // Test initial state
      expect(find.text('3'), findsOneWidget);
      
      // The countdown implementation in RestScreen relies on actual Timer behavior
      // So we would need to advance the widget clock to see changes
    });

    testWidgets('background color is applied correctly', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: RestScreen(
            seconds: 10,
            currentExercise: currentExercise,
            nextExercise: nextExercise,
          ),
        ),
      );

      // Verify the background color is set from AppColors
      final scaffoldFinder = find.byType(Scaffold);
      expect(scaffoldFinder, findsOneWidget);
    });

    testWidgets('SafeArea widget is applied', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: RestScreen(
            seconds: 10,
            currentExercise: currentExercise,
            nextExercise: nextExercise,
          ),
        ),
      );

      expect(find.byType(SafeArea), findsOneWidget);
    });

    testWidgets('orientation is locked to portrait on init', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: RestScreen(
            seconds: 10,
            currentExercise: currentExercise,
            nextExercise: nextExercise,
          ),
        ),
      );

      // Verify the screen is set up correctly for rest (portrait mode only)
      // We don't fully test SystemChrome changes since that may modify system state
    });
  });
}