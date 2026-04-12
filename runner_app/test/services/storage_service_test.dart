import 'package:flutter_test/flutter_test.dart';
import 'package:runner_app/models/workout_session.dart';
import 'package:runner_app/models/workout_type.dart';
import 'package:runner_app/services/storage_service.dart';

void main() {
  group('StorageService', () {
    late StorageService storageService;

    setUpAll(() async {
      // Initialize Hive for testing
      storageService = StorageService();
      await storageService.init(useTestMode: true);
    });

    tearDownAll(() async {
      await storageService.clearAll();
    });

    group('REQ-STORAGE-001: Session Persistence', () {
      test('@test REQ-STORAGE-001 saveSession() persists session', () async {
        final session = WorkoutSession(
          id: 'test-session-001',
          workoutId: 'warmup-001',
          workoutName: '跑前动态热身',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now(),
          currentExerciseIndex: 2,
          completedExercises: 1,
          totalExercises: 12,
          status: WorkoutStatus.paused,
        );

        await storageService.saveSession(session);

        final retrieved = await storageService.getCurrentSession();
        expect(retrieved, isNotNull);
        expect(retrieved!.id, 'test-session-001');
        expect(retrieved.currentExerciseIndex, 2);
        expect(retrieved.status, WorkoutStatus.paused);
      });

      test('@test REQ-STORAGE-001 getCurrentSession() returns null when empty',
          () async {
        await storageService.clearSession();

        final retrieved = await storageService.getCurrentSession();
        expect(retrieved, isNull);
      });

      test('@test REQ-STORAGE-001 clearSession() removes current session',
          () async {
        final session = WorkoutSession(
          id: 'test-session-002',
          workoutId: 'stretch-001',
          workoutName: '跑后拉伸',
          workoutType: WorkoutType.stretch,
          startTime: DateTime.now(),
          totalExercises: 17,
          status: WorkoutStatus.running,
        );

        await storageService.saveSession(session);
        await storageService.clearSession();

        final retrieved = await storageService.getCurrentSession();
        expect(retrieved, isNull);
      });
    });

    group('REQ-STORAGE-002: History Management', () {
      test('@test REQ-STORAGE-002 saveToHistory() stores completed session',
          () async {
        await storageService.clearHistory();
        final session = WorkoutSession(
          id: 'history-001',
          workoutId: 'strength-001',
          workoutName: '力量训练',
          workoutType: WorkoutType.strength,
          startTime: DateTime.now().subtract(const Duration(minutes: 30)),
          endTime: DateTime.now(),
          completedExercises: 18,
          totalExercises: 18,
          totalSeconds: 1800,
          status: WorkoutStatus.completed,
        );

        await storageService.saveToHistory(session);

        final history = await storageService.getHistory();
        expect(history.length, greaterThanOrEqualTo(1));
        expect(history.any((s) => s.id == 'history-001'), true);
      });

      test(
          '@test REQ-STORAGE-002 getHistory() returns list sorted by startTime',
          () async {
        await storageService.clearHistory();
        final session1 = WorkoutSession(
          id: 'history-002',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now().subtract(const Duration(days: 2)),
          endTime:
              DateTime.now().subtract(const Duration(days: 2, minutes: -15)),
          completedExercises: 12,
          totalExercises: 12,
          status: WorkoutStatus.completed,
        );

        final session2 = WorkoutSession(
          id: 'history-003',
          workoutId: 'stretch-001',
          workoutName: '拉伸',
          workoutType: WorkoutType.stretch,
          startTime: DateTime.now().subtract(const Duration(days: 1)),
          endTime:
              DateTime.now().subtract(const Duration(days: 1, minutes: -25)),
          completedExercises: 17,
          totalExercises: 17,
          status: WorkoutStatus.completed,
        );

        await storageService.saveToHistory(session1);
        await storageService.saveToHistory(session2);

        final history = await storageService.getHistory();
        expect(history.length, 2);
        // Most recent first
        expect(history.first.id, 'history-003');
        expect(history.last.id, 'history-002');
      });

      test('@test REQ-STORAGE-002 getHistoryByType() filters by workout type',
          () async {
        await storageService.clearHistory();
        final warmupSession = WorkoutSession(
          id: 'history-004',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now().subtract(const Duration(seconds: 1)),
          endTime: DateTime.now().add(const Duration(minutes: 15)),
          completedExercises: 12,
          totalExercises: 12,
          status: WorkoutStatus.completed,
        );

        final stretchSession = WorkoutSession(
          id: 'history-005',
          workoutId: 'stretch-001',
          workoutName: '拉伸',
          workoutType: WorkoutType.stretch,
          startTime: DateTime.now(),
          endTime: DateTime.now().add(const Duration(minutes: 25)),
          completedExercises: 17,
          totalExercises: 17,
          status: WorkoutStatus.completed,
        );

        await storageService.saveToHistory(warmupSession);
        await storageService.saveToHistory(stretchSession);

        final warmupHistory =
            await storageService.getHistoryByType(WorkoutType.warmup);
        expect(warmupHistory.length, 1);
        expect(warmupHistory.first.workoutType, WorkoutType.warmup);
      });
    });

    group('REQ-STORAGE-003: Statistics', () {
      test('@test REQ-STORAGE-003 getTotalWorkouts() returns count', () async {
        await storageService.clearHistory();
        final session1 = WorkoutSession(
          id: 'stats-001',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now(),
          endTime: DateTime.now().add(const Duration(minutes: 10)),
          completedExercises: 12,
          totalExercises: 12,
          status: WorkoutStatus.completed,
        );

        await storageService.saveToHistory(session1);

        final total = await storageService.getTotalWorkouts();
        expect(total, 1);
      });

      test('@test REQ-STORAGE-003 getTotalMinutes() returns sum of durations',
          () async {
        await storageService.clearHistory();
        final session1 = WorkoutSession(
          id: 'stats-002',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now().subtract(const Duration(seconds: 1)),
          endTime: DateTime.now().add(const Duration(minutes: 15)),
          totalSeconds: 900,
          completedExercises: 12,
          totalExercises: 12,
          status: WorkoutStatus.completed,
        );

        final session2 = WorkoutSession(
          id: 'stats-003',
          workoutId: 'stretch-001',
          workoutName: '拉伸',
          workoutType: WorkoutType.stretch,
          startTime: DateTime.now(),
          endTime: DateTime.now().add(const Duration(minutes: 25)),
          totalSeconds: 1500,
          completedExercises: 17,
          totalExercises: 17,
          status: WorkoutStatus.completed,
        );

        await storageService.saveToHistory(session1);
        await storageService.saveToHistory(session2);

        final totalMinutes = await storageService.getTotalMinutes();
        expect(totalMinutes, 40); // 15 + 25
      });
    });

    group('REQ-STORAGE-004: Recovery', () {
      test(
          '@test REQ-STORAGE-004 hasIncompleteSession() returns true when paused',
          () async {
        await storageService.clearSession();

        final session = WorkoutSession(
          id: 'recovery-001',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now().subtract(const Duration(minutes: 5)),
          currentExerciseIndex: 3,
          remainingSeconds: 30,
          pausedAt: DateTime.now(),
          completedExercises: 2,
          totalExercises: 12,
          status: WorkoutStatus.paused,
        );

        await storageService.saveSession(session);

        final hasIncomplete = await storageService.hasIncompleteSession();
        expect(hasIncomplete, true);
      });

      test(
          '@test REQ-STORAGE-004 hasIncompleteSession() returns false when completed',
          () async {
        await storageService.clearSession();

        final session = WorkoutSession(
          id: 'recovery-002',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now(),
          endTime: DateTime.now().add(const Duration(minutes: 15)),
          completedExercises: 12,
          totalExercises: 12,
          status: WorkoutStatus.completed,
        );

        await storageService.saveSession(session);

        final hasIncomplete = await storageService.hasIncompleteSession();
        expect(hasIncomplete, false);
      });

      test(
          '@test REQ-STORAGE-004 hasIncompleteSession() returns false when empty',
          () async {
        await storageService.clearSession();

        final hasIncomplete = await storageService.hasIncompleteSession();
        expect(hasIncomplete, false);
      });
    });

    group('Edge Cases', () {
      test(
          '@test EC-STORAGE-001 init() called multiple times handles gracefully',
          () async {
        // Should not throw on second init
        await storageService.init(useTestMode: true);
        await storageService.init(useTestMode: true);

        final session = WorkoutSession(
          id: 'ec-001',
          workoutId: 'test',
          workoutName: 'Test',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now(),
          totalExercises: 1,
          status: WorkoutStatus.idle,
        );

        await storageService.saveSession(session);
        final retrieved = await storageService.getCurrentSession();
        expect(retrieved, isNotNull);
      });

      test('@test EC-STORAGE-002 saveSession() overwrites existing session',
          () async {
        final session1 = WorkoutSession(
          id: 'ec-002-a',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now(),
          currentExerciseIndex: 0,
          totalExercises: 12,
          status: WorkoutStatus.running,
        );

        await storageService.saveSession(session1);

        final session2 = WorkoutSession(
          id: 'ec-002-b',
          workoutId: 'stretch-001',
          workoutName: '拉伸',
          workoutType: WorkoutType.stretch,
          startTime: DateTime.now(),
          currentExerciseIndex: 5,
          totalExercises: 17,
          status: WorkoutStatus.paused,
        );

        await storageService.saveSession(session2);

        final retrieved = await storageService.getCurrentSession();
        expect(retrieved!.id, 'ec-002-b');
        expect(retrieved.workoutType, WorkoutType.stretch);
      });
    });
  });
}
