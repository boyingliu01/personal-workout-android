import 'package:flutter_test/flutter_test.dart';
import 'package:strength_app/core/services/audio_service.dart';

void main() {
  late AudioService service;

  setUp(() {
    service = AudioService();
  });

  group('AudioService - defaults', () {
    test('default volume is 0.8', () {
      expect(service.volume, 0.8);
    });

    test('is not muted initially', () {
      expect(service.isMuted, isFalse);
    });

    test('voice is enabled initially', () {
      expect(service.voiceEnabled, isTrue);
    });
  });

  group('AudioService - volume', () {
    test('set volume to 0.5', () {
      service.setVolume(0.5);
      expect(service.volume, 0.5);
    });

    test('set volume to max', () {
      service.setVolume(1.0);
      expect(service.volume, 1.0);
    });

    test('set volume to min', () {
      service.setVolume(0.0);
      expect(service.volume, 0.0);
    });
  });

  group('AudioService - mute', () {
    test('toggle mute on', () {
      service.toggleMute();
      expect(service.isMuted, isTrue);
    });

    test('toggle mute off', () {
      service.toggleMute();
      service.toggleMute();
      expect(service.isMuted, isFalse);
    });
  });

  group('AudioService - voice', () {
    test('disable voice', () {
      service.setVoiceEnabled(false);
      expect(service.voiceEnabled, isFalse);
    });
  });

  group('AudioService - preload', () {
    test('preload returns true', () async {
      final result = await service.preload();
      expect(result, isTrue);
    });
  });
}
