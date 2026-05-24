import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:strength_app/core/services/audio_service.dart';

void main() {
  group('AudioService - state properties', () {
    testWidgets('default volume is 0.8', (tester) async {
      final service = AudioService();
      addTearDown(service.dispose);
      expect(service.volume, 0.8);
    });

    testWidgets('is not muted initially', (tester) async {
      final service = AudioService();
      addTearDown(service.dispose);
      expect(service.isMuted, isFalse);
    });

    testWidgets('voice is enabled initially', (tester) async {
      final service = AudioService();
      addTearDown(service.dispose);
      expect(service.voiceEnabled, isTrue);
    });

    testWidgets('set volume', (tester) async {
      final service = AudioService();
      addTearDown(service.dispose);
      service.setVolume(0.5);
      expect(service.volume, 0.5);
    });

    testWidgets('toggle mute', (tester) async {
      final service = AudioService();
      addTearDown(service.dispose);
      expect(service.isMuted, isFalse);
      service.toggleMute();
      expect(service.isMuted, isTrue);
      service.toggleMute();
      expect(service.isMuted, isFalse);
    });

    testWidgets('disable voice', (tester) async {
      final service = AudioService();
      addTearDown(service.dispose);
      service.setVoiceEnabled(false);
      expect(service.voiceEnabled, isFalse);
    });
  });
}
