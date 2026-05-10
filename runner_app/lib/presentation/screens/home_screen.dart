import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:strength_app/core/constants/exercise_data.dart';
import 'package:strength_app/presentation/providers/training_session_provider.dart';
import 'package:strength_app/presentation/screens/settings_screen.dart';
import 'package:strength_app/presentation/screens/workout_detail_screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final workouts = ExerciseData.allWorkouts;

    return Scaffold(
      appBar: AppBar(title: const Text('力量训练')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: workouts.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const _HeaderCard();
          }
          final workout = workouts[index - 1];
          return _WorkoutCard(
            name: workout.name,
            count: workout.exercises.length,
            duration: workout.estimatedMinutes,
            onTap: () {
              ref.read(trainingSessionProvider.notifier).selectWorkout(workout);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const WorkoutDetailScreen()),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const SettingsScreen()),
          );
        },
        child: const Icon(Icons.settings),
      ),
    );
  }
}

class _HeaderCard extends StatelessWidget {
  const _HeaderCard();

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '欢迎训练',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '选择一个训练模块开始',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class _WorkoutCard extends StatelessWidget {
  final String name;
  final int count;
  final int duration;
  final VoidCallback onTap;

  const _WorkoutCard({
    required this.name,
    required this.count,
    required this.duration,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        leading: const Icon(Icons.fitness_center, size: 32, color: Color(0xFFF5A623)),
        title: Text(name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        subtitle: Text('$count个动作 · 约$duration分钟'),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}
