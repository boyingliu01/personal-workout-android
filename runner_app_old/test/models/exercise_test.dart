import 'package:flutter_test/flutter_test.dart';
import 'package:runner_app/models/exercise.dart';
import 'package:runner_app/models/workout_type.dart';

void main() {
  group('Exercise', () {
    group('REQ-EXERCISE-001: JSON Serialization', () {
      test('@test REQ-EXERCISE-001 fromJson() parses complete JSON', () {
        final json = {
          'id': 'ex-001',
          'name': '开合跳',
          'description': '经典热身动作',
          'videoUrl': 'https://example.com/video.mp4',
          'localVideoPath': 'videos/warmup/jumping_jacks.mp4',
          'imagePath': 'images/warmup/jumping_jacks.png',
          'durationSeconds': 45,
          'restSeconds': 5,
          'targetMuscles': ['legs', 'core'],
          'difficulty': 'beginner',
          'category': 'fullBody',
        };

        final exercise = Exercise.fromJson(json);

        expect(exercise.id, 'ex-001');
        expect(exercise.name, '开合跳');
        expect(exercise.description, '经典热身动作');
        expect(exercise.videoUrl, 'https://example.com/video.mp4');
        expect(exercise.localVideoPath, 'videos/warmup/jumping_jacks.mp4');
        expect(exercise.imagePath, 'images/warmup/jumping_jacks.png');
        expect(exercise.durationSeconds, 45);
        expect(exercise.restSeconds, 5);
        expect(exercise.targetMuscles, ['legs', 'core']);
        expect(exercise.difficulty, Difficulty.beginner);
        expect(exercise.category, ExerciseCategory.fullBody);
      });

      test('@test REQ-EXERCISE-001 fromJson() handles null videoUrl', () {
        final json = {
          'id': 'ex-002',
          'name': '深蹲',
          'description': '力量训练动作',
          'durationSeconds': 60,
          'restSeconds': 10,
          'targetMuscles': ['legs'],
          'difficulty': 'intermediate',
          'category': 'lowerBody',
        };

        final exercise = Exercise.fromJson(json);

        expect(exercise.videoUrl, isNull);
      });

      test('@test REQ-EXERCISE-001 fromJson() handles null localVideoPath', () {
        final json = {
          'id': 'ex-003',
          'name': '俯卧撑',
          'description': '上肢力量训练',
          'durationSeconds': 45,
          'restSeconds': 5,
          'targetMuscles': ['chest', 'arms'],
          'difficulty': 'beginner',
          'category': 'upperBody',
        };

        final exercise = Exercise.fromJson(json);

        expect(exercise.localVideoPath, isNull);
      });

      test('@test REQ-EXERCISE-001 fromJson() handles null imagePath', () {
        final json = {
          'id': 'ex-004',
          'name': '平板支撑',
          'description': '核心训练',
          'durationSeconds': 30,
          'restSeconds': 10,
          'targetMuscles': ['core'],
          'difficulty': 'intermediate',
          'category': 'core',
        };

        final exercise = Exercise.fromJson(json);

        expect(exercise.imagePath, isNull);
      });

      test('@test REQ-EXERCISE-001 fromJson() handles null targetMuscles', () {
        final json = {
          'id': 'ex-005',
          'name': '跑步',
          'description': '有氧运动',
          'durationSeconds': 300,
          'restSeconds': 0,
          'difficulty': 'beginner',
          'category': 'cardio',
        };

        final exercise = Exercise.fromJson(json);

        expect(exercise.targetMuscles, isEmpty);
      });

      test(
          '@test REQ-EXERCISE-001 fromJson() uses orElse for invalid difficulty',
          () {
        final json = {
          'id': 'ex-006',
          'name': '测试动作',
          'description': '测试',
          'difficulty': 'invalid_difficulty',
          'category': 'fullBody',
        };

        final exercise = Exercise.fromJson(json);

        expect(exercise.difficulty, Difficulty.beginner); // orElse default
      });

      test('@test REQ-EXERCISE-001 fromJson() uses orElse for invalid category',
          () {
        final json = {
          'id': 'ex-007',
          'name': '测试动作',
          'description': '测试',
          'difficulty': 'beginner',
          'category': 'invalid_category',
        };

        final exercise = Exercise.fromJson(json);

        expect(exercise.category, ExerciseCategory.fullBody); // orElse default
      });

      test(
          '@test REQ-EXERCISE-001 fromJson() uses defaults for null durationSeconds',
          () {
        final json = {
          'id': 'ex-008',
          'name': '测试动作',
          'description': '测试',
          'difficulty': 'beginner',
          'category': 'fullBody',
        };

        final exercise = Exercise.fromJson(json);

        expect(exercise.durationSeconds, 45); // default
      });

      test(
          '@test REQ-EXERCISE-001 fromJson() uses defaults for null restSeconds',
          () {
        final json = {
          'id': 'ex-009',
          'name': '测试动作',
          'description': '测试',
          'difficulty': 'beginner',
          'category': 'fullBody',
        };

        final exercise = Exercise.fromJson(json);

        expect(exercise.restSeconds, 5); // default
      });

      test('@test REQ-EXERCISE-001 toJson() serializes correctly', () {
        final exercise = Exercise(
          id: 'ex-010',
          name: '开合跳',
          description: '经典热身动作',
          videoUrl: 'https://example.com/video.mp4',
          localVideoPath: 'videos/warmup/jumping_jacks.mp4',
          imagePath: 'images/warmup/jumping_jacks.png',
          durationSeconds: 45,
          restSeconds: 5,
          targetMuscles: ['legs', 'core'],
          difficulty: Difficulty.beginner,
          category: ExerciseCategory.fullBody,
        );

        final json = exercise.toJson();

        expect(json['id'], 'ex-010');
        expect(json['name'], '开合跳');
        expect(json['description'], '经典热身动作');
        expect(json['videoUrl'], 'https://example.com/video.mp4');
        expect(json['localVideoPath'], 'videos/warmup/jumping_jacks.mp4');
        expect(json['imagePath'], 'images/warmup/jumping_jacks.png');
        expect(json['durationSeconds'], 45);
        expect(json['restSeconds'], 5);
        expect(json['targetMuscles'], ['legs', 'core']);
        expect(json['difficulty'], 'beginner'); // .name
        expect(json['category'], 'fullBody'); // .name
      });

      test('@test REQ-EXERCISE-001 toJson() handles null fields', () {
        final exercise = Exercise(
          id: 'ex-011',
          name: '深蹲',
          description: '力量训练',
          durationSeconds: 60,
          restSeconds: 10,
          targetMuscles: ['legs'],
          difficulty: Difficulty.intermediate,
          category: ExerciseCategory.lowerBody,
        );

        final json = exercise.toJson();

        expect(json['videoUrl'], isNull);
        expect(json['localVideoPath'], isNull);
        expect(json['imagePath'], isNull);
      });
    });

    group('REQ-EXERCISE-002: copyWith', () {
      test('@test REQ-EXERCISE-002 copyWith() modifies name', () {
        final exercise = Exercise(
          id: 'ex-012',
          name: '开合跳',
          description: '经典热身动作',
          durationSeconds: 45,
          difficulty: Difficulty.beginner,
          category: ExerciseCategory.fullBody,
        );

        final modified = exercise.copyWith(name: '高抬腿');

        expect(modified.name, '高抬腿');
        expect(modified.id, exercise.id);
      });

      test('@test REQ-EXERCISE-002 copyWith() modifies difficulty', () {
        final exercise = Exercise(
          id: 'ex-013',
          name: '深蹲',
          description: '力量训练',
          durationSeconds: 60,
          difficulty: Difficulty.beginner,
          category: ExerciseCategory.lowerBody,
        );

        final modified = exercise.copyWith(difficulty: Difficulty.advanced);

        expect(modified.difficulty, Difficulty.advanced);
      });

      test('@test REQ-EXERCISE-002 copyWith() modifies nullable videoUrl', () {
        final exercise = Exercise(
          id: 'ex-014',
          name: '深蹲',
          description: '力量训练',
          durationSeconds: 60,
          difficulty: Difficulty.intermediate,
          category: ExerciseCategory.lowerBody,
        );

        final modified =
            exercise.copyWith(videoUrl: 'https://example.com/squat.mp4');

        expect(modified.videoUrl, 'https://example.com/squat.mp4');
      });

      test('@test REQ-EXERCISE-002 copyWith() modifies targetMuscles', () {
        final exercise = Exercise(
          id: 'ex-015',
          name: '深蹲',
          description: '力量训练',
          durationSeconds: 60,
          targetMuscles: ['legs'],
          difficulty: Difficulty.intermediate,
          category: ExerciseCategory.lowerBody,
        );

        final modified =
            exercise.copyWith(targetMuscles: ['legs', 'glutes', 'core']);

        expect(modified.targetMuscles, ['legs', 'glutes', 'core']);
      });

      test('@test REQ-EXERCISE-002 copyWith() modifies all fields', () {
        final exercise = Exercise(
          id: 'ex-016',
          name: '原动作',
          description: '原描述',
          videoUrl: 'https://old.mp4',
          localVideoPath: 'old/path.mp4',
          imagePath: 'old/path.png',
          durationSeconds: 30,
          restSeconds: 5,
          targetMuscles: ['old'],
          difficulty: Difficulty.beginner,
          category: ExerciseCategory.fullBody,
        );

        final modified = exercise.copyWith(
          id: 'ex-016-new',
          name: '新动作',
          description: '新描述',
          videoUrl: 'https://new.mp4',
          localVideoPath: 'new/path.mp4',
          imagePath: 'new/path.png',
          durationSeconds: 60,
          restSeconds: 10,
          targetMuscles: ['new'],
          difficulty: Difficulty.advanced,
          category: ExerciseCategory.upperBody,
        );

        expect(modified.id, 'ex-016-new');
        expect(modified.name, '新动作');
        expect(modified.description, '新描述');
        expect(modified.videoUrl, 'https://new.mp4');
        expect(modified.localVideoPath, 'new/path.mp4');
        expect(modified.imagePath, 'new/path.png');
        expect(modified.durationSeconds, 60);
        expect(modified.restSeconds, 10);
        expect(modified.targetMuscles, ['new']);
        expect(modified.difficulty, Difficulty.advanced);
        expect(modified.category, ExerciseCategory.upperBody);
      });
    });
  });
}
