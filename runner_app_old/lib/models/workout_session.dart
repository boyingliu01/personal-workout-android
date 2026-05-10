import 'package:runner_app/models/workout_type.dart';
import 'package:runner_app/models/exercise_record.dart';

/// Workout session tracking a complete training execution.
///
/// Records progress, timing, and status for recovery and analytics.
class WorkoutSession {
  /// Unique session identifier
  final String id;

  /// Associated workout plan ID
  final String workoutId;

  /// Workout name (cached)
  final String workoutName;

  /// Workout type (cached)
  final WorkoutType workoutType;

  /// Session start timestamp
  final DateTime startTime;

  /// Session end timestamp
  final DateTime? endTime;

  /// Pause timestamp (for recovery)
  final DateTime? pausedAt;

  /// Current exercise index (for recovery)
  final int currentExerciseIndex;

  /// Remaining seconds at pause (for timer recovery)
  final int remainingSeconds;

  /// Number of completed exercises
  final int completedExercises;

  /// Total exercises in workout
  final int totalExercises;

  /// Total seconds spent
  final int totalSeconds;

  /// Session status
  final WorkoutStatus status;

  /// Records of each exercise execution
  final List<ExerciseRecord> exerciseRecords;

  const WorkoutSession({
    required this.id,
    required this.workoutId,
    required this.workoutName,
    required this.workoutType,
    required this.startTime,
    this.endTime,
    this.pausedAt,
    this.currentExerciseIndex = 0,
    this.remainingSeconds = 0,
    this.completedExercises = 0,
    required this.totalExercises,
    this.totalSeconds = 0,
    this.status = WorkoutStatus.idle,
    this.exerciseRecords = const [],
  });

  /// Whether session is in progress
  bool get isInProgress => status == WorkoutStatus.running;

  /// Whether session is paused
  bool get isPaused => status == WorkoutStatus.paused;

  /// Whether session is completed
  bool get isCompleted => status == WorkoutStatus.completed;

  /// Progress percentage (0-100)
  double get progressPercentage {
    if (totalExercises == 0) return 0;
    return (completedExercises / totalExercises) * 100;
  }

  /// Create from JSON map
  factory WorkoutSession.fromJson(Map<String, dynamic> json) {
    return WorkoutSession(
      id: json['id'] as String,
      workoutId: json['workoutId'] as String,
      workoutName: json['workoutName'] as String,
      workoutType: WorkoutType.values.firstWhere(
        (e) => e.name == json['workoutType'],
        orElse: () => WorkoutType.warmup,
      ),
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] != null
          ? DateTime.parse(json['endTime'] as String)
          : null,
      pausedAt: json['pausedAt'] != null
          ? DateTime.parse(json['pausedAt'] as String)
          : null,
      currentExerciseIndex: json['currentExerciseIndex'] as int? ?? 0,
      remainingSeconds: json['remainingSeconds'] as int? ?? 0,
      completedExercises: json['completedExercises'] as int? ?? 0,
      totalExercises: json['totalExercises'] as int,
      totalSeconds: json['totalSeconds'] as int? ?? 0,
      status: WorkoutStatus.values.firstWhere(
        (e) => e.name == json['status'],
        orElse: () => WorkoutStatus.idle,
      ),
      exerciseRecords: (json['exerciseRecords'] as List<dynamic>?)
              ?.map((e) => ExerciseRecord.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );
  }

  /// Convert to JSON map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'workoutId': workoutId,
      'workoutName': workoutName,
      'workoutType': workoutType.name,
      'startTime': startTime.toIso8601String(),
      'endTime': endTime?.toIso8601String(),
      'pausedAt': pausedAt?.toIso8601String(),
      'currentExerciseIndex': currentExerciseIndex,
      'remainingSeconds': remainingSeconds,
      'completedExercises': completedExercises,
      'totalExercises': totalExercises,
      'totalSeconds': totalSeconds,
      'status': status.name,
      'exerciseRecords': exerciseRecords.map((e) => e.toJson()).toList(),
    };
  }

  /// Copy with modified fields.
  ///
  /// For nullable fields, use `clear*` parameters to explicitly set to null.
  WorkoutSession copyWith({
    String? id,
    String? workoutId,
    String? workoutName,
    WorkoutType? workoutType,
    DateTime? startTime,
    DateTime? endTime,
    DateTime? pausedAt,
    int? currentExerciseIndex,
    int? remainingSeconds,
    int? completedExercises,
    int? totalExercises,
    int? totalSeconds,
    WorkoutStatus? status,
    List<ExerciseRecord>? exerciseRecords,
    bool clearEndTime = false,
    bool clearPausedAt = false,
  }) {
    return WorkoutSession(
      id: id ?? this.id,
      workoutId: workoutId ?? this.workoutId,
      workoutName: workoutName ?? this.workoutName,
      workoutType: workoutType ?? this.workoutType,
      startTime: startTime ?? this.startTime,
      endTime: clearEndTime ? null : (endTime ?? this.endTime),
      pausedAt: clearPausedAt ? null : (pausedAt ?? this.pausedAt),
      currentExerciseIndex: currentExerciseIndex ?? this.currentExerciseIndex,
      remainingSeconds: remainingSeconds ?? this.remainingSeconds,
      completedExercises: completedExercises ?? this.completedExercises,
      totalExercises: totalExercises ?? this.totalExercises,
      totalSeconds: totalSeconds ?? this.totalSeconds,
      status: status ?? this.status,
      exerciseRecords: exerciseRecords ?? this.exerciseRecords,
    );
  }
}
