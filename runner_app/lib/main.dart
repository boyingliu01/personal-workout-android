import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:strength_app/presentation/screens/home_screen.dart';

void main() {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      FlutterError.onError = (details) {
        FlutterError.presentError(details);
        debugPrint('FlutterError: ${details.exception}');
      };

      try {
        await Hive.initFlutter();
        await Hive.openBox<dynamic>('settings');
        await Hive.openBox<String>('sessions');
      } on HiveError catch (e) {
        runApp(_AppErrorScreen(e.toString()));
        return;
      }

// Quality gates verification marker

      runApp(
        const ProviderScope(child: StrengthApp()),
      );
    },
    (error, stackTrace) {
      debugPrint('Uncaught async error: $error\n$stackTrace');
    },
  );
}

class StrengthApp extends StatelessWidget {
  const StrengthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '力量训练',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFF5A623),
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF8F9FA),
      ),
      home: const HomeScreen(),
    );
  }
}

class _AppErrorScreen extends StatelessWidget {
  final String errorMessage;

  const _AppErrorScreen(this.errorMessage);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, color: Colors.red, size: 64),
                const SizedBox(height: 24),
                const Text(
                  '初始化失败',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Text(
                  errorMessage,
                  style: const TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
