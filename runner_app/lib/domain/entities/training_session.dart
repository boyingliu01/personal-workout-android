class ExerciseLog {
  final String exerciseId;
  final String exerciseName;
  final int actualSeconds;
  final bool completed;

  const ExerciseLog({
    required this.exerciseId,
    required this.exerciseName,
    required this.actualSeconds,
    required this.completed,
  });

  ExerciseLog copyWith({int? actualSeconds, bool? completed}) {
    return ExerciseLog(
      exerciseId: exerciseId,
      exerciseName: exerciseName,
      actualSeconds: actualSeconds ?? this.actualSeconds,
      completed: completed ?? this.completed,
    );
  }
}

enum SessionStatus { completed, interrupted, paused }

class TrainingSession {
  final String id;
  final String workoutId;
  final String workoutName;
  final DateTime startTime;
  final DateTime? endTime;
  final int completedExercises;
  final int totalExercises;
  final int totalSeconds;
  final List<ExerciseLog> exerciseLogs;
  final SessionStatus status;
  final int? currentExerciseIndex;
  final int? remainingSeconds;

  const TrainingSession({
    required this.id,
    required this.workoutId,
    required this.workoutName,
    required this.startTime,
    this.endTime,
    required this.completedExercises,
    required this.totalExercises,
    required this.totalSeconds,
    required this.exerciseLogs,
    this.status = SessionStatus.completed,
    this.currentExerciseIndex,
    this.remainingSeconds,
  });

  double get completionRate {
    if (totalExercises == 0) return 0;
    return completedExercises / totalExercises;
  }

  bool get isResumable =>
      status == SessionStatus.paused || status == SessionStatus.interrupted;

  TrainingSession copyWith({
    String? id,
    String? workoutId,
    String? workoutName,
    DateTime? startTime,
    DateTime? endTime,
    int? completedExercises,
    int? totalExercises,
    int? totalSeconds,
    List<ExerciseLog>? exerciseLogs,
    SessionStatus? status,
    int? currentExerciseIndex,
    int? remainingSeconds,
  }) {
    return TrainingSession(
      id: id ?? this.id,
      workoutId: workoutId ?? this.workoutId,
      workoutName: workoutName ?? this.workoutName,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      completedExercises: completedExercises ?? this.completedExercises,
      totalExercises: totalExercises ?? this.totalExercises,
      totalSeconds: totalSeconds ?? this.totalSeconds,
      exerciseLogs: exerciseLogs ?? this.exerciseLogs,
      status: status ?? this.status,
      currentExerciseIndex: currentExerciseIndex ?? this.currentExerciseIndex,
      remainingSeconds: remainingSeconds ?? this.remainingSeconds,
    );
  }
}
