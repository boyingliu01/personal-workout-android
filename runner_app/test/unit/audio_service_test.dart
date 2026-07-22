import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:mocktail/mocktail.dart';
import 'package:strength_app/core/services/audio_service.dart';

class MockFlutterTts extends Mock implements FlutterTts {}

class MockAudioPlayer extends Mock implements AudioPlayer {}

class FakeSource extends Fake implements Source {}

void main() {
  late MockFlutterTts mockTts;
  late MockAudioPlayer mockPlayer;
  late AudioService service;

  setUpAll(() {
    registerFallbackValue(FakeSource());
  });

  setUp(() {
    mockTts = MockFlutterTts();
    mockPlayer = MockAudioPlayer();

    // Default stubs for all TTS methods
    when(() => mockTts.setLanguage(any())).thenAnswer((_) async => true);
    when(() => mockTts.setSpeechRate(any())).thenAnswer((_) async => 1);
    when(() => mockTts.setVolume(any())).thenAnswer((_) async => 1);
    when(() => mockTts.speak(any())).thenAnswer((_) async => 1);
    when(() => mockTts.stop()).thenAnswer((_) async => 1);

    // Default stubs for all player methods
    when(() => mockPlayer.play(any(), volume: any(named: 'volume')))
        .thenAnswer((_) async => 1);
    when(() => mockPlayer.dispose()).thenAnswer((_) async {});

    service = AudioService(tts: mockTts, player: mockPlayer);
  });

  group('AudioService - state properties', () {
    test('default volume is 0.8', () {
      expect(service.volume, 0.8);
    });

    test('is not muted initially', () {
      expect(service.isMuted, isFalse);
    });

    test('voice is enabled initially', () {
      expect(service.voiceEnabled, isTrue);
    });

    test('set volume', () {
      service.setVolume(0.5);
      expect(service.volume, 0.5);
    });

    test('toggle mute', () {
      expect(service.isMuted, isFalse);
      service.toggleMute();
      expect(service.isMuted, isTrue);
      service.toggleMute();
      expect(service.isMuted, isFalse);
    });

    test('disable voice', () {
      service.setVoiceEnabled(false);
      expect(service.voiceEnabled, isFalse);
    });
  });

  group('AudioService - state guards (TDD)', () {
    test('speak is no-op when muted', () async {
      service.setVoiceEnabled(true);
      service.toggleMute();
      await service.speak('这段语音不应被播报');
      verifyNever(() => mockTts.speak(any()));
    });

    test('speak is no-op when voice disabled', () async {
      service.setVoiceEnabled(false);
      await service.speak('这段语音不应被播报');
      verifyNever(() => mockTts.speak(any()));
    });

    test('playTick is no-op when muted', () async {
      service.toggleMute();
      await service.playTick();
      verifyNever(() => mockPlayer.play(any(), volume: any(named: 'volume')));
    });

    test('stop does not throw when nothing playing', () async {
      await expectLater(service.stop(), completes);
    });

    test('preload returns true on success', () async {
      final result = await service.preload();
      expect(result, isTrue);
    });

    test('preload returns false when language unavailable', () async {
      when(() => mockTts.setLanguage(any())).thenAnswer((_) async => false);
      final result = await service.preload();
      expect(result, isFalse);
    });

    test('preload can be called multiple times safely', () async {
      final r1 = await service.preload();
      final r2 = await service.preload();
      final r3 = await service.preload();
      expect(r1, isTrue);
      expect(r2, isTrue);
      expect(r3, isTrue);
    });
  });

  group('AudioService - speak and playTick with mocks', () {
    test('speak calls TTS when not muted and voice enabled', () async {
      await service.speak('测试语音');
      verify(() => mockTts.speak('测试语音')).called(1);
    });

    test('playTick calls player when not muted', () async {
      await service.playTick();
      verify(() => mockPlayer.play(any(), volume: any(named: 'volume')))
          .called(1);
    });

    test('setVolume calls TTS setVolume', () {
      service.setVolume(0.5);
      verify(() => mockTts.setVolume(0.5)).called(1);
    });

    test('dispose calls TTS stop and player dispose', () {
      service.dispose();
      verify(() => mockTts.stop()).called(1);
      verify(() => mockPlayer.dispose()).called(1);
    });
  });
}
