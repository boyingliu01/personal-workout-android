import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_tts/flutter_tts.dart';

/// Audio service for TTS voice prompts and tick sounds during training.
class AudioService {
  final FlutterTts _tts = FlutterTts();
  final AudioPlayer _player = AudioPlayer();
  double _volume = 0.8;
  bool _muted = false;
  bool _voiceEnabled = true;

  double get volume => _volume;
  bool get isMuted => _muted;
  bool get voiceEnabled => _voiceEnabled;

  /// Initialize TTS and preload tick sound.
  /// [volume] and [voiceOn] are synced from settingsProvider so changes
  /// in Settings immediately affect audio behavior.
  Future<bool> preload({double? volume, bool? voiceOn}) async {
    try {
      if (volume != null) _volume = volume;
      if (voiceOn != null) _voiceEnabled = voiceOn;
      await _tts.setLanguage('zh-CN');
      await _tts.setSpeechRate(0.5);
      await _tts.setVolume(_volume);
      return true;
    } catch (e) {
      return false;
    }
  }

  void setVolume(double value) {
    assert(value >= 0.0 && value <= 1.0);
    _volume = value;
    unawaited(_tts.setVolume(_volume));
  }

  void toggleMute() {
    _muted = !_muted;
  }

  void setVoiceEnabled(bool enabled) {
    _voiceEnabled = enabled;
  }

  /// Play a short tick/beep sound. No-op when muted.
  Future<void> playTick() async {
    if (_muted) return;
    try {
      await _player.play(AssetSource('audio/tick.wav'),
          volume: _volume * 0.3);
    } catch (e) {
      // Tick sound failed, continue silently
    }
  }

  /// Speak text using TTS. No-op when voice disabled or muted.
  Future<void> speak(String text) async {
    if (_muted || !_voiceEnabled) return;
    try {
      await _tts.speak(text);
    } catch (e) {
      // TTS failed, continue silently
    }
  }

  /// Stop current TTS speech.
  Future<void> stop() async {
    try {
      await _tts.stop();
    } catch (e) {
      // Ignore
    }
  }

  void dispose() {
    unawaited(_tts.stop().catchError((_) {}));
    unawaited(_player.dispose().catchError((_) {}));
  }
}
