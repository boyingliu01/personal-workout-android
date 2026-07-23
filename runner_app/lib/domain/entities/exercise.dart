enum Difficulty { beginner, intermediate, advanced }

enum ExerciseCategory { legs, core, upperBody, fullBody, warmup, stretch }

class Exercise {
  final String id;
  final String name;
  final String description;
  final String imagePath;
  final int durationSeconds;
  final int restSeconds;
  final List<String> targetMuscles;
  final Difficulty difficulty;
  final ExerciseCategory category;

  const Exercise({
    required this.id,
    required this.name,
    required this.description,
    required this.imagePath,
    required this.durationSeconds,
    required this.restSeconds,
    required this.targetMuscles,
    required this.difficulty,
    required this.category,
  });
}
