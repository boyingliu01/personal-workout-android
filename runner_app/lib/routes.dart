import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/settings_screen.dart';
import 'constants/exercise_data.dart';

/// App route definitions using Flutter's built-in named routes.
/// No external router packages — uses MaterialPageRoute + Navigator.pushNamed.
class AppRoutes {
  AppRoutes._();

  // Route names (used for Navigator.pushNamed)
  static const String home = '/';
  static const String workoutDetail = '/workout';
  static const String exercise = '/exercise';
  static const String rest = '/rest';
  static const String workoutComplete = '/complete';
  static const String settings = '/settings';
  static const String history = '/history';

  // Route path -> builder map for MaterialApp.routes
  // Note: The actual screen widgets are not defined here.
  // Each entry maps a path to a MaterialPageRoute builder.
  static Map<String, WidgetBuilder> get routes => {
        home: (context) => HomeScreen(
              workouts: ExerciseData.allWorkouts,
            ),
        workoutDetail: (_) =>
            throw UnimplementedError('WorkoutDetailScreen not implemented'),
        exercise: (_) =>
            throw UnimplementedError('ExerciseScreen not implemented'),
        rest: (_) => throw UnimplementedError('RestScreen not implemented'),
        workoutComplete: (_) =>
            throw UnimplementedError('WorkoutCompleteScreen not implemented'),
        settings: (context) => const SettingsScreen(),
        history: (_) =>
            throw UnimplementedError('HistoryScreen not implemented'),
      };
}
