import 'package:flutter_test/flutter_test.dart';
import 'package:strength_app/core/constants/exercise_animations.dart';

void main() {
  group('animationForExercise', () {
    test('returns non-null path for every known exercise ID', () {
      final knownIds = [
        'squat', 'deadlift', 'lunge', 'plank', 'push_up',
        'burpee', 'warmup_jumping_jack', 'standing_quad_stretch',
        'bicep_curl', 'mountain_climber',
      ];

      for (final id in knownIds) {
        expect(
          animationForExercise(id),
          isNotNull,
          reason: 'Expected non-null for known exercise: $id',
        );
      }
    });

    test('returns path ending with .gif for all known exercises', () {
      final knownIds = [
        'squat', 'deadlift', 'lunge', 'side_lunge', 'calf_raise',
        'glute_bridge', 'plank', 'side_plank', 'dead_bug', 'push_up',
        'pull_up', 'dumbbell_press', 'bicep_curl', 'tricep_dip',
        'burpee', 'jumping_jack', 'warmup_jumping_jack', 'high_knees',
        'standing_quad_stretch', 'cat_cow', 'cobra_stretch',
      ];

      for (final id in knownIds) {
        final path = animationForExercise(id);
        expect(
          path,
          endsWith('.gif'),
          reason: 'Expected .gif extension for: $id',
        );
      }
    });

    test('returns null for unknown exercise ID', () {
      expect(animationForExercise('nonexistent_exercise'), isNull);
      expect(animationForExercise(''), isNull);
      expect(animationForExercise('SQUAT'), isNull);
    });

    test('all returned paths start with assets/animations/', () {
      final knownIds = [
        'squat', 'deadlift', 'lunge', 'plank', 'push_up',
        'burpee', 'warmup_jumping_jack', 'standing_quad_stretch',
        'bicep_curl', 'mountain_climber', 'russian_twist',
        'jumping_jack', 'high_knees', 'butt_kicks',
      ];

      for (final id in knownIds) {
        final path = animationForExercise(id);
        expect(
          path,
          startsWith('assets/animations/'),
          reason: 'Expected assets/animations/ prefix for: $id',
        );
      }
    });
  });

  group('hasAnimation', () {
    test('returns true for known exercises', () {
      expect(hasAnimation('squat'), isTrue);
      expect(hasAnimation('deadlift'), isTrue);
      expect(hasAnimation('plank'), isTrue);
      expect(hasAnimation('push_up'), isTrue);
      expect(hasAnimation('burpee'), isTrue);
      expect(hasAnimation('standing_quad_stretch'), isTrue);
    });

    test('returns false for unknown exercises', () {
      expect(hasAnimation('nonexistent_exercise'), isFalse);
      expect(hasAnimation(''), isFalse);
      expect(hasAnimation('SQUAT'), isFalse);
      expect(hasAnimation('unknown'), isFalse);
    });
  });
}
