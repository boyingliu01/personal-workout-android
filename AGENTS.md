# PROJECT KNOWLEDGE BASE

**Generated:** 2026-06-04
**Commit:** 9028321
**Branch:** master

## OVERVIEW
Flutter Android 跑者力量训练APP (strength_app). DDD分层架构: domain/entities → core/services → data/storage → presentation/screens+providers. State management via Riverpod StateNotifier, persistent storage via Hive. 29 Dart files, ~2500 lines.

## TRAINING SCENARIO CONSTRAINTS
**使用场景**: 家庭训练，无健身房器械
- **允许的动作类型**: 徒手训练（bodyweight）+ 哑铃（dumbbell）
- **禁止的动作类型**: 需要健身房专用器械（如腿举机、史密斯机、引体向上杆等）
- **可用器械**: 仅哑铃
- **可用家具**: 沙发/椅子（用于辅助动作如保加利亚分腿蹲）

添加新动作时必须遵守此约束，确保所有动作都能在家完成。

## STRUCTURE
```
sport-apk/
├── runner_app/              # Active Flutter project (v2.0.0+1)
│   ├── lib/
│   │   ├── main.dart        # Entry: runZonedGuarded → Hive init → ProviderScope → StrengthApp
│   │   ├── domain/entities/ # 3 files: Exercise, Workout, ExerciseLog, TrainingSession (pure Dart)
  │   │   ├── core/
│   │   │   ├── services/    # AudioService (TTS+tick), TimerService (Stream) — see core/services/AGENTS.md
│   │   │   └── constants/   # exercise_data.dart (hardcoded catalog)
│   │   ├── data/
│   │   │   ├── datasources/ # Hive datasources (JSON serialization)
│   │   │   └── repositories/# TrainingStorage (Hive box 'sessions')
│   │   └── presentation/
│   │       ├── providers/   # Riverpod StateNotifiers (hand-written, no codegen)
│   │       ├── screens/     # 7 screens, state-machine driven — see presentation/screens/AGENTS.md
│   │       └── models/      # UI model classes
│   ├── test/unit/           # 8 unit tests + 1 widget test
│   └── android/             # Android native config
├── runner_app_old/          # Backup/previous iteration — IGNORE for new work
├── docs/                    # Architecture docs (architecture.yaml, review docs)
├── .github/ISSUES/          # Tracked issues (001, 002)
├── SETUP_GUIDE.md           # Windows desktop migration guide
└── DESIGN.md / PLAN.md      # Original design doc + implementation plan (historic)
```

## WHERE TO LOOK
| Task | Location | Notes |
|------|----------|-------|
| App entry point | `runner_app/lib/main.dart` | runZonedGuarded → Hive init → ProviderScope → StrengthApp |
| Domain models | `runner_app/lib/domain/entities/` | Exercise, Workout, ExerciseLog, TrainingSession — pure Dart, no Flutter deps |
| Workout state machine | `runner_app/lib/presentation/providers/training_session_provider.dart` | TrainingState + TrainingSessionNotifier: home → detail → exercising → resting → complete |
| Audio (TTS + tick) | `runner_app/lib/core/services/audio_service.dart` | FlutterTts zh-CN + audioplayers tick.wav |
| Timer | `runner_app/lib/core/services/timer_service.dart` | Stream-based, 1s tick |
| Settings persistence | `runner_app/lib/presentation/providers/settings_provider.dart` | Hive box 'settings' |
| Training history | `runner_app/lib/data/repositories/training_storage.dart` | Hive box 'sessions', JSON-encoded |
| Exercise data | `runner_app/lib/core/constants/exercise_data.dart` | Hardcoded exercise catalog with ExerciseCategory enum |
| Screens | `runner_app/lib/presentation/screens/` | home → workout_detail → exercise ↔ rest → complete (widget swap, not Navigator) |
| Test conventions | `runner_app/test/unit/` | 8 unit tests (mocktail) + 1 widget test, test file naming: `*_test.dart` |

## CODE MAP

| Symbol | Type | Location | Role |
|--------|------|----------|------|
| `StrengthApp` | Widget | main.dart | Root MaterialApp, orange `#F5A623` seed color |
| `TrainingState` | State class | training_session_provider.dart | Immutable UI state: screen, workout, index, paused |
| `TrainingSessionNotifier` | StateNotifier | training_session_provider.dart | Workout lifecycle: select/start/next/pause/complete |
| `trainingSessionProvider` | StateNotifierProvider | training_session_provider.dart | Global workout state singleton |
| `AudioService` | Service class | audio_service.dart | TTS zh-CN + tick sound, mute/volume control |
| `audioServiceProvider` | Provider | audio_provider.dart | Singleton AudioService, dispose on ref disposal |
| `SettingsNotifier` | StateNotifier | settings_provider.dart | Hive-backed settings CRUD |
| `AppSettings` | Model | settings_model.dart | volume, voiceEnabled, soundEnabled, exerciseDuration, restDuration, keepScreenOn |
| `TimerService` | Service class | timer_service.dart | Stream<int> 1s tick, start/pause/resume/reset/stop |
| `Exercise` | Entity | exercise.dart | name, durationSeconds, restSeconds, Difficulty (enum), ExerciseCategory (enum) |
| `Workout` | Entity | workout.dart | name, estimatedMinutes, List<Exercise> |
| `TrainingSession` | Entity | training_session.dart | session log with ExerciseLog list, date, duration |
| `ExerciseLog` | Entity | exercise_log.dart | exercise name, actual duration, target duration |

## CONVENTIONS
- **Linter**: flutter_lints base + prefer_const_constructors, prefer_const_declarations, prefer_final_locals, avoid_print, prefer_single_quotes
- **Language**: Screen UI text in Chinese (`'力量训练'`, `'准备开始'`, etc.)
- **TTS language**: zh-CN (Chinese speech for training prompts)
- **Color scheme**: Orange `#F5A623` as seed, Material 3
- **Entity classes**: `const` constructors, immutable fields
- **Service lifecycle**: `ref.onDispose()` pattern for resource cleanup
- **Providers**: Hand-written, no riverpod_generator codegen
- **Test naming**: `*_test.dart` in test/unit/, mocktail for mocking
- **SDK**: Dart ^3.6.2, Flutter stable

## ANTI-PATTERNS (THIS PROJECT)
- **DO NOT use `wakelock`** — use `wakelock_plus` (wakelock is deprecated)
- **DO NOT modify `runner_app_old/`** — it's a backup, work only in `runner_app/`
- **DO NOT call `_audioService.stop()` in screen dispose** — TrainingFlowScreen swaps widgets via state, dispose fires on exercise↔rest transitions; stopping TTS kills ongoing audio
- **DO NOT pop screens via Navigator for exercise→rest transitions** — use `notifier.nextExercise()` state change instead
- **DO NOT suppress type errors** with `as dynamic` or equivalent
- **DO NOT skip Hive init error handling** — main.dart catches HiveError and shows _AppErrorScreen
- **Audio failures fail silently** — catch blocks `continue`, never crash the screen
- **Settings changes NOT live-propagated to audio** — only applied on screen init via preload

## UNIQUE STYLES
- **State machine screens**: Single `TrainingSessionNotifier` drives all screen transitions (WorkoutScreen enum: home/detail/exercising/resting/complete)
- **Widget-based screen switching**: Exercise↔rest transitions are widget swaps inside TrainingFlowScreen, NOT route pushes/pops
- **TTS countdown**: Last 5 seconds before timer completion use voice countdown ("5,4,3,2,1"), tick sound for earlier seconds
- **Settings-driven audio**: Settings affect audio service preload on every screen init (not live-update)
- **Widget tests**: Single widget test (`widget_test.dart`) using `testWidgetsWith Riverpod` pattern from test/utils.dart
- **Error handling**: `_AppErrorScreen` shown on Hive init failure, isolated from main app

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
flutter test                  # Run unit + widget tests (9 tests total)

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
- GitHub Issues tracked in `.github/ISSUES/` (local markdown, not in remote repo)
- Platform targets: Android primary, Windows/Linux/macOS/iOS/web scaffolding present
- Assets: `assets/images/` and `assets/audio/tick.wav`
