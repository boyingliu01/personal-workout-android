import 'package:strength_app/domain/entities/exercise.dart';

class Workout {
  final String id;
  final String name;
  final String description;
  final int estimatedMinutes;
  final List<Exercise> exercises;

  const Workout({
    required this.id,
    required this.name,
    required this.description,
    required this.estimatedMinutes,
    required this.exercises,
  });

  int get totalDurationSeconds {
    if (exercises.isEmpty) return 0;
    var total = 0;
    for (var i = 0; i < exercises.length; i++) {
      total += exercises[i].durationSeconds;
      if (i < exercises.length - 1) {
        total += exercises[i].restSeconds;
      }
    }
    return total;
  }
}
