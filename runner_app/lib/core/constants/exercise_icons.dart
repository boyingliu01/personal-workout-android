import 'package:flutter/material.dart';
import 'package:strength_app/domain/entities/exercise.dart';

/// Maps exercise IDs to Material Icons for visual identification.
/// Falls back to category-based icons for unmapped exercises.
IconData iconForExercise(Exercise exercise) {
  return _exerciseIconMap[exercise.id] ?? _categoryIcon(exercise.category);
}

IconData _categoryIcon(ExerciseCategory category) {
  return switch (category) {
    ExerciseCategory.legs => Icons.fitness_center,
    ExerciseCategory.core => Icons.self_improvement,
    ExerciseCategory.upperBody => Icons.accessibility_new,
    ExerciseCategory.fullBody => Icons.sports_gymnastics,
    ExerciseCategory.warmup => Icons.whatshot,
    ExerciseCategory.stretch => Icons.self_improvement,
  };
}

const _exerciseIconMap = <String, IconData>{
  // Legs
  'squat': Icons.downhill_skiing,
  'deadlift': Icons.sports_kabaddi,
  'lunge': Icons.accessibility_new,
  'side_lunge': Icons.swap_horiz,
  'calf_raise': Icons.arrow_upward,
  'glute_bridge': Icons.horizontal_rule,
  'single_leg_deadlift': Icons.balance,
  'leg_press': Icons.arrow_circle_up,
  // Core
  'plank': Icons.rectangle,
  'side_plank': Icons.rotate_left,
  'dead_bug': Icons.bug_report,
  'bird_dog': Icons.pets,
  'mountain_climber': Icons.terrain,
  'russian_twist': Icons.rotate_right,
};
