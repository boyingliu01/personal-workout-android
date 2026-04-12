/// Record of a single exercise execution within a workout session.
class ExerciseRecord {
  /// Exercise ID reference
  final String exerciseId;

  /// Exercise name (cached for display)
  final String exerciseName;

  /// Planned duration in seconds
  final int plannedDuration;

  /// Actual duration completed in seconds
  final int actualDuration;

  /// Whether exercise was skipped
  final bool skipped;

  /// Whether exercise was completed fully
  final bool completed;

  /// Start timestamp
  final DateTime startTime;

  /// End timestamp
  final DateTime? endTime;

  const ExerciseRecord({
    required this.exerciseId,
    required this.exerciseName,
    required this.plannedDuration,
    required this.actualDuration,
    this.skipped = false,
    this.completed = false,
    required this.startTime,
    this.endTime,
  });

  /// Create from JSON map
  factory ExerciseRecord.fromJson(Map<String, dynamic> json) {
    return ExerciseRecord(
      exerciseId: json['exerciseId'] as String,
      exerciseName: json['exerciseName'] as String,
      plannedDuration: json['plannedDuration'] as int,
      actualDuration: json['actualDuration'] as int,
      skipped: json['skipped'] as bool? ?? false,
      completed: json['completed'] as bool? ?? false,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] != null
          ? DateTime.parse(json['endTime'] as String)
          : null,
    );
  }

  /// Convert to JSON map
  Map<String, dynamic> toJson() {
    return {
      'exerciseId': exerciseId,
      'exerciseName': exerciseName,
      'plannedDuration': plannedDuration,
      'actualDuration': actualDuration,
      'skipped': skipped,
      'completed': completed,
      'startTime': startTime.toIso8601String(),
      'endTime': endTime?.toIso8601String(),
    };
  }

  /// Copy with modified fields
  ExerciseRecord copyWith({
    String? exerciseId,
    String? exerciseName,
    int? plannedDuration,
    int? actualDuration,
    bool? skipped,
    bool? completed,
    DateTime? startTime,
    DateTime? endTime,
  }) {
    return ExerciseRecord(
      exerciseId: exerciseId ?? this.exerciseId,
      exerciseName: exerciseName ?? this.exerciseName,
      plannedDuration: plannedDuration ?? this.plannedDuration,
      actualDuration: actualDuration ?? this.actualDuration,
      skipped: skipped ?? this.skipped,
      completed: completed ?? this.completed,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
    );
  }
}
