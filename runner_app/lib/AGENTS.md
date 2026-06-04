# runner_app/lib/ — DDD Application Core
**Generated:** 2026-06-04 | Commit: 9028321

OVERVIEW: Internal DDD layer structure — domain/entities → core/services → data → presentation. See root AGENTS.md for project-wide context.

## LAYER MAP
| Layer | Location | Files | Notes |
|-------|----------|-------|-------|
| Domain | domain/entities/ | 3 files | Pure Dart, no Flutter deps — Exercise, Workout, ExerciseLog, TrainingSession |
| Core services | core/services/ | 2 files | AudioService, TimerService (see `core/services/AGENTS.md`) |
| Core constants | core/constants/ | 1 file | exercise_data.dart — hardcoded catalog with ExerciseCategory enum |
| Data | data/ | 2 subdirs | Hive datasources + repositories, JSON serialization |
| Presentation | presentation/ | 3 subdirs | Providers, screens, models (see `presentation/screens/AGENTS.md`) |
| Entry point | main.dart | 1 file | `runZonedGuarded` → Hive init → `ProviderScope(child: StrengthApp())` |

## ENTRY POINT
`main.dart` boot flow:
1. `runZonedGuarded` — wraps entire app, catches async errors
2. `WidgetsFlutterBinding.ensureInitialized()` — standard Flutter init
3. `FlutterError.onError` — catches framework errors
4. `Hive.openBox('settings')`, `Hive.openBox('sessions')` — persistent storage
5. `ProviderScope(child: StrengthApp())` — Riverpod root

## PROVIDER CONVENTIONS
- **Hand-written providers** — no riverpod_generator codegen
- `ref.onDispose()` pattern for resource cleanup (AudioService, TimerService)
- Singleton providers via `Provider.autoDispose` or `StateNotifierProvider`

## ANTI-PATTERNS
- DO NOT bypass DDD layer boundaries (presentation should not directly import data/)
- DO NOT add Flutter dependencies to domain/ entities
- DO NOT use riverpod_generator — all providers are hand-written
