# runner_app/lib/core/services/ — Audio + Timer

OVERVIEW: Two services — AudioService (TTS zh-CN + tick.wav playback) and TimerService (1-second tick Stream).

SERVICES:

| Service | File | Purpose |
|---------|------|---------|
| AudioService | audio_service.dart | FlutterTts speech + audioplayers tick sound, mute/volume control |
| TimerService | timer_service.dart | Stream-based 1s countdown, start/pause/resume/reset/stop |

## AudioService

**TTS config**: zh-CN language, speech rate 0.5, volume 0.0-1.0
**Tick sound**: `assets/audio/tick.wav` at 30% of volume
**Key methods**:
- `preload({volume, voiceOn})` — init TTS, return false if zh-CN unavailable
- `speak(String)` — TTS, no-op if muted or voice disabled
- `playTick()` — beep sound, no-op if muted
- `setVolume()`, `toggleMute()`, `setVoiceEnabled()`, `stop()`, `dispose()`

**ANTI-PATTERNS**:
- **NEVER call `stop()` in screen dispose()** — TrainingFlowScreen swaps widgets, dispose fires on exercise↔rest transitions, stopping kills ongoing audio
- Audio failures caught silently — catch blocks `continue`, never crash screen
- TTS init failure returns `false` — screens must handle gracefully

## TimerService

**Stream-based**: `Stream<int>` emitting elapsed seconds every 1s
**Methods**: `start()`, `pause()`, `resume()`, `reset()`, `stop()`, `dispose()`
**Usage pattern**: Screen creates TimerService locally in State, listens to stream, cancels subscription in dispose
