import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:strength_app/core/services/audio_service.dart';
import 'package:strength_app/core/services/timer_service.dart';
import 'package:strength_app/domain/entities/exercise.dart';
import 'package:strength_app/presentation/providers/audio_provider.dart';
import 'package:strength_app/presentation/providers/settings_provider.dart';
import 'package:strength_app/presentation/providers/training_session_provider.dart';

class RestScreen extends ConsumerStatefulWidget {
  const RestScreen({super.key});

  @override
  ConsumerState<RestScreen> createState() => _RestScreenState();
}

class _RestScreenState extends ConsumerState<RestScreen> {
  final TimerService _timer = TimerService();
  late StreamSubscription<int> _subscription;
  int _elapsedSeconds = 0;
  late AudioService _audioService;

  @override
  void initState() {
    super.initState();

    _audioService = ref.read(audioServiceProvider);
    final settings = ref.read(settingsProvider);
    unawaited(
      _audioService.preload(
        volume: settings.volume,
        voiceOn: settings.voiceEnabled,
      ),
    );

    _timer.start();
    _playRestStartPrompt();

    _subscription = _timer.stream.listen((seconds) {
      if (!mounted) return;
      setState(() {
        _elapsedSeconds = seconds;
      });

      final restDuration = _getRestDuration();
      final remaining = restDuration - seconds;
      _playCountdownForRest(remaining);

      if (seconds >= restDuration) {
        _onRestComplete();
      }
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    _timer.dispose();
    // Don't call _audioService.stop() here - TrainingFlowScreen swaps widgets
    // via state change (not Navigator), so dispose() triggers on every
    // rest→exercise transition. Stopping TTS here kills ongoing audio.
    super.dispose();
  }

  /// Play "准备继续 — [下一个动作名称]" when rest starts.
  void _playRestStartPrompt() {
    final settings = ref.read(settingsProvider);
    if (!settings.voiceEnabled) return;
    final session = ref.read(trainingSessionProvider);
    final upcoming = session.currentExercise;
    if (upcoming != null) {
      _audioService.speak('准备继续 — ${upcoming.name}');
    }
  }

  /// Play countdown voice at the last 3 seconds, tick otherwise.
  void _playCountdownForRest(int remaining) {
    final settings = ref.read(settingsProvider);
    if (remaining <= 3 && remaining > 0) {
      if (settings.voiceEnabled) {
        _audioService.speak('$remaining');
      }
    } else {
      if (settings.soundEnabled) {
        _audioService.playTick();
      }
    }
  }

  int _getRestDuration() {
    final state = ref.read(trainingSessionProvider);
    final exercise = state.currentExercise;
    return exercise?.restSeconds ?? 30;
  }

  void _onRestComplete() {
    _timer.stop();
    final notifier = ref.read(trainingSessionProvider.notifier);
    final settings = ref.read(settingsProvider);
    if (ref.read(trainingSessionProvider).isLastExercise) {
      if (settings.voiceEnabled) {
        _audioService.speak('时间到！恭喜，训练完成！');
      }
      notifier.completeWorkout();
    } else {
      notifier.skipRest();
    }
  }

  void _skipRest() {
    _timer.stop();
    ref.read(trainingSessionProvider.notifier).skipRest();
  }

  @override
  Widget build(BuildContext context) {
    final sessionState = ref.watch(trainingSessionProvider);
    final restDuration = _getRestDuration();
    final remainingSeconds = restDuration - _elapsedSeconds;
    final progress = _elapsedSeconds / restDuration;
    // nextExercise() already advanced the index, so during rest
    // currentExercise IS the upcoming exercise.
    final upcomingExercise = sessionState.currentExercise;

    return Scaffold(
      appBar: AppBar(
        title: const Text('休息中'),
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
          const SizedBox(height: 32),
          _RestTimer(
            remainingSeconds: remainingSeconds,
            progress: progress.clamp(0.0, 1.0),
          ),
          const SizedBox(height: 32),
          if (upcomingExercise != null)
            _NextExercisePreview(exercise: upcomingExercise)
          else
            const _LastExerciseMessage(),
          const Spacer(),
          _RestControls(onSkip: _skipRest),
        ],
      ),
    );
  }
}

class _RestTimer extends StatelessWidget {
  final int remainingSeconds;
  final double progress;

  const _RestTimer({
    required this.remainingSeconds,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    final minutes = remainingSeconds ~/ 60;
    final seconds = remainingSeconds % 60;
    final displayTime = '$minutes:${seconds.toString().padLeft(2, '0')}';

    return SizedBox(
      width: 160,
      height: 160,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 160,
            height: 160,
            child: CircularProgressIndicator(
              value: 1.0 - progress,
              strokeWidth: 6,
              backgroundColor: Colors.grey.shade200,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
            ),
          ),
          Text(
            displayTime,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

class _NextExercisePreview extends StatelessWidget {
  final Exercise exercise;

  const _NextExercisePreview({required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              '下一个动作',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Text(
              exercise.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              exercise.targetMuscles.join(' · '),
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class _LastExerciseMessage extends StatelessWidget {
  const _LastExerciseMessage();

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(Icons.celebration, size: 48, color: Color(0xFFF5A623)),
            SizedBox(height: 12),
            Text(
              '最后一个动作！',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class _RestControls extends StatelessWidget {
  final VoidCallback onSkip;

  const _RestControls({required this.onSkip});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: FilledButton.icon(
          onPressed: onSkip,
          icon: const Icon(Icons.skip_next),
          label: const Text('跳过休息'),
          style: FilledButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
            textStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
