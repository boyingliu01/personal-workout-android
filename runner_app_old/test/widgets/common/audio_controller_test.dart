import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:runner_app/widgets/common/audio_controller.dart';

void main() {
  group('AudioController', () {
    testWidgets('shows volume_up icon when not muted', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AudioController(
              isMuted: false,
              onToggleMute: () {},
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.volume_up), findsOneWidget);
      expect(find.byIcon(Icons.volume_off), findsNothing);
    });

    testWidgets('shows volume_off icon when muted', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AudioController(
              isMuted: true,
              onToggleMute: () {},
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.volume_off), findsOneWidget);
      expect(find.byIcon(Icons.volume_up), findsNothing);
    });

    testWidgets('calls onToggleMute when tapped', (tester) async {
      bool callbackCalled = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AudioController(
              isMuted: false,
              onToggleMute: () {
                callbackCalled = true;
              },
            ),
          ),
        ),
      );

      await tester.tap(find.byType(IconButton));
      expect(callbackCalled, isTrue);
    });

    testWidgets('uses IconButton widget', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AudioController(
              isMuted: false,
              onToggleMute: () {},
            ),
          ),
        ),
      );

      expect(find.byType(IconButton), findsOneWidget);
    });
  });
}
