import 'package:flutter/material.dart';
import 'package:strength_app/domain/entities/training_session.dart';

/// Weekly statistics data point.
class WeeklyStat {
  final String label;
  final int value;
  const WeeklyStat(this.label, this.value);
}

/// Computes weekly stats from training sessions.
List<WeeklyStat> computeWeeklyStats(List<TrainingSession> sessions) {
  final now = DateTime.now();
  final stats = <WeeklyStat>[];
  const dayNames = ['一', '二', '三', '四', '五', '六', '日'];

  // Find the Monday of this week
  final weekday = now.weekday; // 1=Monday, 7=Sunday
  final monday = now.subtract(Duration(days: weekday - 1));
  final startOfWeek = DateTime(monday.year, monday.month, monday.day);

  for (var i = 0; i < 7; i++) {
    final dayStart = startOfWeek.add(Duration(days: i));
    final dayEnd = dayStart.add(const Duration(days: 1));
    final count = sessions.where((s) {
      return s.startTime.isAfter(dayStart) && s.startTime.isBefore(dayEnd);
    }).length;
    stats.add(WeeklyStat(dayNames[i], count));
  }
  return stats;
}

/// Computes total training minutes for the week.
int computeWeeklyTotalMinutes(List<TrainingSession> sessions) {
  final now = DateTime.now();
  final weekday = now.weekday;
  final monday = now.subtract(Duration(days: weekday - 1));
  final startOfWeek = DateTime(monday.year, monday.month, monday.day);

  return sessions
      .where((s) => s.startTime.isAfter(startOfWeek))
      .fold<int>(0, (sum, s) => sum + s.totalSeconds) ~/ 60;
}

/// Computes total training count for the week.
int computeWeeklyTotalCount(List<TrainingSession> sessions) {
  final now = DateTime.now();
  final weekday = now.weekday;
  final monday = now.subtract(Duration(days: weekday - 1));
  final startOfWeek = DateTime(monday.year, monday.month, monday.day);

  return sessions.where((s) => s.startTime.isAfter(startOfWeek)).length;
}

/// A simple bar chart widget showing weekly training stats.
class WeeklyBarChart extends StatelessWidget {
  final List<WeeklyStat> stats;
  final Color barColor;

  const WeeklyBarChart({
    super.key,
    required this.stats,
    this.barColor = const Color(0xFFF5A623),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: CustomPaint(
        size: Size.infinite,
        painter: _BarChartPainter(stats: stats, barColor: barColor),
      ),
    );
  }
}

class _BarChartPainter extends CustomPainter {
  final List<WeeklyStat> stats;
  final Color barColor;

  _BarChartPainter({required this.stats, required this.barColor});

  @override
  void paint(Canvas canvas, Size size) {
    if (stats.isEmpty) return;

    final maxValue = stats.map((s) => s.value).reduce((a, b) => a > b ? a : b);
    final effectiveMax = maxValue > 0 ? maxValue : 1;

    final barWidth = size.width / (stats.length * 2 + 1);
    final chartHeight = size.height - 30; // Reserve 30px for labels

    final barPaint = Paint()
      ..color = barColor
      ..style = PaintingStyle.fill;

    final bgPaint = Paint()
      ..color = barColor.withValues(alpha: 0.15)
      ..style = PaintingStyle.fill;

    final textPainter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    for (var i = 0; i < stats.length; i++) {
      final stat = stats[i];
      final barHeight = (stat.value / effectiveMax) * chartHeight;
      final x = barWidth * (2 * i + 1);
      final y = chartHeight - barHeight;

      // Background bar
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(x, 0, barWidth, chartHeight),
          const Radius.circular(4),
        ),
        bgPaint,
      );

      // Actual bar
      if (barHeight > 0) {
        canvas.drawRRect(
          RRect.fromRectAndRadius(
            Rect.fromLTWH(x, y, barWidth, barHeight),
            const Radius.circular(4),
          ),
          barPaint,
        );

        // Value label above bar
        if (stat.value > 0) {
          textPainter.text = TextSpan(
            text: '${stat.value}',
            style: TextStyle(
              color: barColor,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          );
          textPainter.layout();
          textPainter.paint(
            canvas,
            Offset(x + barWidth / 2 - textPainter.width / 2, y - 16),
          );
        }
      }

      // Day label below
      textPainter.text = TextSpan(
        text: stat.label,
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 12,
        ),
      );
      textPainter.layout();
      textPainter.paint(
        canvas,
        Offset(x + barWidth / 2 - textPainter.width / 2, chartHeight + 8),
      );
    }
  }

  @override
  bool shouldRepaint(covariant _BarChartPainter oldDelegate) {
    return oldDelegate.stats != stats || oldDelegate.barColor != barColor;
  }
}
