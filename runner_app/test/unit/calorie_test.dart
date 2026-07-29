import 'package:flutter_test/flutter_test.dart';
import 'package:strength_app/domain/entities/training_session.dart';

/// Replicate the calorie estimation logic from WorkoutCompleteScreen
/// since _estimateCalories is private to the widget.
/// Strength training: ~5-7 calories per minute.
int estimateCalories(TrainingSession session) {
  final minutes = session.totalSeconds / 60;
  // Different workout types have different intensity
  final caloriesPerMinute = switch (session.workoutId) {
    'warmup' => 4.0,
    'stretch' => 3.0,
    'legs' => 7.0,
    'core' => 6.0,
    'upper_body' => 5.5,
    'full_body' => 8.0,
    _ => 6.0,
  };
  return (minutes * caloriesPerMinute).round();
}

TrainingSession _makeSession(String workoutId, int totalSeconds) {
  return TrainingSession(
    id: 'test',
    workoutId: workoutId,
    workoutName: '测试',
    startTime: DateTime(2026, 7, 25),
    completedExercises: 1,
    totalExercises: 1,
    totalSeconds: totalSeconds,
    exerciseLogs: const [],
  );
}

void main() {
  group('estimateCalories', () {
    test('different workout types produce different calorie estimates', () {
      const duration = 600; // 10 minutes

      final warmup = estimateCalories(_makeSession('warmup', duration));
      final stretch = estimateCalories(_makeSession('stretch', duration));
      final legs = estimateCalories(_makeSession('legs', duration));
      final core = estimateCalories(_makeSession('core', duration));
      final upperBody = estimateCalories(_makeSession('upper_body', duration));
      final fullBody = estimateCalories(_makeSession('full_body', duration));

      // Each type should produce a different value
      expect(warmup, 40); // 10 * 4.0
      expect(stretch, 30); // 10 * 3.0
      expect(legs, 70); // 10 * 7.0
      expect(core, 60); // 10 * 6.0
      expect(upperBody, 55); // 10 * 5.5
      expect(fullBody, 80); // 10 * 8.0

      // Verify they are all different from each other
      final all = [warmup, stretch, legs, core, upperBody, fullBody];
      expect(all.toSet().length, all.length);
    });

    test('longer workouts produce more calories', () {
      final short = estimateCalories(_makeSession('legs', 300)); // 5 min
      final medium = estimateCalories(_makeSession('legs', 600)); // 10 min
      final long = estimateCalories(_makeSession('legs', 1800)); // 30 min

      expect(short, lessThan(medium));
      expect(medium, lessThan(long));
    });

    test('zero duration produces zero calories', () {
      expect(estimateCalories(_makeSession('legs', 0)), 0);
      expect(estimateCalories(_makeSession('warmup', 0)), 0);
      expect(estimateCalories(_makeSession('full_body', 0)), 0);
    });

    test('unknown workout type uses default rate (6.0)', () {
      final result = estimateCalories(_makeSession('unknown_type', 600));
      expect(result, 60); // 10 * 6.0
    });

    test('calorie values are rounded correctly', () {
      // 7 minutes * 5.5 cal/min = 38.5 → rounds to 39
      final result = estimateCalories(_makeSession('upper_body', 420));
      expect(result, 39);
    });
  });
}
