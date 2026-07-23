import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:strength_app/core/constants/exercise_animations.dart';
import 'package:strength_app/core/constants/exercise_icons.dart';
import 'package:strength_app/domain/entities/exercise.dart';
import 'package:strength_app/domain/entities/workout.dart';
import 'package:strength_app/presentation/providers/training_session_provider.dart';
import 'package:strength_app/presentation/screens/training_flow_screen.dart';

class WorkoutDetailScreen extends ConsumerWidget {
  const WorkoutDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(trainingSessionProvider);
    final workout = session.currentWorkout;

    if (workout == null) {
      return const _ErrorScreen();
    }

    return Scaffold(
      appBar: AppBar(title: Text(workout.name)),
      body: Column(
        children: [
          _WorkoutInfoCard(workout: workout),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '动作列表',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${workout.exercises.length}个动作',
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: workout.exercises.length,
              itemBuilder: (context, index) {
                final exercise = workout.exercises[index];
                return _ExerciseListItem(
                  exercise: exercise,
                  index: index + 1,
                );
              },
            ),
          ),
          _StartButton(workout: workout),
        ],
      ),
    );
  }
}

class _ErrorScreen extends StatelessWidget {
  const _ErrorScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('训练详情')),
      body: const Center(child: Text('未选择训练模块')),
    );
  }
}

class _WorkoutInfoCard extends StatelessWidget {
  final Workout workout;

  const _WorkoutInfoCard({required this.workout});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              workout.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              workout.description,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                _InfoChip(
                  icon: Icons.timer,
                  label: '约${workout.estimatedMinutes}分钟',
                ),
                const SizedBox(width: 12),
                _InfoChip(
                  icon: Icons.fitness_center,
                  label: '${workout.exercises.length}个动作',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _InfoChip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 18, color: const Color(0xFFF5A623)),
        const SizedBox(width: 4),
        Text(label, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}

class _ExerciseListItem extends StatelessWidget {
  final Exercise exercise;
  final int index;

  const _ExerciseListItem({required this.exercise, required this.index});

  @override
  Widget build(BuildContext context) {
    final difficultyColor = switch (exercise.difficulty) {
      Difficulty.beginner => Colors.green,
      Difficulty.intermediate => Colors.orange,
      Difficulty.advanced => Colors.red,
    };

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: _ExerciseAnimationPreview(exercise: exercise),
        title: Text(exercise.name),
        subtitle: Text(
          '${exercise.durationSeconds}秒 · ${exercise.targetMuscles.join(', ')}',
        ),
        trailing: Icon(Icons.circle, size: 12, color: difficultyColor),
      ),
    );
  }
}

class _ExerciseAnimationPreview extends StatelessWidget {
  final Exercise exercise;

  const _ExerciseAnimationPreview({required this.exercise});

  @override
  Widget build(BuildContext context) {
    final animationPath = animationForExercise(exercise.id);
    
    if (animationPath != null) {
      return SizedBox(
        width: 40,
        height: 40,
        child: Image.asset(
          animationPath,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) {
            return CircleAvatar(
              backgroundColor: const Color(0xFFF5A623).withValues(alpha: 0.2),
              child: Icon(
                iconForExercise(exercise),
                color: const Color(0xFFF5A623),
                size: 20,
              ),
            );
          },
        ),
      );
    }
    
    return CircleAvatar(
      backgroundColor: const Color(0xFFF5A623).withValues(alpha: 0.2),
      child: Icon(
        iconForExercise(exercise),
        color: const Color(0xFFF5A623),
        size: 20,
      ),
    );
  }
}

class _StartButton extends ConsumerWidget {
  final Workout workout;

  const _StartButton({required this.workout});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          width: double.infinity,
          child: FilledButton.icon(
            onPressed: () {
              ref.read(trainingSessionProvider.notifier).startWorkout();
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (_) => const TrainingFlowScreen(),
                ),
              );
            },
            icon: const Icon(Icons.play_arrow),
            label: const Text('开始训练'),
            style: FilledButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              textStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
