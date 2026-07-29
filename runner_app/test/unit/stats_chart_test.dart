import 'package:flutter_test/flutter_test.dart';
import 'package:strength_app/domain/entities/training_session.dart';
import 'package:strength_app/presentation/widgets/stats_chart.dart';

/// Helper to create a TrainingSession with a specific start time.
TrainingSession _makeSession({
  required String id,
  required DateTime startTime,
  int totalSeconds = 600,
}) {
  return TrainingSession(
    id: id,
    workoutId: 'legs',
    workoutName: '训练',
    startTime: startTime,
    completedExercises: 4,
    totalExercises: 4,
    totalSeconds: totalSeconds,
    exerciseLogs: const [],
  );
}

/// Returns a DateTime for a specific day this week (Mon=0 .. Sun=6).
/// Hours default to 10:00 to stay clearly within a single day.
DateTime _thisWeekDay(int dayOffset, {int hour = 10}) {
  final now = DateTime.now();
  final weekday = now.weekday; // 1=Monday, 7=Sunday
  final monday = DateTime(now.year, now.month, now.day)
      .subtract(Duration(days: weekday - 1));
  return monday.add(Duration(days: dayOffset, hours: hour));
}

void main() {
  group('computeWeeklyStats', () {
    test('returns 7 entries (one per day)', () {
      final stats = computeWeeklyStats([]);
      expect(stats.length, 7);
    });

    test('labels are correct day names', () {
      final stats = computeWeeklyStats([]);
      expect(stats.map((s) => s.label).toList(),
          ['一', '二', '三', '四', '五', '六', '日'],
      );
    });

    test('counts sessions correctly for each day', () {
      final sessions = [
        _makeSession(id: '1', startTime: _thisWeekDay(0)), // Monday
        _makeSession(id: '2', startTime: _thisWeekDay(0)), // Monday
        _makeSession(id: '3', startTime: _thisWeekDay(2)), // Wednesday
        _makeSession(id: '4', startTime: _thisWeekDay(4)), // Friday
      ];

      final stats = computeWeeklyStats(sessions);
      expect(stats[0].value, 2); // Monday
      expect(stats[1].value, 0); // Tuesday
      expect(stats[2].value, 1); // Wednesday
      expect(stats[3].value, 0); // Thursday
      expect(stats[4].value, 1); // Friday
      expect(stats[5].value, 0); // Saturday
      expect(stats[6].value, 0); // Sunday
    });

    test('empty session list returns all-zero stats', () {
      final stats = computeWeeklyStats([]);
      for (final stat in stats) {
        expect(stat.value, 0, reason: 'Expected 0 for ${stat.label}');
      }
    });
  });

  group('computeWeeklyTotalMinutes', () {
    test('sums session seconds correctly and converts to minutes', () {
      final sessions = [
        _makeSession(id: '1', startTime: _thisWeekDay(0), totalSeconds: 1200),
        _makeSession(id: '2', startTime: _thisWeekDay(1)),
      ];

      final total = computeWeeklyTotalMinutes(sessions);
      expect(total, 30); // (1200 + 600) / 60 = 30
    });

    test('returns 0 for empty session list', () {
      expect(computeWeeklyTotalMinutes([]), 0);
    });

    test('excludes sessions from previous weeks', () {
      final now = DateTime.now();
      final lastWeek = now.subtract(const Duration(days: 10));
      final sessions = [
        _makeSession(id: 'old', startTime: lastWeek, totalSeconds: 3600),
        _makeSession(
            id: 'current', startTime: _thisWeekDay(0), totalSeconds: 1200,
        ),
      ];

      final total = computeWeeklyTotalMinutes(sessions);
      expect(total, 20); // Only 1200 / 60 = 20
    });
  });

  group('computeWeeklyTotalCount', () {
    test('counts sessions correctly', () {
      final sessions = [
        _makeSession(id: '1', startTime: _thisWeekDay(0)),
        _makeSession(id: '2', startTime: _thisWeekDay(2)),
        _makeSession(id: '3', startTime: _thisWeekDay(4)),
      ];

      expect(computeWeeklyTotalCount(sessions), 3);
    });

    test('returns 0 for empty session list', () {
      expect(computeWeeklyTotalCount([]), 0);
    });

    test('excludes sessions from previous weeks', () {
      final now = DateTime.now();
      final lastWeek = now.subtract(const Duration(days: 10));
      final sessions = [
        _makeSession(id: 'old', startTime: lastWeek),
        _makeSession(id: 'current', startTime: _thisWeekDay(0)),
      ];

      expect(computeWeeklyTotalCount(sessions), 1);
    });
  });
}
