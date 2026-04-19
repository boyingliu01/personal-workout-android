import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:runner_app/screens/history_screen.dart';

void main() {
  group('HistoryScreen', () {
    testWidgets('builds without crashing', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: HistoryScreen(),
        ),
      );
      expect(find.byType(Scaffold), findsOneWidget);
    });
  });
}
