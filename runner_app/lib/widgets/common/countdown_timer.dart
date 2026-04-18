import 'package:flutter/material.dart';
import 'package:runner_app/constants/app_colors.dart';

/// Circular countdown timer widget.
///
/// Displays remaining time as a number inside a circular progress indicator.
/// Color changes to warning when less than 5 seconds remain.
class CountdownTimer extends StatelessWidget {
  /// Total duration in seconds.
  final int totalSeconds;

  /// Remaining time in seconds.
  final int remainingSeconds;

  /// Callback fired when countdown reaches zero.
  final VoidCallback? onCompleted;

  const CountdownTimer({
    super.key,
    required this.totalSeconds,
    required this.remainingSeconds,
    this.onCompleted,
  });

  @override
  Widget build(BuildContext context) {
    // Trigger callback when time is up.
    if (remainingSeconds == 0) {
      onCompleted?.call();
    }

    final progress = totalSeconds > 0 ? remainingSeconds / totalSeconds : 0.0;
    final isWarning = remainingSeconds < 5 && remainingSeconds >= 0;

    return SizedBox(
      width: 120,
      height: 120,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 120,
            height: 120,
            child: CircularProgressIndicator(
              value: progress,
              strokeWidth: 8,
              backgroundColor: AppColors.primary.withOpacity(0.2),
              color: isWarning ? AppColors.warning : AppColors.primary,
            ),
          ),
          Text(
            '$remainingSeconds',
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: AppColors.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
