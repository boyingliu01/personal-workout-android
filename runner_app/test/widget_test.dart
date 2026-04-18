import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:runner_app/main.dart';

void main() {
  testWidgets('App launches without crashing', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(
      child: RunnerTrainingApp(),
    ));

    // Verify app title is displayed
    expect(find.text('跑者训练'), findsOneWidget);
  });
}
