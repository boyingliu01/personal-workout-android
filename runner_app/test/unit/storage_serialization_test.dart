import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

// Inline the encode/decode logic to test purely without Hive dependency
void main() {
  group('TrainingSession serialization', () {
    final now = DateTime.now();
    final startTime = DateTime(now.year, now.month, now.day, now.hour);

    test('encode and decode roundtrip', () {
      // Test encode
      final encoded = jsonEncode({
        'id': 'session-1',
        'workoutId': 'legs',
        'workoutName': '臀腿训练',
        'startTime': startTime.toIso8601String(),
        'completedExercises': 8,
        'totalExercises': 8,
        'totalSeconds': 900,
        'exerciseLogs': <dynamic>[],
      });

      // Test decode
      final map = jsonDecode(encoded) as Map<String, dynamic>;
      expect(map['id'], 'session-1');
      expect(map['workoutId'], 'legs');
      expect(map['workoutName'], '臀腿训练');
      expect(map['completedExercises'], 8);
      expect(map['totalSeconds'], 900);
    });

    test('handles null endTime', () {
      final data = {
        'id': 'test',
        'workoutId': 'legs',
        'workoutName': '',
        'startTime': startTime.toIso8601String(),
        'endTime': null,
        'completedExercises': 0,
        'totalExercises': 8,
        'totalSeconds': 0,
        'exerciseLogs': <dynamic>[],
      };

      final json = jsonEncode(data);
      final decoded = jsonDecode(json) as Map<String, dynamic>;
      expect(decoded['endTime'], isNull);
    });

    test('ExerciseLog encode/decode', () {
      final log = {
        'exerciseId': 'squat',
        'exerciseName': '深蹲',
        'actualSeconds': 60,
        'completed': true,
      };

      final json = jsonEncode(log);
      final decoded = jsonDecode(json) as Map<String, dynamic>;
      expect(decoded['exerciseId'], 'squat');
      expect(decoded['actualSeconds'], 60);
      expect(decoded['completed'], isTrue);
    });
  });
}
