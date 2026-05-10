import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'package:runner_app/services/audio_service.dart';

// Mock classes
class MockAudioPlayer extends Mock implements AudioPlayer {}

class MockFlutterTts extends Mock implements FlutterTts {}

void main() {
  group('AudioService', () {
    late AudioService audioService;
    late MockAudioPlayer mockPlayer;
    late MockFlutterTts mockTts;

    setUp(() {
      mockPlayer = MockAudioPlayer();
      mockTts = MockFlutterTts();

      audioService = AudioService(
        audioPlayer: mockPlayer,
        tts: mockTts,
      );

      registerFallbackValue(AssetSource(''));
      registerFallbackValue('');

      when(() => mockPlayer.setVolume(any())).thenAnswer((_) async {});
      when(() => mockPlayer.play(any())).thenAnswer((_) async => 1);
    });

    setUpAll(() {
      registerFallbackValue(0.0);
    });

    group('REQ-AUDIO-001: Play Beep Sound', () {
      test('@test REQ-AUDIO-001 playBeep() plays beep.mp3 asset', () async {
        await audioService.playBeep();

        verify(() => mockPlayer.setVolume(1.0)).called(1);
        verify(() => mockPlayer.play(any())).called(1);
      });

      test('@test REQ-AUDIO-001 playBeep() when muted returns silently',
          () async {
        audioService.toggleMute();

        await audioService.playBeep();

        verifyNever(() => mockPlayer.play(any()));
        verifyNever(() => mockPlayer.setVolume(any()));
      });
    });

    group('REQ-AUDIO-002: Play Countdown Voice', () {
      test('@test REQ-AUDIO-002 playCountdown(5) plays 5.mp3', () async {
        await audioService.playCountdown(5);

        verify(() => mockPlayer.setVolume(1.0)).called(1);
        verify(() => mockPlayer.play(any())).called(1);
      });

      test('@test REQ-AUDIO-002 playCountdown(1) plays 1.mp3', () async {
        await audioService.playCountdown(1);

        verify(() => mockPlayer.setVolume(1.0)).called(1);
        verify(() => mockPlayer.play(any())).called(1);
      });

      test('@test REQ-AUDIO-002 playCountdown() with invalid second throws',
          () async {
        expect(() => audioService.playCountdown(0), throwsArgumentError);
        expect(() => audioService.playCountdown(6), throwsArgumentError);
      });
    });

    group('REQ-AUDIO-003: Speak Text (TTS)', () {
      test('@test REQ-AUDIO-003 speak(text) calls flutter_tts.speak', () async {
        when(() => mockTts.speak(any())).thenAnswer((_) async => 1);

        await audioService.speak('测试文本');

        verify(() => mockTts.speak('测试文本')).called(1);
      });

      test('@test REQ-AUDIO-003 speak() when muted returns silently', () async {
        audioService.toggleMute();

        await audioService.speak('测试');

        verifyNever(() => mockTts.speak(any()));
      });
    });

    group('REQ-AUDIO-004: Set Volume', () {
      test('@test REQ-AUDIO-004 setVolume(0.5) sets volume to 0.5', () {
        audioService.setVolume(0.5);

        expect(audioService.volume, 0.5);
      });

      test('@test REQ-AUDIO-004 setVolume affects subsequent playback',
          () async {
        audioService.setVolume(0.3);
        await audioService.playBeep();

        verify(() => mockPlayer.setVolume(0.3)).called(1);
      });

      test('@test REQ-AUDIO-004 setVolume() clamps to valid range', () {
        audioService.setVolume(1.5);
        expect(audioService.volume, 1.0);

        audioService.setVolume(-0.5);
        expect(audioService.volume, 0.0);
      });
    });

    group('REQ-AUDIO-005: Preload Audio Files', () {
      test('@test REQ-AUDIO-005 preload() loads beep.mp3', () async {
        when(() => mockPlayer.setSource(any())).thenAnswer((_) async {});

        await audioService.preload();

        verify(() => mockPlayer.setSource(any())).called(6);
      });

      test('@test REQ-AUDIO-005 preload() loads all countdown files', () async {
        when(() => mockPlayer.setSource(any())).thenAnswer((_) async {});

        await audioService.preload();

        verify(() => mockPlayer.setSource(any())).called(6);
      });
    });

    group('REQ-AUDIO-006: Exercise Start Announcement', () {
      test(
          '@test REQ-AUDIO-006 announceExerciseStart(name) speaks correct text',
          () async {
        when(() => mockTts.speak(any())).thenAnswer((_) async => 1);

        await audioService.announceExerciseStart('深蹲');

        verify(() => mockTts.speak('开始：深蹲')).called(1);
      });
    });

    group('REQ-AUDIO-007: Exercise Complete Announcement', () {
      test('@test REQ-AUDIO-007 announceExerciseComplete() speaks correct text',
          () async {
        when(() => mockTts.speak(any())).thenAnswer((_) async => 1);

        await audioService.announceExerciseComplete();

        verify(() => mockTts.speak('动作完成，休息5秒')).called(1);
      });
    });

    group('REQ-AUDIO-008: Rest End Announcement', () {
      test('@test REQ-AUDIO-008 announceRestEnd() speaks correct text',
          () async {
        when(() => mockTts.speak(any())).thenAnswer((_) async => 1);

        await audioService.announceRestEnd();

        verify(() => mockTts.speak('准备下一个动作')).called(1);
      });
    });

    group('REQ-AUDIO-009: Workout Complete Announcement', () {
      test('@test REQ-AUDIO-009 announceWorkoutComplete() speaks correct text',
          () async {
        when(() => mockTts.speak(any())).thenAnswer((_) async => 1);

        await audioService.announceWorkoutComplete();

        verify(() => mockTts.speak('训练完成，真棒！')).called(1);
      });
    });

    group('REQ-AUDIO-010: Mute/Unmute Toggle', () {
      test('@test REQ-AUDIO-010 toggleMute() switches isMuted state', () {
        expect(audioService.isMuted, false);

        audioService.toggleMute();
        expect(audioService.isMuted, true);

        audioService.toggleMute();
        expect(audioService.isMuted, false);
      });

      test('@test REQ-AUDIO-010 when muted, all playback silent', () async {
        audioService.toggleMute();

        await audioService.playBeep();
        await audioService.speak('test');

        verifyNever(() => mockPlayer.play(any()));
        verifyNever(() => mockTts.speak(any()));
      });
    });

    group('Edge Cases', () {
      test('@test EC-AUDIO-001 playBeep() when muted returns silently',
          () async {
        audioService.toggleMute();

        await audioService.playBeep();

        verifyNever(() => mockPlayer.play(any()));
        expect(audioService.isMuted, true);
      });

      test('@test EC-AUDIO-003 preload() fails gracefully', () async {
        when(() => mockPlayer.setSource(any()))
            .thenThrow(Exception('File not found'));

        await audioService.preload();

        expect(audioService.isMuted, false);
      });
    });

    group('Dispose', () {
      test('@test dispose() releases AudioPlayer and stops TTS', () async {
        when(() => mockPlayer.dispose()).thenAnswer((_) async {});
        when(() => mockTts.stop()).thenAnswer((_) async => 1);

        await audioService.dispose();

        verify(() => mockPlayer.dispose()).called(1);
        verify(() => mockTts.stop()).called(1);
      });
    });
  });
}
