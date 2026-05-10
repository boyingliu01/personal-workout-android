import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:runner_app/models/exercise.dart';
import 'package:runner_app/models/workout.dart';
import 'package:runner_app/models/workout_session.dart';
import 'package:runner_app/models/workout_type.dart';
import 'package:runner_app/providers/session_provider.dart';
import 'package:runner_app/providers/workout_provider.dart';
import 'package:runner_app/services/storage_service.dart';

void main() {
  group('SessionProvider', () {
    late ProviderContainer container;
    late StorageService storageService;
    late Workout testWorkout;

    setUpAll(() async {
      storageService = StorageService();
      await storageService.init(useTestMode: true);

      testWorkout = Workout(
        id: 'warmup-001',
        name: '跑前动态热身',
        description: '10-15分钟热身',
        type: WorkoutType.warmup,
        estimatedMinutes: 15,
        exercises: [
          Exercise(
            id: 'ex-001',
            name: '开合跳',
            description: '全身激活',
            durationSeconds: 45,
          ),
          Exercise(
            id: 'ex-002',
            name: '高抬腿',
            description: '髋屈肌激活',
            durationSeconds: 45,
          ),
          Exercise(
            id: 'ex-003',
            name: '后踢腿',
            description: '股四头肌',
            durationSeconds: 45,
          ),
        ],
      );
    });

    setUp(() async {
      await storageService.clearSession();
      await storageService.clearHistory();
      container = ProviderContainer(
        overrides: [
          storageServiceProvider.overrideWithValue(storageService),
        ],
      );
    });

    tearDown(() {
      container.dispose();
    });

    tearDownAll(() async {
      await storageService.clearAll();
    });

    group('REQ-SESSION-001: Session State Management', () {
      test('@test REQ-SESSION-001 sessionState starts with noSession', () {
        final state = container.read(sessionStateProvider);
        expect(state.status, SessionStatus.noSession);
        expect(state.currentSession, isNull);
      });

      test('@test REQ-SESSION-001 startSession() changes status to running',
          () async {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        await container.read(sessionStateProvider.notifier).startSession();

        final state = container.read(sessionStateProvider);
        expect(state.status, SessionStatus.running);
        expect(state.currentSession, isNotNull);
      });

      test('@test REQ-SESSION-001 session is persisted to storage', () async {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        await container.read(sessionStateProvider.notifier).startSession();

        final storedSession = await storageService.getCurrentSession();
        expect(storedSession, isNotNull);
        expect(storedSession!.workoutId, 'warmup-001');
      });
    });

    group('REQ-SESSION-002: Pause/Resume', () {
      test('@test REQ-SESSION-002 pauseSession() changes status to paused',
          () async {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        await container.read(sessionStateProvider.notifier).startSession();
        await container.read(sessionStateProvider.notifier).pauseSession();

        final state = container.read(sessionStateProvider);
        expect(state.status, SessionStatus.paused);
      });

      test('@test REQ-SESSION-002 pauseSession() persists paused state',
          () async {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        await container.read(sessionStateProvider.notifier).startSession();
        await container.read(sessionStateProvider.notifier).pauseSession();

        final storedSession = await storageService.getCurrentSession();
        expect(storedSession!.status, WorkoutStatus.paused);
        expect(storedSession.pausedAt, isNotNull);
      });

      test('@test REQ-SESSION-002 resumeSession() changes status to running',
          () async {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        await container.read(sessionStateProvider.notifier).startSession();
        await container.read(sessionStateProvider.notifier).pauseSession();
        await container.read(sessionStateProvider.notifier).resumeSession();

        final state = container.read(sessionStateProvider);
        expect(state.status, SessionStatus.running);
      });

      test('@test REQ-SESSION-002 resumeSession() clears pausedAt', () async {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        await container.read(sessionStateProvider.notifier).startSession();
        await container.read(sessionStateProvider.notifier).pauseSession();
        await container.read(sessionStateProvider.notifier).resumeSession();

        final storedSession = await storageService.getCurrentSession();
        expect(storedSession!.pausedAt, isNull);
      });
    });

    group('REQ-SESSION-003: Complete Session', () {
      test(
          '@test REQ-SESSION-003 completeSession() changes status to completed',
          () async {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        await container.read(sessionStateProvider.notifier).startSession();
        await container.read(sessionStateProvider.notifier).completeSession();

        final state = container.read(sessionStateProvider);
        expect(state.status, SessionStatus.completed);
      });

      test('@test REQ-SESSION-003 completeSession() saves to history',
          () async {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        await container.read(sessionStateProvider.notifier).startSession();
        await container.read(sessionStateProvider.notifier).completeSession();

        final history = await storageService.getHistory();
        expect(history.length, 1);
        expect(history.first.workoutId, 'warmup-001');
      });

      test('@test REQ-SESSION-003 completeSession() clears current session',
          () async {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        await container.read(sessionStateProvider.notifier).startSession();
        await container.read(sessionStateProvider.notifier).completeSession();

        final storedSession = await storageService.getCurrentSession();
        expect(storedSession, isNull);
      });
    });

    group('REQ-SESSION-004: Recovery', () {
      test('@test REQ-SESSION-004 checkForRecovery() returns session if paused',
          () async {
        // Simulate previous paused session
        final pausedSession = WorkoutSession(
          id: 'recovery-test',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now().subtract(const Duration(minutes: 5)),
          currentExerciseIndex: 1,
          remainingSeconds: 30,
          pausedAt: DateTime.now(),
          completedExercises: 0,
          totalExercises: 3,
          status: WorkoutStatus.paused,
        );
        await storageService.saveSession(pausedSession);

        final recoverySession = await container
            .read(sessionStateProvider.notifier)
            .checkForRecovery();
        expect(recoverySession, isNotNull);
        expect(recoverySession!.status, WorkoutStatus.paused);
      });

      test(
          '@test REQ-SESSION-004 checkForRecovery() returns null if no session',
          () async {
        final recoverySession = await container
            .read(sessionStateProvider.notifier)
            .checkForRecovery();
        expect(recoverySession, isNull);
      });

      test('@test REQ-SESSION-004 recoverSession() restores paused state',
          () async {
        final pausedSession = WorkoutSession(
          id: 'recovery-test-2',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now().subtract(const Duration(minutes: 5)),
          currentExerciseIndex: 2,
          remainingSeconds: 15,
          pausedAt: DateTime.now(),
          completedExercises: 1,
          totalExercises: 3,
          status: WorkoutStatus.paused,
        );
        await storageService.saveSession(pausedSession);

        await container.read(sessionStateProvider.notifier).recoverSession();

        final state = container.read(sessionStateProvider);
        expect(state.status, SessionStatus.paused);
        expect(state.currentSession!.currentExerciseIndex, 2);
      });
    });

    group('REQ-SESSION-005: Reset', () {
      test('@test REQ-SESSION-005 resetSession() clears state', () async {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        await container.read(sessionStateProvider.notifier).startSession();
        await container.read(sessionStateProvider.notifier).resetSession();

        final state = container.read(sessionStateProvider);
        expect(state.status, SessionStatus.noSession);
        expect(state.currentSession, isNull);
      });

      test('@test REQ-SESSION-005 resetSession() clears storage', () async {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        await container.read(sessionStateProvider.notifier).startSession();
        await container.read(sessionStateProvider.notifier).resetSession();

        final storedSession = await storageService.getCurrentSession();
        expect(storedSession, isNull);
      });
    });

    group('Edge Cases', () {
      test('@test EC-SESSION-001 pauseSession() when no session does nothing',
          () async {
        await container.read(sessionStateProvider.notifier).pauseSession();

        final state = container.read(sessionStateProvider);
        expect(state.status, SessionStatus.noSession);
      });

      test('@test EC-SESSION-002 resumeSession() when not paused does nothing',
          () async {
        container.read(workoutProvider.notifier).startWorkout(testWorkout);
        await container.read(sessionStateProvider.notifier).startSession();
        // Try to resume without pausing
        await container.read(sessionStateProvider.notifier).resumeSession();

        final state = container.read(sessionStateProvider);
        expect(state.status, SessionStatus.running);
      });

      test(
          '@test EC-SESSION-003 completeSession() when no session does nothing',
          () async {
        await container.read(sessionStateProvider.notifier).completeSession();

        final history = await storageService.getHistory();
        expect(history.length, 0);
      });
    });
  });
}
