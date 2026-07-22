import 'package:flutter_test/flutter_test.dart';
import 'package:strength_app/domain/entities/training_session.dart';

void main() {
  group('ExerciseLog', () {
    const log = ExerciseLog(
      exerciseId: 'squat',
      exerciseName: '深蹲',
      actualSeconds: 60,
      completed: true,
    );

    test('stores all fields', () {
      expect(log.exerciseId, 'squat');
      expect(log.exerciseName, '深蹲');
      expect(log.actualSeconds, 60);
      expect(log.completed, isTrue);
    });

    test('has copyWith', () {
      const updated = ExerciseLog(
        exerciseId: 'squat',
        exerciseName: '深蹲',
        actualSeconds: 60,
        completed: false,
      );

      final skipped = updated.copyWith(completed: false, actualSeconds: 0);
      expect(skipped.completed, isFalse);
      expect(skipped.actualSeconds, 0);
    });
  });

  group('TrainingSession', () {
    final now = DateTime.now();
    final session = TrainingSession(
      id: 'session-1',
      workoutId: 'legs',
      workoutName: '臀腿训练',
      startTime: now,
      endTime: now.add(const Duration(minutes: 15)),
      completedExercises: 8,
      totalExercises: 8,
      totalSeconds: 900,
      exerciseLogs: [],
    );

    test('stores all fields', () {
      expect(session.id, 'session-1');
      expect(session.workoutId, 'legs');
      expect(session.workoutName, '臀腿训练');
      expect(session.completedExercises, 8);
      expect(session.totalExercises, 8);
      expect(session.totalSeconds, 900);
    });

    test('calculates completion percentage', () {
      expect(session.completionRate, 1.0);

      final partial = TrainingSession(
        id: 'partial',
        workoutId: 'legs',
        workoutName: '',
        startTime: now,
        completedExercises: 4,
        totalExercises: 8,
        totalSeconds: 450,
        exerciseLogs: [],
      );
      expect(partial.completionRate, 0.5);
    });
  });
}
