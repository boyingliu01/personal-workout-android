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

    test('allWorkouts contains all 6 workouts', () {
      expect(ExerciseData.allWorkouts.length, 6);
      expect(ExerciseData.allWorkouts[0].id, 'warmup');
      expect(ExerciseData.allWorkouts[1].id, 'legs');
      expect(ExerciseData.allWorkouts[2].id, 'core');
      expect(ExerciseData.allWorkouts[3].id, 'upper_body');
      expect(ExerciseData.allWorkouts[4].id, 'full_body');
      expect(ExerciseData.allWorkouts[5].id, 'stretch');
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

    test('upperBodyWorkout has 8 exercises', () {
      expect(ExerciseData.upperBodyWorkout.exercises.length, 8);
    });

    test('upperBodyWorkout id and name', () {
      expect(ExerciseData.upperBodyWorkout.id, 'upper_body');
      expect(ExerciseData.upperBodyWorkout.name, '上肢训练');
    });

    test('upper body exercises have non-empty fields', () {
      for (final exercise in ExerciseData.upperBodyWorkout.exercises) {
        expect(exercise.id.isNotEmpty, isTrue);
        expect(exercise.name.isNotEmpty, isTrue);
        expect(exercise.description.isNotEmpty, isTrue);
        expect(exercise.durationSeconds, greaterThan(0));
        expect(exercise.targetMuscles.isNotEmpty, isTrue);
      }
    });

    test('each upper body exercise is category upperBody', () {
      for (final exercise in ExerciseData.upperBodyWorkout.exercises) {
        expect(exercise.category, ExerciseCategory.upperBody);
      }
    });

    test('fullBodyWorkout has 6 exercises', () {
      expect(ExerciseData.fullBodyWorkout.exercises.length, 6);
    });

    test('fullBodyWorkout id and name', () {
      expect(ExerciseData.fullBodyWorkout.id, 'full_body');
      expect(ExerciseData.fullBodyWorkout.name, '全身训练');
    });

    test('full body exercises have non-empty fields', () {
      for (final exercise in ExerciseData.fullBodyWorkout.exercises) {
        expect(exercise.id.isNotEmpty, isTrue);
        expect(exercise.name.isNotEmpty, isTrue);
        expect(exercise.description.isNotEmpty, isTrue);
        expect(exercise.durationSeconds, greaterThan(0));
        expect(exercise.targetMuscles.isNotEmpty, isTrue);
      }
    });

    test('each full body exercise is category fullBody', () {
      for (final exercise in ExerciseData.fullBodyWorkout.exercises) {
        expect(exercise.category, ExerciseCategory.fullBody);
      }
    });

    test('warmupWorkout has 12 exercises', () {
      expect(ExerciseData.warmupWorkout.exercises.length, 12);
    });

    test('warmupWorkout id and name', () {
      expect(ExerciseData.warmupWorkout.id, 'warmup');
      expect(ExerciseData.warmupWorkout.name, '跑前热身');
    });

    test('warmup exercises have non-empty fields', () {
      for (final exercise in ExerciseData.warmupWorkout.exercises) {
        expect(exercise.id.isNotEmpty, isTrue);
        expect(exercise.name.isNotEmpty, isTrue);
        expect(exercise.description.isNotEmpty, isTrue);
        expect(exercise.durationSeconds, greaterThan(0));
        expect(exercise.targetMuscles.isNotEmpty, isTrue);
      }
    });

    test('each warmup exercise is category warmup', () {
      for (final exercise in ExerciseData.warmupWorkout.exercises) {
        expect(exercise.category, ExerciseCategory.warmup);
      }
    });

    test('stretchWorkout has 17 exercises', () {
      expect(ExerciseData.stretchWorkout.exercises.length, 17);
    });

    test('stretchWorkout id and name', () {
      expect(ExerciseData.stretchWorkout.id, 'stretch');
      expect(ExerciseData.stretchWorkout.name, '跑后拉伸');
    });

    test('stretch exercises have non-empty fields', () {
      for (final exercise in ExerciseData.stretchWorkout.exercises) {
        expect(exercise.id.isNotEmpty, isTrue);
        expect(exercise.name.isNotEmpty, isTrue);
        expect(exercise.description.isNotEmpty, isTrue);
        expect(exercise.durationSeconds, greaterThan(0));
        expect(exercise.targetMuscles.isNotEmpty, isTrue);
      }
    });

    test('each stretch exercise is category stretch', () {
      for (final exercise in ExerciseData.stretchWorkout.exercises) {
        expect(exercise.category, ExerciseCategory.stretch);
      }
    });
  });
}
