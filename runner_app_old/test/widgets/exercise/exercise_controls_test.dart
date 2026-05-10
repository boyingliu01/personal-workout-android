import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:runner_app/widgets/exercise/exercise_controls.dart';

void main() {
  group('ExerciseControls', () {
    testWidgets('renders all control buttons', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExerciseControls(
              isPaused: true,
              onPrevious: () {},
              onPauseResume: (isPaused) {},
              onNext: () {},
              onSkip: () {},
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.skip_previous), findsOneWidget);
      expect(find.byIcon(Icons.play_arrow), findsOneWidget);
      expect(find.byIcon(Icons.skip_next), findsOneWidget);
      expect(find.byIcon(Icons.fast_forward), findsOneWidget);
    });

    testWidgets('shows play icon when running (not paused)', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExerciseControls(
              isPaused: false,
              onPrevious: () {},
              onPauseResume: (isPaused) {},
              onNext: () {},
              onSkip: () {},
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.play_arrow), findsNothing);
      expect(find.byIcon(Icons.pause), findsOneWidget);
    });

    testWidgets('shows play icon when paused', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExerciseControls(
              isPaused: true,
              onPrevious: () {},
              onPauseResume: (isPaused) {},
              onNext: () {},
              onSkip: () {},
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.pause), findsNothing);
      expect(find.byIcon(Icons.play_arrow), findsOneWidget);
    });

    testWidgets('calls onPauseResume when play/pause button tapped', (tester) async {
      bool callbackCalled = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExerciseControls(
              isPaused: true,
              onPrevious: () {},
              onPauseResume: (isPaused) {
                callbackCalled = true;
              },
              onNext: () {},
              onSkip: () {},
            ),
          ),
        ),
      );

      await tester.tap(find.byIcon(Icons.play_arrow));
      expect(callbackCalled, isTrue);
    });

    testWidgets('calls onPrevious when previous button tapped', (tester) async {
      bool callbackCalled = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExerciseControls(
              isPaused: false,
              onPrevious: () {
                callbackCalled = true;
              },
              onPauseResume: (isPaused) {},
              onNext: () {},
              onSkip: () {},
            ),
          ),
        ),
      );

      await tester.tap(find.byIcon(Icons.skip_previous));
      expect(callbackCalled, isTrue);
    });

    testWidgets('calls onNext when next button tapped', (tester) async {
      bool callbackCalled = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExerciseControls(
              isPaused: false,
              onPrevious: () {},
              onPauseResume: (isPaused) {},
              onNext: () {
                callbackCalled = true;
              },
              onSkip: () {},
            ),
          ),
        ),
      );

      await tester.tap(find.byIcon(Icons.skip_next));
      expect(callbackCalled, isTrue);
    });

    testWidgets('calls onSkip when skip button tapped', (tester) async {
      bool callbackCalled = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExerciseControls(
              isPaused: false,
              onPrevious: () {},
              onPauseResume: (isPaused) {},
              onNext: () {},
              onSkip: () {
                callbackCalled = true;
              },
            ),
          ),
        ),
      );

      await tester.tap(find.byIcon(Icons.fast_forward));
      expect(callbackCalled, isTrue);
    });

    testWidgets('shows progress indicator below buttons', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExerciseControls(
              isPaused: false,
              onPrevious: () {},
              onPauseResume: (isPaused) {},
              onNext: () {},
              onSkip: () {},
            ),
          ),
        ),
      );

      expect(find.byType(LinearProgressIndicator), findsOneWidget);
    });
  });
}
