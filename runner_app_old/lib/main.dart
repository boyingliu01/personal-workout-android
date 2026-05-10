import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'constants/app_theme.dart';
import 'constants/app_strings.dart';
import 'constants/exercise_data.dart';
import 'routes.dart';

/// Main entry point for the Runner Training app
void main() {
  runApp(
    const ProviderScope(
      child: RunnerTrainingApp(),
    ),
  );
}

/// Main application widget
class RunnerTrainingApp extends StatelessWidget {
  const RunnerTrainingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle,
      theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.home,
      // Use onGenerateRoute for parameterized navigation
      onGenerateRoute: AppRoutes.onGenerateRoute,
      home: const HomeScreenProvider(),
    );
  }
}

/// Wrapper that provides workout data to HomeScreen
class HomeScreenProvider extends StatelessWidget {
  const HomeScreenProvider({super.key});

  @override
  Widget build(BuildContext context) {
    // Import HomeScreen via routes to avoid circular deps
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, AppRoutes.home),
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
