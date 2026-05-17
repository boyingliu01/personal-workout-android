import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:strength_app/domain/entities/training_session.dart';
import 'package:strength_app/presentation/providers/training_session_provider.dart';

class WorkoutCompleteScreen extends ConsumerWidget {
  const WorkoutCompleteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(trainingSessionProvider).completedSession;

    return Scaffold(
      appBar: AppBar(title: const Text('训练完成')),
      body: session != null
          ? _CompleteContent(session: session, ref: ref)
          : const Center(child: Text('训练记录未找到')),
    );
  }
}

class _CompleteContent extends StatelessWidget {
  final TrainingSession session;
  final WidgetRef ref;

  const _CompleteContent({required this.session, required this.ref});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.check_circle, size: 80, color: Colors.green),
            const SizedBox(height: 24),
            const Text(
              '恭喜完成训练！',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            _StatCard(label: '完成动作', value: '${session.completedExercises}'),
            const SizedBox(height: 12),
            _StatCard(
              label: '总时长',
              value: '${(session.totalSeconds / 60).round()}分钟',
            ),
            const SizedBox(height: 32),
            FilledButton.icon(
              onPressed: () {
                ref.read(trainingSessionProvider.notifier).goHome();
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              icon: const Icon(Icons.home),
              label: const Text('返回首页'),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String label;
  final String value;

  const _StatCard({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: const TextStyle(fontSize: 16)),
            Text(value, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
