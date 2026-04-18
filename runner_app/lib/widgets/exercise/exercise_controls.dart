import 'package:flutter/material.dart';

class ExerciseControls extends StatelessWidget {
  final bool isPaused;
  final VoidCallback onPrevious;
  final ValueChanged<bool> onPauseResume;
  final VoidCallback onNext;
  final VoidCallback onSkip;

  const ExerciseControls({
    super.key,
    this.isPaused = false,
    required this.onPrevious,
    required this.onPauseResume,
    required this.onNext,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.skip_previous),
              onPressed: onPrevious,
              tooltip: '上一个',
            ),
            IconButton(
              icon: Icon(isPaused ? Icons.play_arrow : Icons.pause),
              onPressed: () => onPauseResume(isPaused),
              tooltip: isPaused ? '播放' : '暂停',
            ),
            IconButton(
              icon: const Icon(Icons.skip_next),
              onPressed: onNext,
              tooltip: '下一个',
            ),
            IconButton(
              icon: const Icon(Icons.fast_forward),
              onPressed: onSkip,
              tooltip: '跳过',
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: LinearProgressIndicator(),
        ),
      ],
    );
  }
}
