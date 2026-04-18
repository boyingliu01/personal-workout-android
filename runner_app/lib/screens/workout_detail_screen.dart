import 'package:flutter/material.dart';
import 'package:runner_app/constants/app_colors.dart';
import 'package:runner_app/constants/app_strings.dart';
import 'package:runner_app/models/workout.dart';
import 'package:runner_app/widgets/common/exercise_list_item.dart';

/// Workout detail/preparation screen showing workout information.
///
/// Displays workout name, description, estimated duration,
/// list of all exercises, and preparation controls.
/// Users can start the workout from here which navigates to
/// individual exercise screens.
class WorkoutDetailScreen extends StatelessWidget {
  /// The workout to display details for.
  final Workout workout;

  const WorkoutDetailScreen({
    super.key,
    required this.workout,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(workout.name),
        backgroundColor: AppColors.surface,
        foregroundColor: AppColors.onSurface,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Workout header with name and description
            Card(
              color: AppColors.surfaceVariant,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            workout.name,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: AppColors.onSurface,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          decoration: BoxDecoration(
                            color: AppColors.chipBackground,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            '${workout.totalExercises} 个动作, ${workout.estimatedMinutes} 分钟',
                            style: const TextStyle(
                              fontSize: 14,
                              color: AppColors.chipText,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      workout.description,
                      style: const TextStyle(
                        fontSize: 16,
                        color: AppColors.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Section title
            const Text(
              '训练计划',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.onSurface,
              ),
            ),
            const SizedBox(height: 16),
            // Exercises list
            Expanded(
              child: ListView.builder(
                itemCount: workout.exercises.length,
                itemBuilder: (context, index) {
                  final exercise = workout.exercises[index];
                  return ExerciseListItem(
                    exerciseName: exercise.name,
                    durationSeconds: exercise.durationSeconds,
                    targetMuscles: exercise.targetMuscles,
                    index: index + 1,
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
            // Start button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  // Navigate to exercise screen - for now we'll just pop back
                  // In real implementation, this would navigate to the first exercise
                  // Navigator.of(context).pushNamed('/exercise', arguments: workout);
                  
                  // For this phase, we'll just show a snackbar to indicate it would start
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('训练将从前置动作开始'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                icon: const Icon(Icons.play_arrow),
                label: Text(
                  AppStrings.startTraining,
                  style: const TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.onPrimary,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}