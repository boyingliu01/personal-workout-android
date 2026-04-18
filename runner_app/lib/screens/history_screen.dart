import 'package:flutter/material.dart';
import 'package:runner_app/constants/app_strings.dart';
import 'package:runner_app/constants/app_colors.dart';

/// History screen showing past training sessions.
class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final List<Map<String, dynamic>> _history = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.historyTitle)),
      body: _history.isEmpty
          ? Center(
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
            )
          : ListView.builder(
              itemCount: _history.length,
              itemBuilder: (context, index) {
                final session = _history[index];
                return Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: const Icon(Icons.fitness_center,
                        color: AppColors.primary),
                    title: Text(session['workoutName'] ?? '训练'),
                    subtitle: Text(session['date'] ?? ''),
                    trailing: Text('${session['duration'] ?? 0}分钟'),
                  ),
                );
              },
            ),
    );
  }
}
