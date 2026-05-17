import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:strength_app/presentation/providers/training_session_provider.dart';
import 'package:strength_app/presentation/screens/exercise_screen.dart';
import 'package:strength_app/presentation/screens/rest_screen.dart';
import 'package:strength_app/presentation/screens/workout_complete_screen.dart';

class TrainingFlowScreen extends ConsumerWidget {
  const TrainingFlowScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(trainingSessionProvider);

    return switch (state.screen) {
      WorkoutScreen.exercising => const ExerciseScreen(),
      WorkoutScreen.resting => const RestScreen(),
      WorkoutScreen.complete => const WorkoutCompleteScreen(),
      WorkoutScreen.home || WorkoutScreen.detail => const _FlowErrorScreen(),
    };
  }
}

class _FlowErrorScreen extends StatelessWidget {
  const _FlowErrorScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('训练流程')),
      body: const Center(child: Text('训练流程未正确启动')),
    );
  }
}
