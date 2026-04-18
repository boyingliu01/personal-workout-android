import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:runner_app/constants/app_colors.dart';
import 'package:runner_app/widgets/common/countdown_timer.dart';

void main() {
  group('CountdownTimer', () {
    group('REQ-TIMER-001: Display', () {
      test('@test REQ-TIMER-001 shows remaining seconds in center',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: CountdownTimer(
                totalSeconds: 30,
                remainingSeconds: 15,
              ),
            ),
          ),
        );

        expect(find.text('15'), findsOneWidget);
      });

      test('@test REQ-TIMER-001 shows CircularProgressIndicator',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: CountdownTimer(
                totalSeconds: 30,
                remainingSeconds: 15,
              ),
            ),
          ),
        );

        expect(find.byType(CircularProgressIndicator), findsOneWidget);
      });

      test('@test REQ-TIMER-001 shows zero when completed',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: CountdownTimer(
                totalSeconds: 30,
                remainingSeconds: 0,
              ),
            ),
          ),
        );

        expect(find.text('0'), findsOneWidget);
      });
    });

    group('REQ-TIMER-002: Progress indicator value', () {
      test('@test REQ-TIMER-002 progress reflects half time remaining at 50%',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: CountdownTimer(
                totalSeconds: 60,
                remainingSeconds: 30,
              ),
            ),
          ),
        );

        final progressIndicator = tester.widget<CircularProgressIndicator>(
          find.byType(CircularProgressIndicator),
        );

        expect(progressIndicator.value, 0.5);
      });

      test('@test REQ-TIMER-002 progress is 1.0 when full time',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: CountdownTimer(
                totalSeconds: 30,
                remainingSeconds: 30,
              ),
            ),
          ),
        );

        final progressIndicator = tester.widget<CircularProgressIndicator>(
          find.byType(CircularProgressIndicator),
        );

        expect(progressIndicator.value, 1.0);
      });

      test('@test REQ-TIMER-002 progress is 0.0 when time is up',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: CountdownTimer(
                totalSeconds: 30,
                remainingSeconds: 0,
              ),
            ),
          ),
        );

        final progressIndicator = tester.widget<CircularProgressIndicator>(
          find.byType(CircularProgressIndicator),
        );

        expect(progressIndicator.value, 0.0);
      });
    });

    group('REQ-TIMER-003: Warning color', () {
      test('@test REQ-TIMER-003 uses warning color when < 5 seconds remaining',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: CountdownTimer(
                totalSeconds: 30,
                remainingSeconds: 3,
              ),
            ),
          ),
        );

        final progressIndicator = tester.widget<CircularProgressIndicator>(
          find.byType(CircularProgressIndicator),
        );

        expect(progressIndicator.color, AppColors.warning);
      });

      test('@test REQ-TIMER-003 uses primary color when >= 5 seconds',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: CountdownTimer(
                totalSeconds: 30,
                remainingSeconds: 5,
              ),
            ),
          ),
        );

        final progressIndicator = tester.widget<CircularProgressIndicator>(
          find.byType(CircularProgressIndicator),
        );

        expect(progressIndicator.color, AppColors.primary);
      });

      test('@test REQ-TIMER-003 uses warning color at 4 seconds',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: CountdownTimer(
                totalSeconds: 30,
                remainingSeconds: 4,
              ),
            ),
          ),
        );

        final progressIndicator = tester.widget<CircularProgressIndicator>(
          find.byType(CircularProgressIndicator),
        );

        expect(progressIndicator.color, AppColors.warning);
      });
    });

    group('REQ-TIMER-004: onCompleted callback', () {
      test('@test REQ-TIMER-004 calls onCompleted when remainingSeconds is 0',
          (WidgetTester tester) async {
        var completedCalled = false;

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: CountdownTimer(
                totalSeconds: 30,
                remainingSeconds: 0,
                onCompleted: () {
                  completedCalled = true;
                },
              ),
            ),
          ),
        );

        expect(completedCalled, isTrue);
      });

      test(
          '@test REQ-TIMER-004 does NOT call onCompleted when remainingSeconds > 0',
          (WidgetTester tester) async {
        var completedCalled = false;

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: CountdownTimer(
                totalSeconds: 30,
                remainingSeconds: 10,
                onCompleted: () {
                  completedCalled = true;
                },
              ),
            ),
          ),
        );

        expect(completedCalled, isFalse);
      });
    });
  });
}
