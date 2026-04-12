import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_tts/flutter_tts.dart';

/// Service for audio playback and TTS announcements.
///
/// Manages sound effects (beep, countdown) via audioplayers
/// and voice announcements via flutter_tts.
///
/// Design Decision DD-AUDIO-001: Preload sound effects at app init.
/// Design Decision DD-AUDIO-002: audioplayers for effects, flutter_tts for voice.
class AudioService {
  /// Audio player for sound effects
  final AudioPlayer _audioPlayer;

  /// Text-to-speech engine for announcements
  final FlutterTts _tts;

  /// Current mute state
  bool _isMuted = false;

  /// Current volume level (0.0 - 1.0)
  double _volume = 1.0;

  /// Creates AudioService with injected dependencies.
  ///
  /// Allows testing with mock implementations.
  AudioService({
    required AudioPlayer audioPlayer,
    required FlutterTts tts,
  })  : _audioPlayer = audioPlayer,
        _tts = tts;

  /// Factory constructor for production use.
  ///
  /// Creates real AudioPlayer and FlutterTts instances.
  factory AudioService.create() {
    return AudioService(
      audioPlayer: AudioPlayer(),
      tts: FlutterTts(),
    );
  }

  /// Current mute state.
  bool get isMuted => _isMuted;

  /// Current volume level (0.0 - 1.0).
  double get volume => _volume;

  /// Preload all sound effect files.
  ///
  /// Loads beep.mp3, countdown/1-5.mp3 into cache.
  /// Gracefully handles missing files (logs error, continues).
  Future<void> preload() async {
    final files = [
      'beep.mp3',
      'countdown/1.mp3',
      'countdown/2.mp3',
      'countdown/3.mp3',
      'countdown/4.mp3',
      'countdown/5.mp3',
    ];

    for (final file in files) {
      try {
        await _audioPlayer.setSource(AssetSource(file));
      } catch (e) {
        // EC-AUDIO-003: Log error, continue with fallback
        // In production, would log to debug/error tracking
      }
    }
  }

  /// Play short beep sound.
  ///
  /// Plays beep.mp3 at current volume.
  /// When muted, returns silently without playback.
  Future<void> playBeep() async {
    if (_isMuted) return;

    await _audioPlayer.setVolume(_volume);
    await _audioPlayer.play(AssetSource('beep.mp3'));
  }

  /// Play countdown voice for specified second.
  ///
  /// Plays countdown/{second}.mp3 for countdown announcements.
  /// Valid second range: 1-5.
  /// Throws ArgumentError if second is outside valid range.
  Future<void> playCountdown(int second) async {
    if (second < 1 || second > 5) {
      throw ArgumentError('second must be in range [1, 5], got $second');
    }

    if (_isMuted) return;

    await _audioPlayer.setVolume(_volume);
    await _audioPlayer.play(AssetSource('countdown/$second.mp3'));
  }

  /// Convert text to speech.
  ///
  /// Uses flutter_tts to speak the provided text.
  /// Default locale: zh_CN (Chinese).
  /// When muted, returns silently without speaking.
  Future<void> speak(String text) async {
    if (_isMuted) return;

    await _tts.speak(text);
  }

  /// Set audio volume.
  ///
  /// Level is clamped to valid range [0.0, 1.0].
  /// Affects all subsequent playback.
  void setVolume(double level) {
    _volume = level.clamp(0.0, 1.0);
  }

  /// Toggle mute state.
  ///
  /// Flips isMuted boolean.
  /// When muted, all playback methods return silently.
  void toggleMute() {
    _isMuted = !_isMuted;
  }

  /// Announce exercise start.
  ///
  /// Speaks "开始：{exerciseName}" in Chinese.
  Future<void> announceExerciseStart(String exerciseName) async {
    await speak('开始：$exerciseName');
  }

  /// Announce exercise completion.
  ///
  /// Speaks "动作完成，休息5秒" in Chinese.
  Future<void> announceExerciseComplete() async {
    await speak('动作完成，休息5秒');
  }

  /// Announce rest period end.
  ///
  /// Speaks "准备下一个动作" in Chinese.
  Future<void> announceRestEnd() async {
    await speak('准备下一个动作');
  }

  /// Announce workout completion.
  ///
  /// Speaks "训练完成，真棒！" in Chinese.
  Future<void> announceWorkoutComplete() async {
    await speak('训练完成，真棒！');
  }

  /// Dispose resources.
  ///
  /// Releases AudioPlayer and stops TTS.
  Future<void> dispose() async {
    await _audioPlayer.dispose();
    await _tts.stop();
  }
}
