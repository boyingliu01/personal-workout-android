import 'package:flutter/material.dart';
import 'package:runner_app/constants/app_colors.dart';

/// Horizontal progress dots showing current position in a sequence.
///
/// Displays [total] dots with [current] filled. Inactive dots are outlined.
/// Each dot is tappable to jump to a specific position when [onTap] is provided.
class ProgressDots extends StatelessWidget {
  /// Total number of items in the sequence.
  final int total;

  /// Current position (1-based count of completed items).
  final int current;

  /// Callback when a dot is tapped, with 0-based position index.
  final void Function(int position)? onTap;

  const ProgressDots({
    super.key,
    required this.total,
    required this.current,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: List.generate(total, (index) {
        final isActive = index < current;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: GestureDetector(
            onTap: onTap != null ? () => onTap!(index) : null,
            child: Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isActive ? AppColors.primary : null,
                border: isActive
                    ? null
                    : Border.all(color: AppColors.divider, width: 2),
              ),
            ),
          ),
        );
      }),
    );
  }
}
