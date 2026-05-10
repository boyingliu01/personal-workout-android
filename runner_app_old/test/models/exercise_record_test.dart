import 'package:flutter_test/flutter_test.dart';
import 'package:runner_app/models/exercise_record.dart';

void main() {
  group('ExerciseRecord', () {
    group('REQ-RECORD-001: Constructor', () {
      test('@test REQ-RECORD-001 constructor creates record with all fields',
          () {
        final startTime = DateTime.parse('2024-01-15T10:30:00.000');
        final endTime = DateTime.parse('2024-01-15T10:30:45.000');

        final record = ExerciseRecord(
          exerciseId: 'ex-001',
          exerciseName: '开合跳',
          plannedDuration: 45,
          actualDuration: 45,
          skipped: false,
          completed: true,
          startTime: startTime,
          endTime: endTime,
        );

        expect(record.exerciseId, 'ex-001');
        expect(record.exerciseName, '开合跳');
        expect(record.plannedDuration, 45);
        expect(record.actualDuration, 45);
        expect(record.skipped, false);
        expect(record.completed, true);
        expect(record.startTime, startTime);
        expect(record.endTime, endTime);
      });

      test('@test REQ-RECORD-001 constructor uses default for skipped', () {
        final record = ExerciseRecord(
          exerciseId: 'ex-002',
          exerciseName: '深蹲',
          plannedDuration: 60,
          actualDuration: 60,
          startTime: DateTime.now(),
        );

        expect(record.skipped, false); // default
      });

      test('@test REQ-RECORD-001 constructor uses default for completed', () {
        final record = ExerciseRecord(
          exerciseId: 'ex-003',
          exerciseName: '俯卧撑',
          plannedDuration: 45,
          actualDuration: 30,
          startTime: DateTime.now(),
        );

        expect(record.completed, false); // default
      });

      test('@test REQ-RECORD-001 constructor allows null endTime', () {
        final record = ExerciseRecord(
          exerciseId: 'ex-004',
          exerciseName: '平板支撑',
          plannedDuration: 30,
          actualDuration: 25,
          startTime: DateTime.now(),
        );

        expect(record.endTime, isNull);
      });
    });

    group('REQ-RECORD-002: JSON Serialization', () {
      test('@test REQ-RECORD-002 fromJson() parses complete JSON', () {
        final json = {
          'exerciseId': 'ex-001',
          'exerciseName': '开合跳',
          'plannedDuration': 45,
          'actualDuration': 45,
          'skipped': false,
          'completed': true,
          'startTime': '2024-01-15T10:30:00.000',
          'endTime': '2024-01-15T10:30:45.000',
        };

        final record = ExerciseRecord.fromJson(json);

        expect(record.exerciseId, 'ex-001');
        expect(record.exerciseName, '开合跳');
        expect(record.plannedDuration, 45);
        expect(record.actualDuration, 45);
        expect(record.skipped, false);
        expect(record.completed, true);
        expect(record.startTime, DateTime.parse('2024-01-15T10:30:00.000'));
        expect(record.endTime, DateTime.parse('2024-01-15T10:30:45.000'));
      });

      test('@test REQ-RECORD-002 fromJson() handles null endTime', () {
        final json = {
          'exerciseId': 'ex-002',
          'exerciseName': '深蹲',
          'plannedDuration': 60,
          'actualDuration': 55,
          'startTime': '2024-01-15T10:35:00.000',
        };

        final record = ExerciseRecord.fromJson(json);

        expect(record.endTime, isNull);
      });

      test('@test REQ-RECORD-002 fromJson() uses default for null skipped', () {
        final json = {
          'exerciseId': 'ex-003',
          'exerciseName': '俯卧撑',
          'plannedDuration': 45,
          'actualDuration': 45,
          'startTime': '2024-01-15T10:40:00.000',
        };

        final record = ExerciseRecord.fromJson(json);

        expect(record.skipped, false); // default
      });

      test('@test REQ-RECORD-002 fromJson() uses default for null completed',
          () {
        final json = {
          'exerciseId': 'ex-004',
          'exerciseName': '平板支撑',
          'plannedDuration': 30,
          'actualDuration': 28,
          'startTime': '2024-01-15T10:45:00.000',
        };

        final record = ExerciseRecord.fromJson(json);

        expect(record.completed, false); // default
      });

      test('@test REQ-RECORD-002 toJson() serializes correctly', () {
        final startTime = DateTime.parse('2024-01-15T10:30:00.000');
        final endTime = DateTime.parse('2024-01-15T10:30:45.000');

        final record = ExerciseRecord(
          exerciseId: 'ex-005',
          exerciseName: '开合跳',
          plannedDuration: 45,
          actualDuration: 45,
          skipped: false,
          completed: true,
          startTime: startTime,
          endTime: endTime,
        );

        final json = record.toJson();

        expect(json['exerciseId'], 'ex-005');
        expect(json['exerciseName'], '开合跳');
        expect(json['plannedDuration'], 45);
        expect(json['actualDuration'], 45);
        expect(json['skipped'], false);
        expect(json['completed'], true);
        expect(json['startTime'], startTime.toIso8601String());
        expect(json['endTime'], endTime.toIso8601String());
      });

      test('@test REQ-RECORD-002 toJson() handles null endTime', () {
        final startTime = DateTime.parse('2024-01-15T10:30:00.000');

        final record = ExerciseRecord(
          exerciseId: 'ex-006',
          exerciseName: '深蹲',
          plannedDuration: 60,
          actualDuration: 55,
          startTime: startTime,
        );

        final json = record.toJson();

        expect(json['endTime'], isNull);
      });
    });

    group('REQ-RECORD-003: copyWith', () {
      test('@test REQ-RECORD-003 copyWith() modifies exerciseId', () {
        final record = ExerciseRecord(
          exerciseId: 'ex-007',
          exerciseName: '开合跳',
          plannedDuration: 45,
          actualDuration: 45,
          startTime: DateTime.now(),
        );

        final modified = record.copyWith(exerciseId: 'ex-007-modified');

        expect(modified.exerciseId, 'ex-007-modified');
        expect(modified.exerciseName, record.exerciseName);
      });

      test('@test REQ-RECORD-003 copyWith() modifies actualDuration', () {
        final record = ExerciseRecord(
          exerciseId: 'ex-008',
          exerciseName: '深蹲',
          plannedDuration: 60,
          actualDuration: 50,
          startTime: DateTime.now(),
        );

        final modified = record.copyWith(actualDuration: 55);

        expect(modified.actualDuration, 55);
        expect(modified.plannedDuration, record.plannedDuration);
      });

      test('@test REQ-RECORD-003 copyWith() modifies skipped', () {
        final record = ExerciseRecord(
          exerciseId: 'ex-009',
          exerciseName: '俯卧撑',
          plannedDuration: 45,
          actualDuration: 45,
          startTime: DateTime.now(),
          skipped: false,
        );

        final modified = record.copyWith(skipped: true);

        expect(modified.skipped, true);
      });

      test('@test REQ-RECORD-003 copyWith() modifies completed', () {
        final record = ExerciseRecord(
          exerciseId: 'ex-010',
          exerciseName: '平板支撑',
          plannedDuration: 30,
          actualDuration: 30,
          startTime: DateTime.now(),
          completed: false,
        );

        final modified = record.copyWith(completed: true);

        expect(modified.completed, true);
      });

      test('@test REQ-RECORD-003 copyWith() modifies endTime', () {
        final startTime = DateTime.parse('2024-01-15T10:30:00.000');
        final endTime = DateTime.parse('2024-01-15T10:30:45.000');

        final record = ExerciseRecord(
          exerciseId: 'ex-011',
          exerciseName: '开合跳',
          plannedDuration: 45,
          actualDuration: 45,
          startTime: startTime,
        );

        final modified = record.copyWith(endTime: endTime);

        expect(modified.endTime, endTime);
      });

      test('@test REQ-RECORD-003 copyWith() modifies all fields', () {
        final startTime = DateTime.parse('2024-01-15T10:30:00.000');
        final endTime = DateTime.parse('2024-01-15T10:30:45.000');

        final record = ExerciseRecord(
          exerciseId: 'ex-012',
          exerciseName: '原动作',
          plannedDuration: 30,
          actualDuration: 30,
          skipped: false,
          completed: false,
          startTime: startTime,
        );

        final modified = record.copyWith(
          exerciseId: 'ex-012-new',
          exerciseName: '新动作',
          plannedDuration: 45,
          actualDuration: 45,
          skipped: true,
          completed: true,
          startTime: endTime,
          endTime: startTime,
        );

        expect(modified.exerciseId, 'ex-012-new');
        expect(modified.exerciseName, '新动作');
        expect(modified.plannedDuration, 45);
        expect(modified.actualDuration, 45);
        expect(modified.skipped, true);
        expect(modified.completed, true);
        expect(modified.startTime, endTime);
        expect(modified.endTime, startTime);
      });
    });
  });
}
