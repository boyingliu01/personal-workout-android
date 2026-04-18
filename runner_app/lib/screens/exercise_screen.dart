import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:runner_app/models/workout.dart';
import 'package:runner_app/models/exercise.dart';
import 'package:runner_app/models/workout_type.dart';
import 'package:runner_app/models/timer_status.dart';
import 'package:runner_app/models/workout_session.dart';
import 'package:runner_app/widgets/exercise/exercise_video_player.dart';
import 'package:runner_app/widgets/exercise/exercise_controls.dart';
import 'package:runner_app/widgets/common/countdown_timer.dart';
import 'package:runner_app/widgets/common/progress_dots.dart';
import 'package:runner_app/widgets/common/audio_controller.dart';
import 'package:runner_app/services/audio_service.dart';
import 'package:runner_app/services/timer_service.dart';
import 'package:runner_app/services/haptic_service.dart';
import 'package:runner_app/services/storage_service.dart';
import 'package:runner_app/routes.dart';

/// Core training execution screen for individual exercises.
class ExerciseScreen extends StatefulWidget {
  final Workout workout;
  final AudioService audioService;
  final TimerService timerService;
  final StorageService storageService;

  const ExerciseScreen({
    super.key,
    required this.workout,
    required this.audioService,
    required this.timerService,
    required this.storageService,
  });

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  late final HapticService _hapticService;
  late List<Exercise> _exercises;
  int _currentIndex = 0;
  VideoPlayerController? _videoController;
  bool _isLoadingVideo = false;
  bool _videoError = false;
  String? _fallbackImagePath;
  WorkoutSession? _session;

  @override
  void initState() {
    super.initState();
    _hapticService = HapticService();
    _exercises = widget.workout.exercises;
    widget.timerService.setOnComplete(_onExerciseComplete);
    _createSession();
    _initCurrentExercise();
  }

  @override
  void dispose() {
    _disposeVideoController();
    widget.timerService.reset();
    super.dispose();
  }

  void _createSession() {
    _session = WorkoutSession(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      workoutId: widget.workout.id,
      workoutName: widget.workout.name,
      workoutType: widget.workout.type,
      startTime: DateTime.now(),
      totalExercises: widget.workout.exercises.length,
    );
  }

  Future<void> _initCurrentExercise() async {
    if (_exercises.isEmpty) return;
    final exercise = _exercises[_currentIndex];
    setState(() {
      _isLoadingVideo = true;
      _videoError = false;
    });
    _loadVideo(exercise);
    await widget.audioService.announceExerciseStart(exercise.name);
    widget.timerService.start(exercise.durationSeconds);
  }

  void _loadVideo(Exercise exercise) {
    if (exercise.localVideoPath != null && exercise.localVideoPath!.isNotEmpty) {
      final controller = VideoPlayerController.asset(exercise.localVideoPath!);
      controller.initialize().then((_) {
        _disposeVideoController();
        if (mounted) {
          setState(() {
            _videoController = controller;
            _videoController!.play();
            _isLoadingVideo = false;
            _videoError = false;
          });
        }
      }).catchError((e) {
        debugPrint('Video error: $e');
        if (mounted) {
          setState(() {
            _isLoadingVideo = false;
            _videoError = true;
            _fallbackImagePath = exercise.imagePath;
          });
        }
      });
    } else {
      if (mounted) {
        setState(() {
          _isLoadingVideo = false;
          _videoError = true;
          _fallbackImagePath = exercise.imagePath;
        });
      }
    }
  }

  void _disposeVideoController() {
    _videoController?.dispose();
    _videoController = null;
  }

  Future<void> _onExerciseComplete() async {
    await widget.audioService.announceExerciseComplete();
    await widget.audioService.playBeep();
    if (_currentIndex < _exercises.length - 1) {
      _currentIndex++;
      _initCurrentExercise();
    } else {
      _session = _session?.copyWith(
        endTime: DateTime.now(),
        status: WorkoutStatus.completed,
      );
      if (mounted) {
        Navigator.pushReplacementNamed(context, AppRoutes.workoutComplete);
      }
    }
  }

  Future<bool> _onWillPop() async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('退出训练？'),
        content: const Text('当前进度将保存'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('继续训练')),
          TextButton(onPressed: () => Navigator.pop(context, true), child: const Text('保存并退出')),
        ],
      ),
    );
    if (confirm == true) {
      await _saveProgress();
      return true;
    }
    return false;
  }

  Future<void> _saveProgress() async {
    if (_session != null) {
      await widget.storageService.saveSession(_session!);
    }
  }

  void _prevExercise() {
    if (_currentIndex > 0) {
      _hapticService.light();
      _currentIndex--;
      _initCurrentExercise();
    }
  }

  void _togglePlayPause(bool isPaused) {
    _hapticService.light();
    if (isPaused) {
      widget.timerService.resume();
      _videoController?.play();
    } else {
      widget.timerService.pause();
      _videoController?.pause();
    }
  }

  void _nextExercise() {
    _hapticService.light();
    if (_currentIndex < _exercises.length - 1) {
      _currentIndex++;
      _initCurrentExercise();
    } else {
      _session = _session?.copyWith(
        endTime: DateTime.now(),
        status: WorkoutStatus.completed,
      );
      Navigator.pushReplacementNamed(context, AppRoutes.workoutComplete);
    }
  }

  void _skipExercise() {
    _hapticService.light();
    if (_currentIndex < _exercises.length - 1) {
      _currentIndex++;
      _initCurrentExercise();
    } else {
      Navigator.pushReplacementNamed(context, AppRoutes.workoutComplete);
    }
  }

  @override
  Widget build(BuildContext context) {
    final exercise = _exercises[_currentIndex];
    final remaining = widget.timerService.remainingSeconds;
    final isPaused = widget.timerService.status == TimerStatus.paused;

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(title: Text(widget.workout.name)),
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: ExerciseVideoPlayer(
                controller: _videoController,
                isLoading: _isLoadingVideo,
                hasError: _videoError,
                imagePath: _fallbackImagePath,
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Text(exercise.name, style: Theme.of(context).textTheme.titleLarge),
                  if (exercise.targetMuscles.isNotEmpty)
                    Wrap(
                      spacing: 4,
                      children: exercise.targetMuscles
                          .map((m) => Chip(label: Text(m)))
                          .toList(),
                    ),
                  CountdownTimer(
                    totalSeconds: exercise.durationSeconds,
                    remainingSeconds: remaining,
                    onCompleted: null,
                  ),
                  ProgressDots(
                    total: _exercises.length,
                    current: _currentIndex,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(icon: const Icon(Icons.skip_previous), onPressed: _prevExercise),
                      IconButton(
                        icon: Icon(isPaused ? Icons.play_arrow : Icons.pause),
                        onPressed: () => _togglePlayPause(isPaused),
                      ),
                      IconButton(icon: const Icon(Icons.skip_next), onPressed: _nextExercise),
                      IconButton(icon: const Icon(Icons.fast_forward), onPressed: _skipExercise),
                    ],
                  ),
                  AudioController(
                    isMuted: widget.audioService.isMuted,
                    onToggleMute: widget.audioService.toggleMute,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
