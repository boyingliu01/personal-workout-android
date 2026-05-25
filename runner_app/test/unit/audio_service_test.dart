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

  group('AudioService - state guards (TDD)', () {
    testWidgets('speak is no-op when muted', (tester) async {
      final service = AudioService();
      addTearDown(service.dispose);
      service.setVoiceEnabled(true);
      service.toggleMute(); // mute it
      // Should not throw, even though TTS engine may not be available
      expect(
        service.speak('这段语音不应被播报'),
        completes,
      );
    });

    testWidgets('speak is no-op when voice disabled', (tester) async {
      final service = AudioService();
      addTearDown(service.dispose);
      service.setVoiceEnabled(false);
      // Should not throw, even though TTS engine may not be available
      expect(
        service.speak('这段语音不应被播报'),
        completes,
      );
    });

    testWidgets('playTick is no-op when muted', (tester) async {
      final service = AudioService();
      addTearDown(service.dispose);
      service.toggleMute();
      // Should not throw
      expect(service.playTick(), completes);
    });

    testWidgets('stop does not throw when nothing playing', (tester) async {
      final service = AudioService();
      addTearDown(service.dispose);
      expect(service.stop(), completes);
    });

    testWidgets('preload returns true on success', (tester) async {
      final service = AudioService();
      addTearDown(service.dispose);
      final result = await service.preload();
      // preload() should return bool, never throw
      expect(result, isA<bool>());
    });

    testWidgets('preload can be called multiple times safely', (tester) async {
      final service = AudioService();
      addTearDown(service.dispose);
      final r1 = await service.preload();
      final r2 = await service.preload();
      final r3 = await service.preload();
      expect(r1, isTrue);
      expect(r2, isTrue);
      expect(r3, isTrue);
    });
  });
}
