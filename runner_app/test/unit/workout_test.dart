import 'package:flutter_test/flutter_test.dart';
import 'package:strength_app/domain/entities/exercise.dart';
import 'package:strength_app/domain/entities/workout.dart';

const _exercise = Exercise(
  id: 'squat',
  name: '深蹲',
  description: '',
  imagePath: '',
  durationSeconds: 60,
  restSeconds: 5,
  targetMuscles: [],
  difficulty: Difficulty.beginner,
  category: ExerciseCategory.legs,
);

const _workout = Workout(
  id: 'legs',
  name: '臀腿训练',
  description: '针对跑者的核心力量训练',
  estimatedMinutes: 15,
  exercises: [],
);

void main() {
  group('Workout', () {
    test('stores all fields correctly', () {
      expect(_workout.id, 'legs');
      expect(_workout.name, '臀腿训练');
      expect(_workout.description, '针对跑者的核心力量训练');
      expect(_workout.estimatedMinutes, 15);
      expect(_workout.exercises, isEmpty);
    });

    test('calculates total duration from exercises', () {
      const w = Workout(
        id: 'test',
        name: 'test',
        description: '',
        estimatedMinutes: 0,
        exercises: [_exercise, _exercise],
      );
      expect(w.totalDurationSeconds, 125); // 60 + 5 + 60 (no rest after last)
    });
  });
}
