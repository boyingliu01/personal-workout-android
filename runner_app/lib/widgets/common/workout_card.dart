import 'package:flutter/material.dart';
import 'package:runner_app/constants/app_colors.dart';
import 'package:runner_app/constants/app_strings.dart';
import 'package:runner_app/models/workout.dart';
import 'package:runner_app/models/workout_type.dart';

/// Widget representing a workout card that can be displayed on the home screen.
class WorkoutCard extends StatelessWidget {
  final Workout workout;
  final VoidCallback onTap;

  const WorkoutCard({
    super.key,
    required this.workout,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Color cardColor;
    IconData icon;

    switch (workout.type) {
      case WorkoutType.warmup:
        cardColor = AppColors.warmupAccent.withValues(alpha: 0.1);
        icon = Icons.local_fire_department;
      case WorkoutType.stretch:
        cardColor = AppColors.stretchAccent.withValues(alpha: 0.1);
        icon = Icons.sports_gymnastics;
      case WorkoutType.strength:
        cardColor = AppColors.strengthAccent.withValues(alpha: 0.1);
        icon = Icons.fitness_center;
    }

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Icon(
                icon,
                size: 48,
                color: cardColor.computeLuminance() < 0.5
                    ? AppColors.primary
                    : AppColors.secondary,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      workout.name,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${workout.totalExercises} 个动作 • ${workout.estimatedMinutes} 分钟',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(height: 4),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Chip(
                        label: Text(
                          _getDifficultyText(workout.difficulty),
                          style: TextStyle(fontSize: 12),
                        ),
                        backgroundColor:
                            _getDifficultyColor(workout.difficulty),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getDifficultyText(Difficulty difficulty) {
    switch (difficulty) {
      case Difficulty.beginner:
        return AppStrings.beginner;
      case Difficulty.intermediate:
        return AppStrings.intermediate;
      case Difficulty.advanced:
        return AppStrings.advanced;
    }
  }

  Color _getDifficultyColor(Difficulty difficulty) {
    switch (difficulty) {
      case Difficulty.beginner:
        return AppColors.primary.withValues(alpha: 0.2);
      case Difficulty.intermediate:
        return AppColors.warning.withValues(alpha: 0.3);
      case Difficulty.advanced:
        return AppColors.error.withValues(alpha: 0.2);
    }
  }
}
