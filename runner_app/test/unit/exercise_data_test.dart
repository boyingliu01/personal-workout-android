import 'package:flutter_test/flutter_test.dart';
import 'package:strength_app/core/constants/exercise_data.dart';
import 'package:strength_app/domain/entities/exercise.dart';

void main() {
  group('ExerciseData', () {
    test('legsWorkout has 8 exercises', () {
      expect(ExerciseData.legsWorkout.exercises.length, 8);
    });

    test('legsWorkout id is legs', () {
      expect(ExerciseData.legsWorkout.id, 'legs');
      expect(ExerciseData.legsWorkout.name, '臀腿训练');
    });

    test('all exercises have non-empty fields', () {
      for (final exercise in ExerciseData.legsWorkout.exercises) {
        expect(exercise.id.isNotEmpty, isTrue);
        expect(exercise.name.isNotEmpty, isTrue);
        expect(exercise.description.isNotEmpty, isTrue);
        expect(exercise.durationSeconds, greaterThan(0));
        expect(exercise.targetMuscles.isNotEmpty, isTrue);
      }
    });

    test('total exercise count', () {
      expect(ExerciseData.allWorkouts.length, 1);
    });

    test('each exercise is category legs', () {
      for (final exercise in ExerciseData.legsWorkout.exercises) {
        expect(exercise.category, ExerciseCategory.legs);
      }
    });
  });
}
