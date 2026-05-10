import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:strength_app/main.dart';

void main() {
  group('App initialization', () {
    testWidgets('StrengthApp builds without errors', (tester) async {
      await Hive.initFlutter();
      await Hive.openBox('settings');
      await Hive.openBox('sessions');

      await tester.pumpWidget(
        const ProviderScope(child: StrengthApp()),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
  });
}
