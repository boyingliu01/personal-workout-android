import 'package:flutter_test/flutter_test.dart';
import 'package:strength_app/domain/entities/exercise.dart';

void main() {
  group('Difficulty', () {
    test('has three values', () {
      expect(Difficulty.values.length, 3);
      expect(Difficulty.values, contains(Difficulty.beginner));
      expect(Difficulty.values, contains(Difficulty.intermediate));
      expect(Difficulty.values, contains(Difficulty.advanced));
    });
  });

  group('ExerciseCategory', () {
    test('has four values', () {
      expect(ExerciseCategory.values.length, 4);
      expect(ExerciseCategory.values, contains(ExerciseCategory.legs));
      expect(ExerciseCategory.values, contains(ExerciseCategory.core));
      expect(ExerciseCategory.values, contains(ExerciseCategory.upperBody));
      expect(ExerciseCategory.values, contains(ExerciseCategory.fullBody));
    });
  });

  group('Exercise', () {
    final exercise = const Exercise(
      id: 'squat',
      name: '深蹲',
      description: '双脚与肩同宽，膝盖弯曲',
      imagePath: 'assets/images/exercises/squat.png',
      durationSeconds: 60,
      restSeconds: 5,
      targetMuscles: ['臀部', '大腿前侧'],
      difficulty: Difficulty.beginner,
      category: ExerciseCategory.legs,
    );

    test('stores all fields correctly', () {
      expect(exercise.id, 'squat');
      expect(exercise.name, '深蹲');
      expect(exercise.description, '双脚与肩同宽，膝盖弯曲');
      expect(exercise.durationSeconds, 60);
      expect(exercise.restSeconds, 5);
      expect(exercise.targetMuscles, ['臀部', '大腿前侧']);
      expect(exercise.difficulty, Difficulty.beginner);
      expect(exercise.category, ExerciseCategory.legs);
    });

    test('has const constructor', () {
      const exercise2 = Exercise(
        id: 'test',
        name: 'Test',
        description: 'desc',
        imagePath: '',
        durationSeconds: 30,
        restSeconds: 5,
        targetMuscles: [],
        difficulty: Difficulty.intermediate,
        category: ExerciseCategory.core,
      );
      expect(exercise2.name, 'Test');
    });
  });
}
