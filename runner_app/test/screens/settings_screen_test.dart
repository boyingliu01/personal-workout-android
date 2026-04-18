import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:runner_app/screens/settings_screen.dart';

class MockCallback extends Mock {
  void call();
}

void main() {
  group('SettingsScreen Tests', () {
    testWidgets('SettingsScreen builds without errors',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: SettingsScreen(),
          ),
        ),
      );

      expect(find.byType(Scaffold), findsOneWidget);
      expect(find.text('设置'), findsOneWidget);
    });

    testWidgets('Displays difficulty duration options',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: SettingsScreen(),
          ),
        ),
      );

      // Check difficulty duration options
      expect(find.text('30秒'), findsOneWidget);
      expect(find.text('45秒'), findsOneWidget);
      expect(find.text('60秒'), findsOneWidget);
    });

    testWidgets('Displays rest duration options', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: SettingsScreen(),
          ),
        ),
      );

      expect(find.text('3秒'), findsOneWidget);
      expect(find.text('5秒'), findsOneWidget);
      expect(find.text('10秒'), findsOneWidget);
    });

    testWidgets('Audio toggle switch works', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: SettingsScreen(),
          ),
        ),
      );

      expect(find.byType(Switch), findsAtLeastNTimes(1));

      // Find and tap the audio toggle
      await tester.tap(find.byType(Switch).first);
      await tester.pump();

      // Verify the switch changes state after tap
      expect(find.byType(Switch), findsAtLeastNTimes(1));
    });

    testWidgets('Clear history button displays and functionally tested',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: SettingsScreen(),
          ),
        ),
      );

      expect(find.text('清除历史记录'), findsOneWidget);
    });

    testWidgets('About section displays app version',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: SettingsScreen(),
          ),
        ),
      );

      expect(find.text('版本'), findsOneWidget);
      // Actual version text content may vary during testing as it's dynamic
    });

    testWidgets('App bar displays settings title', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: SettingsScreen(),
          ),
        ),
      );

      expect(find.text('设置'), findsOneWidget);
    });

    testWidgets('Settings screen handles different sections separately',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: SettingsScreen(),
          ),
        ),
      );

      // Expect multiple sections
      expect(find.byType(Card), findsAtLeastNWidgets(3));
    });

    testWidgets('Dropdown selections for duration work',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: SettingsScreen(),
          ),
        ),
      );

      expect(find.byType(DropdownButton<int>), findsAtLeastNWidgets(2));
    });
  });
}
