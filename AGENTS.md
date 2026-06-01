# PROJECT KNOWLEDGE BASE

**Generated:** 2026-06-01
**Commit:** c15fd25
**Branch:** master

## OVERVIEW
Flutter Android 跑者力量训练APP (strength_app). DDD分层架构: domain/entities → core/services → data/storage → presentation/screens+providers. State management via Riverpod StateNotifier, persistent storage via Hive.

## STRUCTURE
```
sport-apk/
├── runner_app/              # Active Flutter project (v2.0.0+1)
│   ├── lib/
│   │   ├── main.dart        # Entry: Hive init + ProviderScope + MaterialApp
│   │   ├── domain/entities/ # Exercise, Workout, TrainingSession (pure Dart)
│   │   ├── core/services/   # AudioService (TTS+tick), TimerService (Stream)
│   │   ├── data/            # Hive datasources and repositories
│   │   └── presentation/    # Providers, screens, models
│   ├── test/unit/           # 8 unit tests + 1 widget test
│   └── android/             # Android native config
├── runner_app_old/          # Backup/previous iteration — IGNORE for new work
├── SETUP_GUIDE.md           # Windows desktop migration guide
├── DESIGN.md / PLAN.md      # Original design doc + implementation plan (historic)
└── .github/ISSUES/          # Tracked issues (001, 002)
```

## WHERE TO LOOK
| Task | Location | Notes |
|------|----------|-------|
| App entry point | `runner_app/lib/main.dart` | Hive init → ProviderScope → StrengthApp |
| Domain models | `runner_app/lib/domain/entities/` | Exercise, Workout, ExerciseLog, TrainingSession |
| Workout state machine | `runner_app/lib/presentation/providers/training_session_provider.dart` | TrainingState + TrainingSessionNotifier: home → detail → exercising → resting → complete |
| Audio (TTS + tick) | `runner_app/lib/core/services/audio_service.dart` | FlutterTts zh-CN + audioplayers tick.wav |
| Timer | `runner_app/lib/core/services/timer_service.dart` | Stream-based, 1s tick |
| Settings persistence | `runner_app/lib/presentation/providers/settings_provider.dart` | Hive box 'settings' |
| Training history | `runner_app/lib/data/repositories/training_storage.dart` | Hive box 'sessions', JSON-encoded |
| Exercise data | `runner_app/lib/core/constants/exercise_data.dart` | Hardcoded exercise list |
| Screens | `runner_app/lib/presentation/screens/` | home → workout_detail → exercise → rest → complete |
| Environment setup | `SETUP_GUIDE.md` | Windows desktop migration guide |

## CODE MAP

| Symbol | Type | Location | Role |
|--------|------|----------|------|
| `StrengthApp` | Widget | main.dart | Root MaterialApp, orange seed color |
| `TrainingState` | State class | training_session_provider.dart | Immutable UI state: screen, workout, index, paused |
| `TrainingSessionNotifier` | StateNotifier | training_session_provider.dart | Workout lifecycle: select/start/next/complete |
| `trainingSessionProvider` | StateNotifierProvider | training_session_provider.dart | Global workout state |
| `AudioService` | Service class | audio_service.dart | TTS zh-CN + tick sound, mute/volume control |
| `audioServiceProvider` | Provider | audio_provider.dart | Singleton AudioService, dispose on ref disposal |
| `SettingsNotifier` | StateNotifier | settings_provider.dart | Hive-backed settings CRUD |
| `AppSettings` | Model | settings_model.dart | volume, voiceEnabled, soundEnabled, exerciseDuration, restDuration, keepScreenOn |
| `TimerService` | Service class | timer_service.dart | Stream<int> 1s tick, start/pause/resume/reset/stop |
| `Exercise` | Entity | exercise.dart | name, durationSeconds, restSeconds, Difficulty, ExerciseCategory |
| `Workout` | Entity | workout.dart | name, estimatedMinutes, List<Exercise> |
| `TrainingSession` | Entity | training_session.dart | session log with ExerciseLog list |

## CONVENTIONS
- **Linter**: flutter_lints base + prefer_const_constructors, prefer_const_declarations, prefer_final_locals, avoid_print, prefer_single_quotes
- **Language**: Screen UI text in Chinese (`'力量训练'`, `'准备开始'`, etc.)
- **TTS language**: zh-CN (Chinese speech for training prompts)
- **Color scheme**: Orange `#F5A623` as seed, Material 3
- **Entity classes**: `const` constructors, immutable fields
- **Service lifecycle**: `ref.onDispose()` pattern for resource cleanup
- **No riverpod_generator used**: Providers hand-written, not codegen

## ANTI-PATTERNS (THIS PROJECT)
- **DO NOT use `wakelock`** — use `wakelock_plus` (deprecated)
- **DO NOT modify `runner_app_old/`** — it's a backup, work only in `runner_app/`
- **DO NOT call `_audioService.stop()` in Dispose** — screens swap via state change, not Navigator; stopping TTS kills ongoing audio
- **DO NOT suppress type errors** with `as any` or `@ts-ignore` equivalents
- **DO NOT skip Hive init error handling** — main.dart catches HiveError and shows _AppErrorScreen
- **Audio failures fail silently** — catch blocks continue silently, don't crash the screen

## UNIQUE STYLES
- **Screen state machine**: Single `TrainingSessionNotifier` drives all screen transitions (WorkoutScreen enum: home/detail/exercising/resting/complete)
- **Widget-based screen switching**: Screens swapped inside TrainingFlowScreen via state, not route navigation (exercise↔rest transitions)
- **TTS countdown**: Last 5 seconds use voice countdown ("5,4,3,2,1"), tick sound otherwise
- **Settings-driven audio**: Settings change affects audio service preload on every screen init (not live-update)

## COMMANDS

```bash
cd runner_app

# Dependencies
flutter pub get
dart run build_runner build   # Not needed currently — no riverpod_generator

# Development
flutter run                   # Run on connected device
flutter run --profile         # Performance profiling

# Testing
flutter test                  # Run unit + widget tests (~9 tests)

# Building
flutter build apk --debug     # Debug APK
flutter build apk --release   # Release APK
flutter clean && flutter pub get  # Clean rebuild
```

## NOTES
- `runner_app_old/` is a previous iteration backup — ignore for development
- Two Hive boxes: `'settings'` (user preferences) and `'sessions'` (training history)
- Audio requires Android TTS engine with zh-CN language installed
- Exercise data is hardcoded in `exercise_data.dart` — no API or remote data yet
- Quality gates configured via `xp-gate` pre-commit hook (architecture gate requires `architecture.yaml`)
- GitHub Issues tracked in `.github/ISSUES/` (not in GitHub repo, local markdown)
