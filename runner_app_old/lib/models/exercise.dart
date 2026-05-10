import 'package:runner_app/models/workout_type.dart';

/// Single exercise within a workout.
///
/// Represents one movement with duration, rest, and media assets.
class Exercise {
  /// Unique identifier
  final String id;

  /// Exercise name (e.g., "开合跳")
  final String name;

  /// Exercise instructions/description
  final String description;

  /// Teaching video URL (remote)
  final String? videoUrl;

  /// Local video asset path (e.g., "videos/warmup/jumping_jacks.mp4")
  final String? localVideoPath;

  /// Preview image path for fallback display
  final String? imagePath;

  /// Duration in seconds (default 45-60s)
  final int durationSeconds;

  /// Rest duration after exercise (default 5s)
  final int restSeconds;

  /// Target muscle groups (e.g., ["legs", "core"])
  final List<String> targetMuscles;

  /// Difficulty level
  final Difficulty difficulty;

  /// Exercise category
  final ExerciseCategory category;

  const Exercise({
    required this.id,
    required this.name,
    required this.description,
    this.videoUrl,
    this.localVideoPath,
    this.imagePath,
    this.durationSeconds = 45,
    this.restSeconds = 5,
    this.targetMuscles = const [],
    this.difficulty = Difficulty.beginner,
    this.category = ExerciseCategory.fullBody,
  });

  /// Create from JSON map
  factory Exercise.fromJson(Map<String, dynamic> json) {
    return Exercise(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      videoUrl: json['videoUrl'] as String?,
      localVideoPath: json['localVideoPath'] as String?,
      imagePath: json['imagePath'] as String?,
      durationSeconds: json['durationSeconds'] as int? ?? 45,
      restSeconds: json['restSeconds'] as int? ?? 5,
      targetMuscles: (json['targetMuscles'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      difficulty: Difficulty.values.firstWhere(
        (e) => e.name == json['difficulty'],
        orElse: () => Difficulty.beginner,
      ),
      category: ExerciseCategory.values.firstWhere(
        (e) => e.name == json['category'],
        orElse: () => ExerciseCategory.fullBody,
      ),
    );
  }

  /// Convert to JSON map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'videoUrl': videoUrl,
      'localVideoPath': localVideoPath,
      'imagePath': imagePath,
      'durationSeconds': durationSeconds,
      'restSeconds': restSeconds,
      'targetMuscles': targetMuscles,
      'difficulty': difficulty.name,
      'category': category.name,
    };
  }

  /// Copy with modified fields
  Exercise copyWith({
    String? id,
    String? name,
    String? description,
    String? videoUrl,
    String? localVideoPath,
    String? imagePath,
    int? durationSeconds,
    int? restSeconds,
    List<String>? targetMuscles,
    Difficulty? difficulty,
    ExerciseCategory? category,
  }) {
    return Exercise(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      videoUrl: videoUrl ?? this.videoUrl,
      localVideoPath: localVideoPath ?? this.localVideoPath,
      imagePath: imagePath ?? this.imagePath,
      durationSeconds: durationSeconds ?? this.durationSeconds,
      restSeconds: restSeconds ?? this.restSeconds,
      targetMuscles: targetMuscles ?? this.targetMuscles,
      difficulty: difficulty ?? this.difficulty,
      category: category ?? this.category,
    );
  }
}
