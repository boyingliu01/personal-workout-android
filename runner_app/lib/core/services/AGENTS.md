# runner_app/lib/core/services/ — Audio + Timer
**Generated:** 2026-06-04 | Commit: 9028321

OVERVIEW: Two services — AudioService (TTS zh-CN + tick.wav playback) and TimerService (1-second tick Stream).

SERVICES:

| Service | File | Purpose |
|---------|------|---------|
| AudioService | audio_service.dart | FlutterTts speech + audioplayers tick sound, mute/volume control |
| TimerService | timer_service.dart | Stream-based 1s countdown, start/pause/resume/reset/stop |

## AudioService

**TTS config**: zh-CN language, speech rate 0.5, volume 0.0-1.0
**Tick sound**: `assets/audio/tick.wav` at 30% of volume
**Dependencies**: `flutter_tts ^4.0.0`, `audioplayers ^6.6.0`
**Key methods**:
- `preload({volume, voiceOn})` — init TTS, return false if zh-CN unavailable
- `speak(String)` — TTS, no-op if muted or voice disabled
- `playTick()` — beep sound, no-op if muted
- `setVolume()`, `toggleMute()`, `setVoiceEnabled()`, `stop()`, `dispose()`
**Lifecycle**: Singleton via `audioServiceProvider` — `ref.onDispose()` cleans up resources

**ANTI-PATTERNS**:
- **NEVER call `stop()` in screen dispose()** — TrainingFlowScreen swaps widgets, dispose fires on exercise↔rest transitions, stopping kills ongoing audio
- Audio failures caught silently — catch blocks `continue`, never crash screen
- TTS init failure returns `false` — screens must handle gracefully

## TimerService

**Stream-based**: `Stream<int>` emitting elapsed seconds every 1s
**Dependencies**: Pure Dart — no external packages
**Methods**: `start()`, `pause()`, `resume()`, `reset()`, `stop()`, `dispose()`
**Usage pattern**: Screen creates TimerService locally in State, listens to stream in initState, cancels subscription in dispose
