import 'package:flutter_test/flutter_test.dart';
import 'package:runner_app/models/workout.dart';
import 'package:runner_app/models/workout_type.dart';
import 'package:runner_app/models/exercise.dart';

void main() {
  group('Workout', () {
    group('REQ-WORKOUT-001: Getters', () {
      test('@test REQ-WORKOUT-001 totalExercises returns exercise count', () {
        final workout = Workout(
          id: 'warmup-001',
          name: '跑前动态热身',
          description: '跑前热身训练',
          type: WorkoutType.warmup,
          estimatedMinutes: 15,
          exercises: [
            Exercise(
              id: 'ex-001',
              name: '开合跳',
              description: '热身动作',
              durationSeconds: 45,
              difficulty: Difficulty.beginner,
              category: ExerciseCategory.fullBody,
            ),
            Exercise(
              id: 'ex-002',
              name: '高抬腿',
              description: '热身动作',
              durationSeconds: 45,
              difficulty: Difficulty.beginner,
              category: ExerciseCategory.fullBody,
            ),
          ],
        );

        expect(workout.totalExercises, 2);
      });

      test('@test REQ-WORKOUT-001 totalSeconds sums all exercise durations',
          () {
        final workout = Workout(
          id: 'warmup-002',
          name: '热身',
          description: '热身训练',
          type: WorkoutType.warmup,
          estimatedMinutes: 10,
          exercises: [
            Exercise(
              id: 'ex-001',
              name: '动作1',
              description: '热身',
              durationSeconds: 60,
              restSeconds: 10,
              difficulty: Difficulty.beginner,
              category: ExerciseCategory.fullBody,
            ),
            Exercise(
              id: 'ex-002',
              name: '动作2',
              description: '热身',
              durationSeconds: 45,
              restSeconds: 5,
              difficulty: Difficulty.beginner,
              category: ExerciseCategory.fullBody,
            ),
          ],
        );

        // 60 + 10 + 45 + 5 = 120
        expect(workout.totalSeconds, 120);
      });

      test('@test REQ-WORKOUT-001 totalSeconds returns 0 for empty exercises',
          () {
        final workout = Workout(
          id: 'empty-001',
          name: '空训练',
          description: '无动作',
          type: WorkoutType.warmup,
          estimatedMinutes: 0,
          exercises: [],
        );

        expect(workout.totalSeconds, 0);
      });
    });

    group('REQ-WORKOUT-002: JSON Serialization', () {
      test('@test REQ-WORKOUT-002 fromJson() parses complete JSON', () {
        final json = {
          'id': 'warmup-001',
          'name': '跑前动态热身',
          'description': '跑前热身训练',
          'type': 'warmup',
          'estimatedMinutes': 15,
          'coverImage': 'images/warmup.png',
          'difficulty': 'beginner',
          'exercises': [
            {
              'id': 'ex-001',
              'name': '开合跳',
              'description': '热身动作',
              'durationSeconds': 45,
              'restSeconds': 5,
              'difficulty': 'beginner',
              'category': 'fullBody',
            },
          ],
        };

        final workout = Workout.fromJson(json);

        expect(workout.id, 'warmup-001');
        expect(workout.name, '跑前动态热身');
        expect(workout.description, '跑前热身训练');
        expect(workout.type, WorkoutType.warmup);
        expect(workout.estimatedMinutes, 15);
        expect(workout.coverImage, 'images/warmup.png');
        expect(workout.difficulty, Difficulty.beginner);
        expect(workout.exercises.length, 1);
        expect(workout.exercises.first.name, '开合跳');
      });

      test('@test REQ-WORKOUT-002 fromJson() handles null coverImage', () {
        final json = {
          'id': 'stretch-001',
          'name': '拉伸',
          'description': '拉伸训练',
          'type': 'stretch',
          'estimatedMinutes': 25,
          'difficulty': 'intermediate',
          'exercises': [],
        };

        final workout = Workout.fromJson(json);

        expect(workout.coverImage, isNull);
      });

      test('@test REQ-WORKOUT-002 fromJson() uses orElse for invalid type', () {
        final json = {
          'id': 'invalid-001',
          'name': '测试',
          'description': '测试训练',
          'type': 'invalid_type',
          'estimatedMinutes': 10,
          'exercises': [],
        };

        final workout = Workout.fromJson(json);

        expect(workout.type, WorkoutType.warmup); // orElse default
      });

      test(
          '@test REQ-WORKOUT-002 fromJson() uses orElse for invalid difficulty',
          () {
        final json = {
          'id': 'invalid-002',
          'name': '测试',
          'description': '测试训练',
          'type': 'strength',
          'estimatedMinutes': 30,
          'difficulty': 'invalid_difficulty',
          'exercises': [],
        };

        final workout = Workout.fromJson(json);

        expect(workout.difficulty, Difficulty.beginner); // orElse default
      });

      test('@test REQ-WORKOUT-002 toJson() serializes correctly', () {
        final workout = Workout(
          id: 'warmup-003',
          name: '跑前动态热身',
          description: '跑前热身训练',
          type: WorkoutType.warmup,
          estimatedMinutes: 15,
          coverImage: 'images/warmup.png',
          difficulty: Difficulty.intermediate,
          exercises: [
            Exercise(
              id: 'ex-001',
              name: '开合跳',
              description: '热身动作',
              durationSeconds: 45,
              restSeconds: 5,
              difficulty: Difficulty.beginner,
              category: ExerciseCategory.fullBody,
            ),
          ],
        );

        final json = workout.toJson();

        expect(json['id'], 'warmup-003');
        expect(json['name'], '跑前动态热身');
        expect(json['description'], '跑前热身训练');
        expect(json['type'], 'warmup');
        expect(json['estimatedMinutes'], 15);
        expect(json['coverImage'], 'images/warmup.png');
        expect(json['difficulty'], 'intermediate');
        expect(json['exercises'], isNotEmpty);
      });

      test('@test REQ-WORKOUT-002 toJson() handles null coverImage', () {
        final workout = Workout(
          id: 'stretch-002',
          name: '拉伸',
          description: '拉伸训练',
          type: WorkoutType.stretch,
          estimatedMinutes: 25,
          exercises: [],
          difficulty: Difficulty.advanced,
        );

        final json = workout.toJson();

        expect(json['coverImage'], isNull);
      });
    });

    group('REQ-WORKOUT-003: copyWith', () {
      test('@test REQ-WORKOUT-003 copyWith() modifies name', () {
        final workout = Workout(
          id: 'strength-001',
          name: '力量训练',
          description: '力量训练',
          type: WorkoutType.strength,
          estimatedMinutes: 45,
          exercises: [],
        );

        final modified = workout.copyWith(name: '核心力量');

        expect(modified.name, '核心力量');
        expect(modified.id, workout.id);
      });

      test('@test REQ-WORKOUT-003 copyWith() modifies type', () {
        final workout = Workout(
          id: 'test-001',
          name: '测试',
          description: '测试训练',
          type: WorkoutType.warmup,
          estimatedMinutes: 15,
          exercises: [],
        );

        final modified = workout.copyWith(type: WorkoutType.strength);

        expect(modified.type, WorkoutType.strength);
      });

      test('@test REQ-WORKOUT-003 copyWith() modifies difficulty', () {
        final workout = Workout(
          id: 'test-002',
          name: '测试',
          description: '测试',
          type: WorkoutType.warmup,
          estimatedMinutes: 10,
          exercises: [],
          difficulty: Difficulty.beginner,
        );

        final modified = workout.copyWith(difficulty: Difficulty.advanced);

        expect(modified.difficulty, Difficulty.advanced);
      });

      test('@test REQ-WORKOUT-003 copyWith() modifies exercises', () {
        final workout = Workout(
          id: 'test-003',
          name: '测试',
          description: '测试',
          type: WorkoutType.warmup,
          estimatedMinutes: 10,
          exercises: [],
        );

        final newExercises = [
          Exercise(
            id: 'new-ex-001',
            name: '新动作',
            description: '新动作描述',
            durationSeconds: 60,
            difficulty: Difficulty.beginner,
            category: ExerciseCategory.fullBody,
          ),
        ];

        final modified = workout.copyWith(exercises: newExercises);

        expect(modified.exercises.length, 1);
        expect(modified.exercises.first.name, '新动作');
      });

      test('@test REQ-WORKOUT-003 copyWith() modifies coverImage', () {
        final workout = Workout(
          id: 'test-004',
          name: '测试',
          description: '测试',
          type: WorkoutType.warmup,
          estimatedMinutes: 10,
          exercises: [],
          coverImage: 'old.png',
        );

        final modified = workout.copyWith(coverImage: 'new.png');

        expect(modified.coverImage, 'new.png');
      });

      test('@test REQ-WORKOUT-003 copyWith() modifies all fields', () {
        final workout = Workout(
          id: 'old-001',
          name: '原训练',
          description: '原描述',
          type: WorkoutType.warmup,
          estimatedMinutes: 15,
          coverImage: 'old.png',
          difficulty: Difficulty.beginner,
          exercises: [],
        );

        final modified = workout.copyWith(
          id: 'new-001',
          name: '新训练',
          description: '新描述',
          type: WorkoutType.strength,
          estimatedMinutes: 45,
          coverImage: 'new.png',
          difficulty: Difficulty.advanced,
          exercises: [
            Exercise(
              id: 'new-ex-001',
              name: '新动作',
              description: '新动作',
              durationSeconds: 60,
              difficulty: Difficulty.advanced,
              category: ExerciseCategory.upperBody,
            ),
          ],
        );

        expect(modified.id, 'new-001');
        expect(modified.name, '新训练');
        expect(modified.description, '新描述');
        expect(modified.type, WorkoutType.strength);
        expect(modified.estimatedMinutes, 45);
        expect(modified.coverImage, 'new.png');
        expect(modified.difficulty, Difficulty.advanced);
        expect(modified.exercises.length, 1);
      });
    });
  });
}
