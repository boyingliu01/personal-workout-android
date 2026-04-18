import 'package:flutter/material.dart';
import 'package:runner_app/models/workout_session.dart';
import 'package:runner_app/services/audio_service.dart';
import 'package:runner_app/widgets/exercise/exercise_video_player.dart';
import 'package:runner_app/widgets/exercise/exercise_controls.dart';
import 'package:runner_app/widgets/common/countdown_timer.dart';
import 'package:video_player/video_player.dart';

/// Training completion screen.
///
/// Displays:
/// - Congratulations message
/// - Training statistics (total exercises completed, total time spent, completion percentage)
/// - Options to view history or return to homepage
/// - Optional exercise video player and controls as an extra feature
///
/// Features:
/// - Audio service announcement when workout completes
/// - Navigation to history screen or home screen
/// - Statistic calculations and formatting
class WorkoutCompleteScreen extends StatefulWidget {
  final WorkoutSession session;
  final AudioService audioService;

  const WorkoutCompleteScreen({
    super.key,
    required this.session,
    required this.audioService,
  });

  @override
  State<WorkoutCompleteScreen> createState() => _WorkoutCompleteScreenState();
}

class _WorkoutCompleteScreenState extends State<WorkoutCompleteScreen> {
  late AudioService _audioService;
  late WorkoutSession _session;
  VideoPlayerController? _videoController;
  bool _showExercisePreview = false;

  @override
  void initState() {
    super.initState();
    _audioService = widget.audioService;
    _session = widget.session;
    
    // Announce workout completion
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _audioService.announceWorkoutComplete();
    });
  }

  @override
  void dispose() {
    _videoController?.dispose();
    super.dispose();
  }

  /// Calculate completion percentage
  double _calculateCompletionPercentage() {
    if (_session.totalExercises == 0) return 0.0;
    return (_session.completedExercises / _session.totalExercises) * 100;
  }

  /// Format total time spent as minutes string
  String _formatTotalTime() {
    final minutes = _session.totalSeconds ~/ 60;
    if (minutes == 0 && _session.totalSeconds > 0) {
      // Show "少于1分钟" if less than one minute
      return '<1分钟';
    }
    return '${minutes}分钟';
  }

  /// Navigate to history screen
  void _navigateToHistory() {
    Navigator.pushNamed(context, '/history');
  }

  /// Navigate to home screen
  void _toggleExercisePreview() {
    setState(() {
      _showExercisePreview = !_showExercisePreview;
    });
  }

  @override
  Widget build(BuildContext context) {
    final completionPercentage = _calculateCompletionPercentage();

    return Scaffold(
      appBar: AppBar(
        title: const Text('训练完成'),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Top section with greeting and stats
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // Congratulation Message
                      Container(
                        margin: const EdgeInsets.only(top: 40, bottom: 40),
                        padding: const EdgeInsets.all(16),
                        child: const Text(
                          '训练完成，真棒！',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      // Workout info
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Text(
                              _session.workoutName,
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),

                      // Stats Grid
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 24),
                        child: Card(
                          elevation: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                // Total Exercises Completed
                                _buildStatItem(
                                  title: '总完成',
                                  value: '${_session.completedExercises}',
                                  unit: '项',
                                  icon: Icons.check_circle,
                                  color: Colors.green,
                                ),
                                
                                // Total Time Spent
                                _buildStatItem(
                                  title: '总用时',
                                  value: _formatTotalTime(),
                                  unit: '',
                                  icon: Icons.timer,
                                  color: Colors.blue,
                                ),
                                
                                // Completion Percentage
                                _buildStatItem(
                                  title: '完成度',
                                  value: '${completionPercentage.toInt()}',
                                  unit: '%',
                                  icon: Icons.bar_chart,
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // Detailed Stats
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '详细统计',
                                  style: Theme.of(context).textTheme.headlineSmall,
                                ),
                              ),
                              const Divider(),
                              
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('练习总数'),
                                    Text('${_session.totalExercises} 项'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('已完成'),
                                    Text('${_session.completedExercises} 项'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('训练时间'),
                                    Text(_formatTotalTime()),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      
                      // Optional Exercise Preview Toggle
                      InkWell(
                        onTap: _toggleExercisePreview,
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          margin: const EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Theme.of(context).secondaryHeaderColor.withAlpha(50),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                _showExercisePreview ? Icons.visibility_off : Icons.visibility,
                                color: Theme.of(context).primaryColor,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                _showExercisePreview ? '隐藏预览' : '查看动作预览',
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      
                      // Preview video player if toggled
                      if (_showExercisePreview)
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 16),
                          height: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: ExerciseVideoPlayer(
                              controller: _videoController,
                              isLoading: false,
                              hasError: false,
                              imagePath: null,
                            ),
                          ),
                        ),
                      
                      if (_showExercisePreview)
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 32),
                          child: ExerciseControls(
                            isPaused: false, // Placeholder value
                            onPrevious: () => print('Prev'),
                            onPauseResume: (isPaused) => print('Toggled: $isPaused'),
                            onNext: () => print('Next'),
                            onSkip: () => print('Skip'),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              // Bottom Section with Buttons
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // Primary Action Button
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: _navigateToHistory,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          '查看历史记录',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    
                    const SizedBox(height: 16),
                    
                    // Secondary Action Button
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            '/',
                            (route) => false, // Remove all previous routes
                          );
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: Theme.of(context).primaryColor,
                          ),
                          foregroundColor: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          '返回首页',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Build a statistic item with icon, value, and title
  Widget _buildStatItem({
    required String title,
    required String value, 
    required String unit,
    required IconData icon,
    required Color color,
  }) {
    return Column(
      children: [
        Icon(icon, size: 32, color: color),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          '${title}${unit.isNotEmpty ? ' $unit' : ''}',
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}