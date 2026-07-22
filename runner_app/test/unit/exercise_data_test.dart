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

    test('allWorkouts contains legs and core', () {
      expect(ExerciseData.allWorkouts.length, 2);
      expect(ExerciseData.allWorkouts[0].id, 'legs');
      expect(ExerciseData.allWorkouts[1].id, 'core');
    });

    test('each exercise is category legs', () {
      for (final exercise in ExerciseData.legsWorkout.exercises) {
        expect(exercise.category, ExerciseCategory.legs);
      }
    });

    test('coreWorkout has 6 exercises', () {
      expect(ExerciseData.coreWorkout.exercises.length, 6);
    });

    test('coreWorkout id and name', () {
      expect(ExerciseData.coreWorkout.id, 'core');
      expect(ExerciseData.coreWorkout.name, '核心训练');
    });

    test('core exercises have non-empty fields', () {
      for (final exercise in ExerciseData.coreWorkout.exercises) {
        expect(exercise.id.isNotEmpty, isTrue);
        expect(exercise.name.isNotEmpty, isTrue);
        expect(exercise.description.isNotEmpty, isTrue);
        expect(exercise.durationSeconds, greaterThan(0));
        expect(exercise.targetMuscles.isNotEmpty, isTrue);
      }
    });

    test('each core exercise is category core', () {
      for (final exercise in ExerciseData.coreWorkout.exercises) {
        expect(exercise.category, ExerciseCategory.core);
      }
    });
  });
}
