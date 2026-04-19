import 'package:flutter/material.dart';
import 'package:runner_app/constants/app_strings.dart';
import 'package:runner_app/constants/app_colors.dart';
import 'package:runner_app/services/storage_service.dart';
import 'package:runner_app/models/workout_session.dart';
import 'package:runner_app/models/workout_type.dart';
import 'package:intl/intl.dart';

/// History screen showing past training sessions.
class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  /// Static method available for testing to group workout sessions by date
  static Map<String, List<WorkoutSession>> groupByDate(
      List<WorkoutSession> sessions) {
    return _HistoryScreenState._groupByDate(sessions);
  }

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  late Future<List<WorkoutSession>> _historyFuture;

  @override
  void initState() {
    super.initState();
    _historyFuture = _fetchHistory();
  }

  Future<List<WorkoutSession>> _fetchHistory() async {
    final storageService = StorageService();
    await storageService.init();
    return storageService.getHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.historyTitle)),
      body: FutureBuilder<List<WorkoutSession>>(
        future: _historyFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.error_outline, size: 64, color: Colors.red),
                  const SizedBox(height: 16),
                  Text(
                    '加载失败: ${snapshot.error}',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.red,
                        ),
                  ),
                ],
              ),
            );
          } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            final sessions = snapshot.data!;
            final groupedSessions = _groupByDate(sessions);

            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                for (final entry in groupedSessions.entries)
                  _SessionGroup(
                    header: entry.key,
                    sessions: entry.value,
                  ),
              ],
            );
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.history, size: 64, color: Colors.grey[400]),
                  const SizedBox(height: 16),
                  Text(
                    '暂无训练记录',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.grey[600],
                        ),
                  ),
                  const SizedBox(height: 8),
                  const Text('完成第一次训练后会显示在这里'),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  static Map<String, List<WorkoutSession>> _groupByDate(
      List<WorkoutSession> sessions) {
    final groupedSessions = <String, List<WorkoutSession>>{};

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final startOfWeek =
        today.subtract(Duration(days: today.weekday - 1)); // This week (Monday)

    for (final session in sessions) {
      final sessionDate = DateTime(session.startTime.year,
          session.startTime.month, session.startTime.day);

      String groupHeader;
      if (sessionDate == today) {
        groupHeader = '今天';
      } else if (sessionDate == yesterday) {
        groupHeader = '昨天';
      } else if (sessionDate.isAfter(startOfWeek) &&
          sessionDate.isBefore(today)) {
        groupHeader = '本周';
      } else if (sessionDate.isBefore(startOfWeek) &&
          sessionDate.isAfter(today.subtract(const Duration(days: 7)))) {
        groupHeader = '上周';
      } else {
        // Use formatted date for older sessions
        groupHeader = DateFormat('yyyy年MM月dd日').format(session.startTime);
      }

      groupedSessions.putIfAbsent(groupHeader, () => <WorkoutSession>[]);
      groupedSessions[groupHeader]!.add(session);
    }

    return groupedSessions;
  }
}

// Separate widget for session groups and sessions
class _SessionGroup extends StatelessWidget {
  final String header;
  final List<WorkoutSession> sessions;

  const _SessionGroup({
    required this.header,
    required this.sessions,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              header,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          const SizedBox(height: 8),
          ...sessions.map((session) => _SessionListItem(session: session)),
        ],
      ),
    );
  }
}

// Widget for individual session
class _SessionListItem extends StatelessWidget {
  final WorkoutSession session;

  const _SessionListItem({
    required this.session,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Icon(
          Icons.fitness_center,
          color: _getStatusColor(session.status),
        ),
        title: Text(session.workoutName),
        subtitle: RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style.copyWith(fontSize: 12),
            children: [
              TextSpan(
                text: '${_formatTime(session.startTime)} • ',
                style: const TextStyle(color: Colors.grey),
              ),
              TextSpan(
                text:
                    '${session.completedExercises}/${session.totalExercises} 练习 • ',
                style: const TextStyle(color: Colors.grey),
              ),
              TextSpan(
                text: _getSessionStatusLabel(session.status),
                style: TextStyle(
                  color: _getStatusColor(session.status),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              _formatDuration(session.totalSeconds),
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 4),
          ],
        ),
      ),
    );
  }

  Color _getStatusColor(WorkoutStatus status) {
    switch (status) {
      case WorkoutStatus.completed:
        return Colors.green;
      case WorkoutStatus.interrupted:
        return Colors.orange;
      default:
        return Colors.blue; // Default color
    }
  }

  String _getSessionStatusLabel(WorkoutStatus status) {
    switch (status) {
      case WorkoutStatus.completed:
        return '已完成';
      case WorkoutStatus.interrupted:
        return '已中断';
      case WorkoutStatus.paused:
        return '已暂停';
      default:
        return '未完成';
    }
  }

  // Format session time in HH:MM format
  String _formatTime(DateTime dateTime) {
    return DateFormat('HH:mm').format(dateTime);
  }

  // Format duration in seconds to h mm ss format
  String _formatDuration(int totalSeconds) {
    final hours = totalSeconds ~/ 3600;
    final minutes = (totalSeconds % 3600) ~/ 60;
    final seconds = totalSeconds % 60;

    if (hours > 0) {
      return '${hours}小时${minutes}分钟';
    } else if (minutes > 0) {
      return '${minutes}分${seconds}秒';
    } else {
      return '${seconds}秒';
    }
  }
}
