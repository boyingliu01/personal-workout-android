import 'package:flutter/material.dart';
import 'package:runner_app/models/workout.dart';
import 'package:runner_app/models/workout_type.dart';
import 'package:runner_app/constants/app_strings.dart';
import 'package:runner_app/constants/app_colors.dart';
import 'package:runner_app/widgets/common/workout_card.dart';
import 'package:runner_app/constants/exercise_data.dart';
import 'package:runner_app/routes.dart';

/// Main home screen with workout selection and user stats.
class HomeScreen extends StatefulWidget {
  final List<Workout> workouts;
  final int totalCompletedWorkouts;
  final int totalTrainingMinutes;

  const HomeScreen({
    super.key,
    List<Workout>? workouts,
    this.totalCompletedWorkouts = 0,
    this.totalTrainingMinutes = 0,
  }) : workouts = workouts ?? ExerciseData.allWorkouts;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Difficulty? _selectedDifficulty;

  @override
  Widget build(BuildContext context) {
    List<Workout> filteredWorkouts = widget.workouts.where((workout) {
      if (_selectedDifficulty == null) return true;
      return workout.difficulty == _selectedDifficulty;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.appTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => Navigator.pushNamed(context, AppRoutes.settings),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User stats
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            '${widget.totalCompletedWorkouts}',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text('总训练次数'),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '${widget.totalTrainingMinutes}分钟',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text('累计用时'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Difficulty filter
              Row(
                children: [
                  ChoiceChip(
                    label: const Text('全部'),
                    selected: _selectedDifficulty == null,
                    onSelected: (_) =>
                        setState(() => _selectedDifficulty = null),
                  ),
                  const SizedBox(width: 8),
                  ...Difficulty.values.map(
                    (d) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ChoiceChip(
                        label: Text(_difficultyText(d)),
                        selected: _selectedDifficulty == d,
                        onSelected: (_) => setState(
                          () => _selectedDifficulty = _selectedDifficulty == d ? null : d,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Workout cards
              Text(
                '训练模块',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 16),
              ...filteredWorkouts.map(
                (w) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: WorkoutCard(
                    workout: w,
                    onTap: () => Navigator.pushNamed(
                      context,
                      '/workout',
                      arguments: {'workout': w},
                    ),
                  ),
                ),
              ),
              if (filteredWorkouts.isEmpty)
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text(
                      '未找到匹配的训练计划',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  String _difficultyText(Difficulty d) {
    return switch (d) {
      Difficulty.beginner => AppStrings.beginner,
      Difficulty.intermediate => AppStrings.intermediate,
      Difficulty.advanced => AppStrings.advanced,
    };
  }
}
