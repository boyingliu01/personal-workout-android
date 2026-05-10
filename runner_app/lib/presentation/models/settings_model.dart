class AppSettings {
  final double volume;
  final bool voiceEnabled;
  final bool soundEnabled;
  final int exerciseDuration;
  final int restDuration;
  final bool keepScreenOn;

  const AppSettings({
    required this.volume,
    required this.voiceEnabled,
    required this.soundEnabled,
    required this.exerciseDuration,
    required this.restDuration,
    required this.keepScreenOn,
  });

  AppSettings copyWith({
    double? volume,
    bool? voiceEnabled,
    bool? soundEnabled,
    int? exerciseDuration,
    int? restDuration,
    bool? keepScreenOn,
  }) {
    return AppSettings(
      volume: volume ?? this.volume,
      voiceEnabled: voiceEnabled ?? this.voiceEnabled,
      soundEnabled: soundEnabled ?? this.soundEnabled,
      exerciseDuration: exerciseDuration ?? this.exerciseDuration,
      restDuration: restDuration ?? this.restDuration,
      keepScreenOn: keepScreenOn ?? this.keepScreenOn,
    );
  }
}
