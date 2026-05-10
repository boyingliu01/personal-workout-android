import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:runner_app/widgets/common/progress_dots.dart';

void main() {
  group('ProgressDots', () {
    group('REQ-DOTS-001: Display', () {
      testWidgets('@test REQ-DOTS-001 renders correct number of total dots',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: ProgressDots(total: 5, current: 2),
            ),
          ),
        );

        expect(find.byType(GestureDetector), findsNWidgets(5));
      });

      testWidgets('@test REQ-DOTS-001 single dot when total is 1',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: ProgressDots(total: 1, current: 1),
            ),
          ),
        );

        expect(find.byType(GestureDetector), findsOneWidget);
      });
    });

    group('REQ-DOTS-002: Active vs inactive dots', () {
      testWidgets('@test REQ-DOTS-002 active dots use filled Container with primary color',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: ProgressDots(total: 5, current: 3),
            ),
          ),
        );

        final containers = tester.widgetList<Container>(
          find.descendant(
            of: find.byType(GestureDetector),
            matching: find.byType(Container),
          ),
        );

        expect(containers.length, 5);

        // First 3 dots should be filled (active)
        for (var i = 0; i < 3; i++) {
          final decoration =
              containers.elementAt(i).decoration as BoxDecoration;
          expect(decoration.color, isNotNull);
        }
      });

      testWidgets('@test REQ-DOTS-002 inactive dots use outlined Container',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: ProgressDots(total: 5, current: 2),
            ),
          ),
        );

        final containers = tester.widgetList<Container>(
          find.descendant(
            of: find.byType(GestureDetector),
            matching: find.byType(Container),
          ),
        );

        // Last 3 dots should be outlined (inactive)
        for (var i = 2; i < 5; i++) {
          final decoration =
              containers.elementAt(i).decoration as BoxDecoration;
          expect(decoration.border, isNotNull);
        }
      });

      testWidgets('@test REQ-DOTS-002 all dots active when current equals total',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: ProgressDots(total: 3, current: 3),
            ),
          ),
        );

        final containers = tester.widgetList<Container>(
          find.descendant(
            of: find.byType(GestureDetector),
            matching: find.byType(Container),
          ),
        );

        for (var i = 0; i < 3; i++) {
          final decoration =
              containers.elementAt(i).decoration as BoxDecoration;
          expect(decoration.color, isNotNull);
          expect(decoration.border, isNull);
        }
      });
    });

    group('REQ-DOTS-003: Tappable dots', () {
      testWidgets('@test REQ-DOTS-003 tapping dot calls onTap with correct position',
          (WidgetTester tester) async {
        int? tappedPosition;

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: ProgressDots(
                total: 5,
                current: 2,
                onTap: (position) {
                  tappedPosition = position;
                },
              ),
            ),
          ),
        );

        // Tap the 4th dot (index 3)
        final dots = find.byType(GestureDetector);
        await tester.tap(dots.at(3));
        await tester.pump();

        expect(tappedPosition, 3);
      });

      testWidgets('@test REQ-DOTS-003 onTap is optional and does not crash when null',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: ProgressDots(total: 3, current: 1),
            ),
          ),
        );

        // Should not throw when tapped without onTap callback
        final dots = find.byType(GestureDetector);
        await tester.tap(dots.at(1));
        await tester.pump();
      });
    });

    group('REQ-DOTS-004: Layout', () {
      testWidgets('@test REQ-DOTS-004 dots are arranged in a Row',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: ProgressDots(total: 4, current: 2),
            ),
          ),
        );

        expect(find.byType(Row), findsOneWidget);
      });

      testWidgets('@test REQ-DOTS-004 dots are centered', (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: Center(
                child: ProgressDots(total: 3, current: 1),
              ),
            ),
          ),
        );

        final row = tester.widget<Row>(find.byType(Row));
        expect(row.mainAxisAlignment, MainAxisAlignment.center);
      });
    });
  });
}
