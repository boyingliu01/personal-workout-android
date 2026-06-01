# runner_app/lib/ — DDD Application Core

OVERVIEW: Internal DDD layer structure — domain/entities → core/services → data → presentation. See root AGENTS.md for project-wide context.

WHERE TO LOOK:
| Layer | Location | Notes |
|-------|----------|-------|
| Domain | domain/entities/ | Pure Dart, no Flutter deps — Exercise, Workout, TrainingSession |
| Core services | core/services/ | AudioService, TimerService (see `core/services/AGENTS.md`) |
| Data | data/ | Hive datasources + repositories, JSON serialization |
| Presentation | presentation/ | Providers, screens, models (see `presentation/screens/AGENTS.md`) |
| Entry point | main.dart | `runZonedGuarded` → Hive init → `ProviderScope(child: StrengthApp())` |
| Constants | core/constants/exercise_data.dart | Hardcoded exercise catalog |

NOTES:
- No codegen (no riverpod_generator) — all providers hand-written
- `runApp` wrapped in `runZonedGuarded` for async error catching
