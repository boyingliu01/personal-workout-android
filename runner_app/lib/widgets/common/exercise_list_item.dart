import 'package:flutter/material.dart';
import 'package:runner_app/constants/app_colors.dart';

/// List item widget for displaying a single exercise.
///
/// Shows exercise number badge, name, duration, and target muscle tags.
class ExerciseListItem extends StatelessWidget {
  /// Exercise display name.
  final String exerciseName;

  /// Exercise duration in seconds.
  final int durationSeconds;

  /// Target muscle groups.
  final List<String> targetMuscles;

  /// Exercise index (displayed as badge number, 1-based).
  final int index;

  const ExerciseListItem({
    super.key,
    required this.exerciseName,
    required this.durationSeconds,
    required this.targetMuscles,
    required this.index,
  });

  String _formatDuration(int seconds) {
    final minutes = seconds ~/ 60;
    final secs = seconds % 60;
    return '$minutes:${secs.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: AppColors.primary,
        child: Text(
          '$index',
          style: const TextStyle(
            color: AppColors.onPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      title: Text(
        exerciseName,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColors.onSurface,
        ),
      ),
      subtitle: targetMuscles.isNotEmpty
          ? Wrap(
              spacing: 4,
              runSpacing: 2,
              children: targetMuscles
                  .map(
                    (muscle) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.chipBackground,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        muscle,
                        style: const TextStyle(
                          fontSize: 11,
                          color: AppColors.chipText,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            )
          : null,
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _formatDuration(durationSeconds),
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 4),
          const Icon(
            Icons.chevron_right,
            size: 20,
            color: AppColors.onSurfaceVariant,
          ),
        ],
      ),
    );
  }
}
