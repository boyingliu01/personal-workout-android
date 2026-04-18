import 'package:flutter/material.dart';
import 'package:runner_app/constants/app_colors.dart';
import 'package:runner_app/models/workout_type.dart';

/// Simple workout card with name, count, time, and type icon.
///
/// Designed for home screen listing of available workouts.
class SimpleWorkoutCard extends StatelessWidget {
  /// Workout display name.
  final String workoutName;

  /// Number of exercises in the workout.
  final int exerciseCount;

  /// Estimated duration in minutes.
  final int estimatedMinutes;

  /// Workout type for icon and accent color.
  final WorkoutType type;

  /// Callback when the card is tapped.
  final VoidCallback? onTap;

  const SimpleWorkoutCard({
    super.key,
    required this.workoutName,
    required this.exerciseCount,
    required this.estimatedMinutes,
    required this.type,
    this.onTap,
  });

  IconData _typeIcon() {
    return switch (type) {
      WorkoutType.warmup => Icons.local_fire_department,
      WorkoutType.stretch => Icons.accessibility,
      WorkoutType.strength => Icons.fitness_center,
    };
  }

  Color _accentColor() {
    return switch (type) {
      WorkoutType.warmup => AppColors.warmupAccent,
      WorkoutType.stretch => AppColors.stretchAccent,
      WorkoutType.strength => AppColors.strengthAccent,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(
                _typeIcon(),
                size: 40,
                color: _accentColor(),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      workoutName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.onSurface,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '$exerciseCount 个动作 · $estimatedMinutes 分钟',
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppColors.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.chevron_right,
                color: AppColors.onSurfaceVariant,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
