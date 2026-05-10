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
  });

  double get completionRate {
    if (totalExercises == 0) return 0;
    return completedExercises / totalExercises;
  }
}
