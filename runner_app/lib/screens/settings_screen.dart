import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:runner_app/constants/app_strings.dart';
import 'package:runner_app/constants/app_colors.dart';

/// Settings screen for user preferences and app configuration.
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int _defaultExerciseDuration = 30;
  int _defaultRestDuration = 5;
  bool _audioMuted = false;

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _defaultExerciseDuration = prefs.getInt('defaultExerciseDuration') ?? 30;
      _defaultRestDuration = prefs.getInt('defaultRestDuration') ?? 5;
      _audioMuted = prefs.getBool('audioMuted') ?? false;
    });
  }

  Future<void> _saveSetting(String key, dynamic value) async {
    final prefs = await SharedPreferences.getInstance();
    if (value is int) {
      await prefs.setInt(key, value);
    } else if (value is bool) {
      await prefs.setBool(key, value);
    }
  }

  Future<void> _clearHistory() async {
    // Show confirmation dialog
    bool confirm = await showDialog<bool>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('确认操作'),
              content: const Text('确定要清除所有训练历史记录吗？此操作不可撤销。'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('取消'),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: const Text('清除'),
                ),
              ],
            );
          },
        ) ??
        false;

    if (confirm) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove('workoutHistory'); // Clear workout history
      // In a real app, you'd clear the actual workout history data

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('历史记录已清除')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.settingsTitle),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.onPrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // App version
          Card(
            child: ListTile(
              title: const Text(AppStrings.about),
              subtitle: const Text('${AppStrings.version}: 1.0.0'),
              leading: const Icon(Icons.info_outline),
            ),
          ),
          const SizedBox(height: 16),

          // Exercise duration settings
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '默认训练时长',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const Text(
                    '设置每个动作的默认训练时间（秒）',
                    style: TextStyle(color: AppColors.onSurfaceVariant),
                  ),
                  const SizedBox(height: 16),
                  DropdownButton<int>(
                    isExpanded: true,
                    value: _defaultExerciseDuration,
                    items: [30, 45, 60].map((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Text('$value秒'),
                      );
                    }).toList(),
                    onChanged: (int? newValue) {
                      if (newValue != null) {
                        setState(() {
                          _defaultExerciseDuration = newValue;
                        });
                        _saveSetting('defaultExerciseDuration', newValue);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Rest duration settings
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '默认休息间隔',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const Text(
                    '设置每次训练动作间的默认休息时间（秒）',
                    style: TextStyle(color: AppColors.onSurfaceVariant),
                  ),
                  const SizedBox(height: 16),
                  DropdownButton<int>(
                    isExpanded: true,
                    value: _defaultRestDuration,
                    items: [3, 5, 10].map((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Text('$value秒'),
                      );
                    }).toList(),
                    onChanged: (int? newValue) {
                      if (newValue != null) {
                        setState(() {
                          _defaultRestDuration = newValue;
                        });
                        _saveSetting('defaultRestDuration', newValue);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Audio settings
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.countdownBeep,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      const Text(
                        '训练过程中的提示音',
                        style: TextStyle(color: AppColors.onSurfaceVariant),
                      ),
                    ],
                  ),
                  Switch(
                    value: _audioMuted,
                    onChanged: (bool value) {
                      setState(() {
                        _audioMuted = value;
                      });
                      _saveSetting('audioMuted', value);
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Clear history button
          Card(
            color: AppColors.errorContainer,
            child: ListTile(
              leading: const Icon(
                Icons.delete_forever,
                color: AppColors.error,
              ),
              title: const Text(
                '清除训练历史',
                style: TextStyle(color: AppColors.error),
              ),
              subtitle: const Text(
                '清空本地历史记录数据',
                style: TextStyle(color: AppColors.error),
              ),
              onTap: _clearHistory,
            ),
          ),
        ],
      ),
    );
  }
}
