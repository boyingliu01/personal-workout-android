import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:strength_app/core/constants/exercise_data.dart';
import 'package:strength_app/data/repositories/training_storage.dart';
import 'package:strength_app/domain/entities/training_session.dart';
import 'package:strength_app/presentation/providers/training_session_provider.dart';
import 'package:strength_app/presentation/screens/history_screen.dart';
import 'package:strength_app/presentation/screens/settings_screen.dart';
import 'package:strength_app/presentation/screens/workout_detail_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Check for interrupted session after the first frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkForInterruptedSession();
    });
  }

  void _checkForInterruptedSession() {
    try {
      final storage = TrainingStorage(box: Hive.box<String>('sessions'));
      final interrupted = storage.getInterruptedSession();
      if (interrupted != null && interrupted.isResumable) {
        _showRecoveryDialog(interrupted);
      }
    } catch (e) {
      // Hive not initialized or box not found - skip recovery check
      // This can happen in tests or if Hive init failed
    }
  }

  void _showRecoveryDialog(TrainingSession session) {
    showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('继续上次训练？'),
        content: Text('您有未完成的「${session.workoutName}」训练，是否继续？'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              // Discard the interrupted session
              final storage = TrainingStorage(box: Hive.box<String>('sessions'));
              storage.clearInterruptedSession();
            },
            child: const Text('放弃'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              // TODO: Implement resume logic - need to find the workout and restore state
              // For now, just navigate to the workout detail
              final storage = TrainingStorage(box: Hive.box<String>('sessions'));
              storage.clearInterruptedSession();
            },
            child: const Text('继续'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final workouts = ExerciseData.allWorkouts;

    return Scaffold(
      appBar: AppBar(
        title: const Text('力量训练'),
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (_) => const HistoryScreen(),
                ),
              );
            },
          ),
        ],
      ),
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
                MaterialPageRoute<void>(
                  builder: (_) => const WorkoutDetailScreen(),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(builder: (_) => const SettingsScreen()),
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
        leading: const Icon(
          Icons.fitness_center,
          size: 32,
          color: Color(0xFFF5A623),
        ),
        title: Text(
          name,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        subtitle: Text('$count个动作 · 约$duration分钟'),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}
