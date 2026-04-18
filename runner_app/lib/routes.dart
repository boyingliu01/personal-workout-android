import 'package:flutter/material.dart';
import 'constants/exercise_data.dart';
import 'screens/home_screen.dart';
import 'screens/workout_detail_screen.dart';
import 'screens/exercise_screen.dart';
import 'screens/rest_screen.dart';
import 'screens/workout_complete_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/history_screen.dart';
import 'services/audio_service.dart';
import 'services/timer_service.dart';
import 'services/storage_service.dart';
import 'models/exercise.dart';
import 'models/workout_type.dart';
import 'models/workout_session.dart';

/// App route definitions
class AppRoutes {
  AppRoutes._();

  static const String home = '/';
  static const String workoutDetail = '/workout';
  static const String exercise = '/exercise';
  static const String rest = '/rest';
  static const String workoutComplete = '/complete';
  static const String settings = '/settings';
  static const String history = '/history';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final audioService = AudioService.create();
    final timerService = TimerService();
    final storageService = StorageService();
    final placeholder = Exercise(
      id: '', name: '', description: '',
      durationSeconds: 0,
      difficulty: Difficulty.beginner,
      category: ExerciseCategory.fullBody,
    );

    if (settings.name == home) {
      return MaterialPageRoute(
        builder: (_) => HomeScreen(workouts: ExerciseData.allWorkouts),
      );
    }
    if (settings.name == workoutDetail) {
      final args = settings.arguments as Map<String, dynamic>?;
      return MaterialPageRoute(
        builder: (_) => WorkoutDetailScreen(
          workout: args?['workout'] ?? ExerciseData.allWorkouts.first,
        ),
      );
    }
    if (settings.name == exercise) {
      final args = settings.arguments as Map<String, dynamic>?;
      return MaterialPageRoute(
        builder: (_) => ExerciseScreen(
          workout: args?['workout'] ?? ExerciseData.allWorkouts.first,
          audioService: audioService,
          timerService: timerService,
          storageService: storageService,
        ),
      );
    }
    if (settings.name == rest) {
      final args = settings.arguments as Map<String, dynamic>?;
      return MaterialPageRoute(
        builder: (_) => RestScreen(
          seconds: args?['seconds'] ?? 5,
          currentExercise: args?['currentExercise'] ?? placeholder,
          nextExercise: args?['nextExercise'] ?? placeholder,
        ),
      );
    }
    if (settings.name == workoutComplete) {
      final args = settings.arguments as Map<String, dynamic>?;
      return MaterialPageRoute(
        builder: (_) => WorkoutCompleteScreen(
          session: args?['session'] ?? WorkoutSession(
            id: 'demo', workoutId: '',
            workoutName: args?['workoutName'] ?? '训练',
            workoutType: WorkoutType.warmup,
            startTime: DateTime.now(), endTime: DateTime.now(),
            completedExercises: args?['exercisesCompleted'] ?? 0,
            totalExercises: args?['totalExercises'] ?? 0,
            status: WorkoutStatus.completed,
          ),
          audioService: audioService,
        ),
      );
    }
    if (settings.name == settings) {
      return MaterialPageRoute(builder: (_) => const SettingsScreen());
    }
    if (settings.name == history) {
      return MaterialPageRoute(builder: (_) => const HistoryScreen());
    }
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Not Found')),
        body: Center(child: Text('Route ${settings.name} not found')),
      ),
    );
  }

  static void navigateToExercise(BuildContext context, {required dynamic workout}) {
    Navigator.pushNamed(context, exercise, arguments: {'workout': workout});
  }

  static void navigateToWorkoutDetail(BuildContext context, {required dynamic workout}) {
    Navigator.pushNamed(context, workoutDetail, arguments: {'workout': workout});
  }
}
