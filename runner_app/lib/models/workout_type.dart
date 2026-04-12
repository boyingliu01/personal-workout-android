/// Workout type enum for categorizing training modules.
enum WorkoutType {
  /// Pre-run dynamic warmup (10-15 minutes)
  warmup,

  /// Post-run stretching (20-30 minutes)
  stretch,

  /// Strength training (15-20 minutes)
  strength,
}

/// Difficulty level enum for workout filtering.
enum Difficulty {
  /// Beginner - simple movements
  beginner,

  /// Intermediate - moderate challenge
  intermediate,

  /// Advanced - high difficulty
  advanced,
}

/// Exercise category enum.
enum ExerciseCategory {
  /// Full body activation
  fullBody,

  /// Lower body focus
  lowerBody,

  /// Upper body focus
  upperBody,

  /// Core stability
  core,

  /// Flexibility/mobility
  flexibility,
}

/// Workout status enum for session tracking.
enum WorkoutStatus {
  /// Workout not started
  idle,

  /// Workout in progress
  running,

  /// Workout paused
  paused,

  /// Workout completed
  completed,

  /// Workout interrupted/cancelled
  interrupted,
}
