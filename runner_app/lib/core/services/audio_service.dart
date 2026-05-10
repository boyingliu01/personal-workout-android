/// Audio service for playing sounds and text-to-speech.
class AudioService {
  double _volume = 0.8;
  bool _muted = false;
  bool _voiceEnabled = true;

  double get volume => _volume;
  bool get isMuted => _muted;
  bool get voiceEnabled => _voiceEnabled;

  void setVolume(double value) {
    assert(value >= 0.0 && value <= 1.0);
    _volume = value;
  }

  void toggleMute() {
    _muted = !_muted;
  }

  void setVoiceEnabled(bool enabled) {
    _voiceEnabled = enabled;
  }

  /// Play a beep sound. No-op when muted.
  void playBeep() {
    if (_muted) return;
    // Real implementation uses audioplayers
  }

  /// Speak text using TTS. No-op when voice disabled or muted.
  void speak(String text) {
    if (_muted || !_voiceEnabled) return;
    // Real implementation uses flutter_tts
  }

  /// Pre-load audio resources. Returns true if successful.
  Future<bool> preload() async {
    try {
      // Real implementation preloads beep sounds
      return true;
    } catch (e) {
      return false;
    }
  }
}
