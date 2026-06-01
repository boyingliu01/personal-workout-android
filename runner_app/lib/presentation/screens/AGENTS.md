# runner_app/lib/presentation/screens/ — State Machine Screens

OVERVIEW: 7 screens driven by single `TrainingSessionNotifier` state machine. Screens swap as widgets via TrainingFlowScreen, not route navigation.

SCREENS AND FLOW:

```
HomeScreen → WorkoutDetailScreen → [ExerciseScreen ↔ RestScreen] → WorkoutCompleteScreen
                                    (via state machine, not Navigator)
SettingsScreen (standalone, accessed from Home)
```

STATE MACHINE: `WorkoutScreen` enum = `home | detail | exercising | resting | complete`

## Screen Responsibilities

| Screen | File | Purpose |
|--------|------|---------|
| HomeScreen | home_screen.dart | Workout list, settings button, training history access |
| WorkoutDetailScreen | workout_detail_screen.dart | Selected workout overview, start button |
| ExerciseScreen | exercise_screen.dart | Active exercise timer, countdown, pause/skip controls |
| RestScreen | rest_screen.dart | Rest period timer with TTS prompt for next exercise |
| WorkoutCompleteScreen | workout_complete_screen.dart | Summary, save session, start new training |
| SettingsScreen | settings_screen.dart | Volume, voice/sound toggle, duration settings |
| TrainingFlowScreen | training_flow_screen.dart | Widget switcher — renders exercise/rest/complete based on state |

## SHARED WIDGETS (defined within exercise_screen.dart)

| Widget | Purpose |
|--------|---------|
| CountdownTimer | 200x200 progress circle with elapsed/remaining time display |
| ProgressDots | Horizontal dot indicator for exercise position (completed ✓, active, upcoming) |
| ExerciseControls | Pause/resume + skip buttons, conditional skip on last exercise |

## KEY PATTERNS

**Screen switching**: `TrainingFlowScreen` watches `trainingSessionProvider` and renders the appropriate screen widget. Exercise↔rest transitions are widget swaps, NOT route pushes/pops.

**Timer pattern**: Each active screen (ExerciseScreen, RestScreen) creates its own `TimerService` local to the State, listens to stream in initState, cancels subscription in dispose.

**Audio pattern**: 
- `AudioService` accessed via `ref.read(audioServiceProvider)` — singleton from audio_provider.dart
- Settings read once in initState: `ref.read(settingsProvider)` → preload with volume/voiceOn
- Settings changes NOT live-propagated to audio (only on screen init)

**TTS countdown**: Last 5 seconds before timer completion use voice countdown ("5,4,3,2,1"), tick sound for earlier seconds.

**ANTI-PATTERNS**:
- DO NOT pop screens via Navigator for exercise→rest transitions — use `notifier.nextExercise()` state change
- DO NOT stop audio service in dispose — TTS/audio continues across widget swaps
- DO NOT create providers locally — all providers are global via ref.watch/ref.read
