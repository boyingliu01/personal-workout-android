import 'package:flutter_test/flutter_test.dart';
import 'package:runner_app/models/workout_session.dart';
import 'package:runner_app/models/workout_type.dart';
import 'package:runner_app/models/exercise_record.dart';

void main() {
  group('WorkoutSession', () {
    group('REQ-SESSION-001: Getters', () {
      test('@test REQ-SESSION-001 isInProgress returns true for running status',
          () {
        final session = WorkoutSession(
          id: 'test-001',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now(),
          totalExercises: 12,
          status: WorkoutStatus.running,
        );

        expect(session.isInProgress, true);
      });

      test(
          '@test REQ-SESSION-001 isInProgress returns false for other statuses',
          () {
        final session = WorkoutSession(
          id: 'test-002',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now(),
          totalExercises: 12,
          status: WorkoutStatus.paused,
        );

        expect(session.isInProgress, false);
      });

      test('@test REQ-SESSION-001 isPaused returns true for paused status', () {
        final session = WorkoutSession(
          id: 'test-003',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now(),
          totalExercises: 12,
          status: WorkoutStatus.paused,
        );

        expect(session.isPaused, true);
      });

      test('@test REQ-SESSION-001 isPaused returns false for other statuses',
          () {
        final session = WorkoutSession(
          id: 'test-004',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now(),
          totalExercises: 12,
          status: WorkoutStatus.running,
        );

        expect(session.isPaused, false);
      });

      test(
          '@test REQ-SESSION-001 isCompleted returns true for completed status',
          () {
        final session = WorkoutSession(
          id: 'test-005',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now(),
          endTime: DateTime.now().add(const Duration(minutes: 15)),
          completedExercises: 12,
          totalExercises: 12,
          status: WorkoutStatus.completed,
        );

        expect(session.isCompleted, true);
      });

      test('@test REQ-SESSION-001 isCompleted returns false for other statuses',
          () {
        final session = WorkoutSession(
          id: 'test-006',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now(),
          totalExercises: 12,
          status: WorkoutStatus.running,
        );

        expect(session.isCompleted, false);
      });

      test('@test REQ-SESSION-001 progressPercentage calculates correctly', () {
        final session = WorkoutSession(
          id: 'test-007',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now(),
          completedExercises: 6,
          totalExercises: 12,
          status: WorkoutStatus.running,
        );

        expect(session.progressPercentage, 50.0);
      });

      test(
          '@test REQ-SESSION-001 progressPercentage returns 0 when totalExercises is 0',
          () {
        final session = WorkoutSession(
          id: 'test-008',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now(),
          completedExercises: 0,
          totalExercises: 0,
          status: WorkoutStatus.idle,
        );

        expect(session.progressPercentage, 0);
      });
    });

    group('REQ-SESSION-002: JSON Serialization', () {
      test('@test REQ-SESSION-002 fromJson() parses complete JSON', () {
        final json = {
          'id': 'session-001',
          'workoutId': 'warmup-001',
          'workoutName': '跑前动态热身',
          'workoutType': 'warmup',
          'startTime': '2024-01-15T10:30:00.000',
          'endTime': '2024-01-15T10:45:00.000',
          'pausedAt': '2024-01-15T10:35:00.000',
          'currentExerciseIndex': 3,
          'remainingSeconds': 30,
          'completedExercises': 2,
          'totalExercises': 12,
          'totalSeconds': 900,
          'status': 'running',
          'exerciseRecords': [
            {
              'exerciseId': 'ex-001',
              'exerciseName': '开合跳',
              'plannedDuration': 45,
              'actualDuration': 45,
              'skipped': false,
              'completed': true,
              'startTime': '2024-01-15T10:30:00.000',
              'endTime': '2024-01-15T10:30:45.000',
            },
          ],
        };

        final session = WorkoutSession.fromJson(json);

        expect(session.id, 'session-001');
        expect(session.workoutId, 'warmup-001');
        expect(session.workoutName, '跑前动态热身');
        expect(session.workoutType, WorkoutType.warmup);
        expect(session.startTime, DateTime.parse('2024-01-15T10:30:00.000'));
        expect(session.endTime, DateTime.parse('2024-01-15T10:45:00.000'));
        expect(session.pausedAt, DateTime.parse('2024-01-15T10:35:00.000'));
        expect(session.currentExerciseIndex, 3);
        expect(session.remainingSeconds, 30);
        expect(session.completedExercises, 2);
        expect(session.totalExercises, 12);
        expect(session.totalSeconds, 900);
        expect(session.status, WorkoutStatus.running);
        expect(session.exerciseRecords.length, 1);
      });

      test('@test REQ-SESSION-002 fromJson() handles null endTime', () {
        final json = {
          'id': 'session-002',
          'workoutId': 'warmup-001',
          'workoutName': '热身',
          'workoutType': 'warmup',
          'startTime': '2024-01-15T10:30:00.000',
          'totalExercises': 12,
          'status': 'running',
        };

        final session = WorkoutSession.fromJson(json);

        expect(session.endTime, isNull);
      });

      test('@test REQ-SESSION-002 fromJson() handles null pausedAt', () {
        final json = {
          'id': 'session-003',
          'workoutId': 'warmup-001',
          'workoutName': '热身',
          'workoutType': 'warmup',
          'startTime': '2024-01-15T10:30:00.000',
          'totalExercises': 12,
          'status': 'running',
        };

        final session = WorkoutSession.fromJson(json);

        expect(session.pausedAt, isNull);
      });

      test(
          '@test REQ-SESSION-002 fromJson() uses orElse for invalid workoutType',
          () {
        final json = {
          'id': 'session-004',
          'workoutId': 'warmup-001',
          'workoutName': '热身',
          'workoutType': 'invalid_type',
          'startTime': '2024-01-15T10:30:00.000',
          'totalExercises': 12,
          'status': 'running',
        };

        final session = WorkoutSession.fromJson(json);

        expect(session.workoutType, WorkoutType.warmup); // orElse default
      });

      test('@test REQ-SESSION-002 fromJson() uses orElse for invalid status',
          () {
        final json = {
          'id': 'session-005',
          'workoutId': 'warmup-001',
          'workoutName': '热身',
          'workoutType': 'warmup',
          'startTime': '2024-01-15T10:30:00.000',
          'totalExercises': 12,
          'status': 'invalid_status',
        };

        final session = WorkoutSession.fromJson(json);

        expect(session.status, WorkoutStatus.idle); // orElse default
      });

      test('@test REQ-SESSION-002 fromJson() handles null exerciseRecords', () {
        final json = {
          'id': 'session-006',
          'workoutId': 'warmup-001',
          'workoutName': '热身',
          'workoutType': 'warmup',
          'startTime': '2024-01-15T10:30:00.000',
          'totalExercises': 12,
          'status': 'running',
        };

        final session = WorkoutSession.fromJson(json);

        expect(session.exerciseRecords, isEmpty);
      });

      test('@test REQ-SESSION-002 toJson() serializes correctly', () {
        final startTime = DateTime.parse('2024-01-15T10:30:00.000');
        final endTime = DateTime.parse('2024-01-15T10:45:00.000');
        final pausedAt = DateTime.parse('2024-01-15T10:35:00.000');

        final session = WorkoutSession(
          id: 'session-007',
          workoutId: 'warmup-001',
          workoutName: '跑前动态热身',
          workoutType: WorkoutType.warmup,
          startTime: startTime,
          endTime: endTime,
          pausedAt: pausedAt,
          currentExerciseIndex: 3,
          remainingSeconds: 30,
          completedExercises: 2,
          totalExercises: 12,
          totalSeconds: 900,
          status: WorkoutStatus.running,
          exerciseRecords: const [],
        );

        final json = session.toJson();

        expect(json['id'], 'session-007');
        expect(json['workoutId'], 'warmup-001');
        expect(json['workoutName'], '跑前动态热身');
        expect(json['workoutType'], 'warmup');
        expect(json['startTime'], startTime.toIso8601String());
        expect(json['endTime'], endTime.toIso8601String());
        expect(json['pausedAt'], pausedAt.toIso8601String());
        expect(json['currentExerciseIndex'], 3);
        expect(json['remainingSeconds'], 30);
        expect(json['completedExercises'], 2);
        expect(json['totalExercises'], 12);
        expect(json['totalSeconds'], 900);
        expect(json['status'], 'running');
        expect(json['exerciseRecords'], isEmpty);
      });

      test('@test REQ-SESSION-002 toJson() handles null endTime', () {
        final startTime = DateTime.parse('2024-01-15T10:30:00.000');

        final session = WorkoutSession(
          id: 'session-008',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: startTime,
          totalExercises: 12,
          status: WorkoutStatus.running,
        );

        final json = session.toJson();

        expect(json['endTime'], isNull);
      });

      test('@test REQ-SESSION-002 toJson() handles null pausedAt', () {
        final startTime = DateTime.parse('2024-01-15T10:30:00.000');

        final session = WorkoutSession(
          id: 'session-009',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: startTime,
          totalExercises: 12,
          status: WorkoutStatus.running,
        );

        final json = session.toJson();

        expect(json['pausedAt'], isNull);
      });
    });

    group('REQ-SESSION-003: copyWith', () {
      test('@test REQ-SESSION-003 copyWith() modifies id', () {
        final session = WorkoutSession(
          id: 'session-010',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now(),
          totalExercises: 12,
          status: WorkoutStatus.running,
        );

        final modified = session.copyWith(id: 'session-010-modified');

        expect(modified.id, 'session-010-modified');
        expect(modified.workoutId, session.workoutId);
      });

      test('@test REQ-SESSION-003 copyWith() modifies status', () {
        final session = WorkoutSession(
          id: 'session-011',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now(),
          totalExercises: 12,
          status: WorkoutStatus.running,
        );

        final modified = session.copyWith(status: WorkoutStatus.paused);

        expect(modified.status, WorkoutStatus.paused);
        expect(modified.isPaused, true);
      });

      test('@test REQ-SESSION-003 copyWith() clears endTime', () {
        final session = WorkoutSession(
          id: 'session-012',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now(),
          endTime: DateTime.now().add(const Duration(minutes: 15)),
          totalExercises: 12,
          status: WorkoutStatus.completed,
        );

        final modified = session.copyWith(clearEndTime: true);

        expect(modified.endTime, isNull);
      });

      test('@test REQ-SESSION-003 copyWith() clears pausedAt', () {
        final session = WorkoutSession(
          id: 'session-013',
          workoutId: 'warmup-001',
          workoutName: '热身',
          workoutType: WorkoutType.warmup,
          startTime: DateTime.now(),
          pausedAt: DateTime.now(),
          totalExercises: 12,
          status: WorkoutStatus.paused,
        );

        final modified = session.copyWith(clearPausedAt: true);

        expect(modified.pausedAt, isNull);
      });
    });
  });
}
