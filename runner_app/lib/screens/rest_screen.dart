import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:runner_app/constants/app_colors.dart';
import 'package:runner_app/constants/app_strings.dart';
import 'package:runner_app/models/exercise.dart';
import 'package:runner_app/widgets/common/countdown_timer.dart';

/// Rest period screen shown between exercises.
///
/// Shows a circular countdown timer counting down from the specified
/// seconds, displays the current exercise just completed, and previews 
/// the next upcoming exercise.
class RestScreen extends StatefulWidget {
  /// How many seconds to rest
  final int seconds;

  /// Completed exercise to display
  final Exercise currentExercise;

  /// Preview of upcoming exercise
  final Exercise nextExercise;

  const RestScreen({
    super.key,
    required this.seconds,
    required this.currentExercise,
    required this.nextExercise,
  });

  @override
  State<RestScreen> createState() => _RestScreenState();
}

class _RestScreenState extends State<RestScreen> with WidgetsBindingObserver {
  late int _remainingSeconds;
  late Timer _timer;
  bool _skipPressed = false;

  @override
  void initState() {
    super.initState();
    _remainingSeconds = widget.seconds;
    _startTimer();
    WidgetsBinding.instance.addObserver(this);
    
    // Initially lock orientation to portrait and keep screen on  
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    _timer.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused && mounted) {
      // If app goes to background during rest, cancel the timer
      _timer.cancel();
    } else if (state == AppLifecycleState.resumed && !_skipPressed && mounted) {
      // If app resumes and we still need to count down, restart timer
      if (_remainingSeconds > 0) {
        _startTimer();
      }
    }
  }

  void _startTimer() {
    if (_remainingSeconds <= 0) return;
    
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _remainingSeconds--;
        
        if (_remainingSeconds <= 0) {
          _timer.cancel();
          
          // Notify that rest period is completed
          _onRestComplete();
        }
      });
    });
  }

  void _onRestComplete() {
    // Pop with result indicating rest completed
    Navigator.of(context).pop({'completed': true});
  }

  void _skipRest() {
    setState(() {
      _skipPressed = true;
    });
    _timer.cancel();
    
    // Pop immediately indicating rest was skipped
    Navigator.of(context).pop({'skipped': true});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Countdown timer
                CountdownTimer(
                  totalSeconds: widget.seconds,
                  remainingSeconds: _remainingSeconds,
                  onCompleted: _onRestComplete,
                ),
                const SizedBox(height: 40),
                
                // Current exercise completed message
                Text(
                  '${widget.currentExercise.name}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.onSurface,
                  ),
                ),
                Text(
                  '已完成，休息时间',
                  style: const TextStyle(
                    fontSize: 16,
                    color: AppColors.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 40),
                
                // Next exercise preview
                Card(
                  elevation: 4,
                  color: AppColors.surface,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        const Text(
                          '准备下一个动作',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColors.onSurface,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.chevron_right,
                              color: AppColors.primary,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              widget.nextExercise.name,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: AppColors.onSurface,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                
                // Skip button
                SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    onPressed: _remainingSeconds > 0 ? _skipRest : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: AppColors.onPrimary,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      AppStrings.skip,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}