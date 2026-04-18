import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'routes.dart';
import 'constants/app_theme.dart';
import 'constants/app_strings.dart';

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
      routes: AppRoutes.routes,
    );
  }
}
