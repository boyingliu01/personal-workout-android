import 'package:runner_app/models/workout_type.dart';
import 'package:runner_app/models/exercise.dart';

/// Workout training plan containing a list of exercises.
///
/// Represents a complete training module (warmup/stretch/strength).
class Workout {
  /// Unique identifier
  final String id;

  /// Workout name (e.g., "跑前动态热身")
  final String name;

  /// Workout description
  final String description;

  /// Workout type (warmup/stretch/strength)
  final WorkoutType type;

  /// Estimated duration in minutes
  final int estimatedMinutes;

  /// List of exercises in this workout
  final List<Exercise> exercises;

  /// Cover image path
  final String? coverImage;

  /// Difficulty level
  final Difficulty difficulty;

  const Workout({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
    required this.estimatedMinutes,
    required this.exercises,
    this.coverImage,
    this.difficulty = Difficulty.beginner,
  });

  /// Total number of exercises
  int get totalExercises => exercises.length;

  /// Total duration in seconds (sum of all exercises + rests)
  int get totalSeconds {
    return exercises.fold(0, (sum, exercise) {
      return sum + exercise.durationSeconds + exercise.restSeconds;
    });
  }

  /// Create from JSON map
  factory Workout.fromJson(Map<String, dynamic> json) {
    return Workout(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      type: WorkoutType.values.firstWhere(
        (e) => e.name == json['type'],
        orElse: () => WorkoutType.warmup,
      ),
      estimatedMinutes: json['estimatedMinutes'] as int,
      exercises: (json['exercises'] as List<dynamic>)
          .map((e) => Exercise.fromJson(e as Map<String, dynamic>))
          .toList(),
      coverImage: json['coverImage'] as String?,
      difficulty: Difficulty.values.firstWhere(
        (e) => e.name == json['difficulty'],
        orElse: () => Difficulty.beginner,
      ),
    );
  }

  /// Convert to JSON map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'type': type.name,
      'estimatedMinutes': estimatedMinutes,
      'exercises': exercises.map((e) => e.toJson()).toList(),
      'coverImage': coverImage,
      'difficulty': difficulty.name,
    };
  }

  /// Copy with modified fields
  Workout copyWith({
    String? id,
    String? name,
    String? description,
    WorkoutType? type,
    int? estimatedMinutes,
    List<Exercise>? exercises,
    String? coverImage,
    Difficulty? difficulty,
  }) {
    return Workout(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      type: type ?? this.type,
      estimatedMinutes: estimatedMinutes ?? this.estimatedMinutes,
      exercises: exercises ?? this.exercises,
      coverImage: coverImage ?? this.coverImage,
      difficulty: difficulty ?? this.difficulty,
    );
  }
}
