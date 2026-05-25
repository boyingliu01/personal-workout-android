import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:strength_app/core/services/audio_service.dart';
import 'package:strength_app/core/services/timer_service.dart';
import 'package:strength_app/domain/entities/exercise.dart';
import 'package:strength_app/presentation/providers/audio_provider.dart';
import 'package:strength_app/presentation/providers/settings_provider.dart';
import 'package:strength_app/presentation/providers/training_session_provider.dart';

class ExerciseScreen extends ConsumerStatefulWidget {
  const ExerciseScreen({super.key});

  @override
  ConsumerState<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends ConsumerState<ExerciseScreen> {
  final TimerService _timer = TimerService();
  late StreamSubscription<int> _subscription;
  int _elapsedSeconds = 0;
  late AudioService _audioService;

  @override
  void initState() {
    super.initState();

    _audioService = ref.read(audioServiceProvider);
    final settings = ref.read(settingsProvider);
    unawaited(_audioService.preload(
      volume: settings.volume,
      voiceOn: settings.voiceEnabled,
    ));

    _timer.start();
    _playExerciseStartPrompt();

    _subscription = _timer.stream.listen((seconds) {
      if (!mounted) return;
      setState(() {
        _elapsedSeconds = seconds;
      });

      final exercise = ref.read(trainingSessionProvider).currentExercise;
      if (exercise != null) {
        _playCountdownForExercise(seconds, exercise);
        if (seconds >= exercise.durationSeconds) {
          _onTimerComplete();
        }
      }
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    _timer.dispose();
    // Don't call _audioService.stop() here - TrainingFlowScreen swaps widgets
    // via state change (not Navigator), so dispose() triggers on every
    // exercise→rest transition. Stopping TTS here kills ongoing audio.
    super.dispose();
  }

  /// Play "准备开始 — [动作名称]" when entering exercise.
  void _playExerciseStartPrompt() {
    final settings = ref.read(settingsProvider);
    if (!settings.voiceEnabled) return;
    final exercise = ref.read(trainingSessionProvider).currentExercise;
    if (exercise != null) {
      _audioService.speak('准备开始 — ${exercise.name}');
    }
  }

  /// Play countdown voice at the last 5 seconds, tick otherwise.
  void _playCountdownForExercise(int elapsed, Exercise exercise) {
    final remaining = exercise.durationSeconds - elapsed;
    final settings = ref.read(settingsProvider);
    if (remaining <= 5 && remaining > 0) {
      if (settings.voiceEnabled) {
        _audioService.speak('$remaining');
      }
    } else {
      if (settings.soundEnabled) {
        _audioService.playTick();
      }
    }
  }

  void _onTimerComplete() {
    final notifier = ref.read(trainingSessionProvider.notifier);
    final session = ref.read(trainingSessionProvider);
    final settings = ref.read(settingsProvider);

    if (session.isLastExercise) {
      if (settings.voiceEnabled) {
        _audioService.speak('时间到！恭喜，训练完成！');
      }
      notifier.completeWorkout();
    } else {
      final exercise = session.currentExercise;
      final restDuration = exercise?.restSeconds ?? 30;
      if (settings.voiceEnabled) {
        _audioService.speak('时间到！休息$restDuration秒');
      }
      notifier.nextExercise();
    }
  }

  void _togglePause() {
    final state = ref.read(trainingSessionProvider);
    final notifier = ref.read(trainingSessionProvider.notifier);

    if (state.isPaused) {
      _timer.resume();
      notifier.resumeExercise();
    } else {
      _timer.pause();
      notifier.pauseExercise();
    }
  }

  void _skipExercise() {
    _timer.stop();
    _timer.reset();
    setState(() {
      _elapsedSeconds = 0;
    });

    final notifier = ref.read(trainingSessionProvider.notifier);
    if (ref.read(trainingSessionProvider).isLastExercise) {
      notifier.completeWorkout();
    } else {
      notifier.nextExercise();
    }
  }

  @override
  Widget build(BuildContext context) {
    final sessionState = ref.watch(trainingSessionProvider);
    final exercise = sessionState.currentExercise;

    if (exercise == null) {
      return const _ErrorScreen();
    }

    final workout = sessionState.currentWorkout!;
    final remainingSeconds = exercise.durationSeconds - _elapsedSeconds;
    final progress = _elapsedSeconds / exercise.durationSeconds;

    return Scaffold(
      appBar: AppBar(
        title: Text(workout.name),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            _timer.stop();
            ref.read(trainingSessionProvider.notifier).goHome();
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
      ),
      body: Column(
        children: [
          ProgressDots(
            currentIndex: sessionState.currentExerciseIndex,
            total: workout.exercises.length,
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  CountdownTimer(
                    remainingSeconds: remainingSeconds,
                    progress: progress.clamp(0.0, 1.0),
                    isPaused: sessionState.isPaused,
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    '当前动作',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    exercise.name,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    exercise.targetMuscles.join(' · '),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    exercise.description,
                    style: const TextStyle(fontSize: 16, height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          ExerciseControls(
            isPaused: sessionState.isPaused,
            onTogglePause: _togglePause,
            onSkip: _skipExercise,
            showSkip: !sessionState.isLastExercise,
          ),
        ],
      ),
    );
  }
}

class _ErrorScreen extends StatelessWidget {
  const _ErrorScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('训练中')),
      body: const Center(child: Text('未找到当前动作')),
    );
  }
}

class CountdownTimer extends StatelessWidget {
  final int remainingSeconds;
  final double progress;
  final bool isPaused;

  const CountdownTimer({
    super.key,
    required this.remainingSeconds,
    required this.progress,
    required this.isPaused,
  });

  @override
  Widget build(BuildContext context) {
    final minutes = remainingSeconds ~/ 60;
    final seconds = remainingSeconds % 60;
    final displayTime = '$minutes:${seconds.toString().padLeft(2, '0')}';

    return SizedBox(
      width: 200,
      height: 200,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: CircularProgressIndicator(
              value: 1.0 - progress,
              strokeWidth: 8,
              backgroundColor: Colors.grey.shade200,
              valueColor: AlwaysStoppedAnimation<Color>(
                isPaused ? Colors.grey : const Color(0xFFF5A623),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                displayTime,
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: isPaused ? Colors.grey : const Color(0xFFF5A623),
                ),
              ),
              if (isPaused)
                const Text(
                  '已暂停',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProgressDots extends StatelessWidget {
  final int currentIndex;
  final int total;

  const ProgressDots({
    super.key,
    required this.currentIndex,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(total, (index) {
          final isActive = index == currentIndex;
          final isCompleted = index < currentIndex;

          return Container(
            width: 12,
            height: 12,
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isCompleted
                  ? const Color(0xFFF5A623)
                  : isActive
                      ? const Color(0xFFF5A623)
                      : Colors.grey.shade300,
              border: isActive
                  ? Border.all(color: const Color(0xFFF5A623), width: 2)
                  : null,
            ),
            child: isCompleted
                ? const Icon(Icons.check, size: 10, color: Colors.white)
                : null,
          );
        }),
      ),
    );
  }
}

class ExerciseControls extends StatelessWidget {
  final bool isPaused;
  final VoidCallback onTogglePause;
  final VoidCallback onSkip;
  final bool showSkip;

  const ExerciseControls({
    super.key,
    required this.isPaused,
    required this.onTogglePause,
    required this.onSkip,
    required this.showSkip,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton.icon(
                onPressed: onTogglePause,
                icon: Icon(isPaused ? Icons.play_arrow : Icons.pause),
                label: Text(isPaused ? '继续' : '暂停'),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            if (showSkip) const SizedBox(width: 16),
            if (showSkip)
              Expanded(
                child: FilledButton.icon(
                  onPressed: onSkip,
                  icon: const Icon(Icons.skip_next),
                  label: const Text('跳过'),
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
