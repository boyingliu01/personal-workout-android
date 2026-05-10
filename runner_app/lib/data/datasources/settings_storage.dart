import 'package:hive_flutter/hive_flutter.dart';

abstract class SettingsStorage {
  double get volume;
  bool get voiceEnabled;
  bool get soundEnabled;
  int get exerciseDuration;
  int get restDuration;
  bool get keepScreenOn;

  Future<void> setVolume(double value);
  Future<void> setVoiceEnabled(bool value);
  Future<void> setSoundEnabled(bool value);
  Future<void> setExerciseDuration(int value);
  Future<void> setRestDuration(int value);
  Future<void> setKeepScreenOn(bool value);
}

class HiveSettingsStorage implements SettingsStorage {
  final Box box;

  HiveSettingsStorage({required this.box});

  @override
  double get volume => box.get('volume', defaultValue: 0.8) as double;

  @override
  bool get voiceEnabled => box.get('voiceEnabled', defaultValue: true) as bool;

  @override
  bool get soundEnabled => box.get('soundEnabled', defaultValue: true) as bool;

  @override
  int get exerciseDuration => box.get('exerciseDuration', defaultValue: 60) as int;

  @override
  int get restDuration => box.get('restDuration', defaultValue: 5) as int;

  @override
  bool get keepScreenOn => box.get('keepScreenOn', defaultValue: true) as bool;

  @override
  Future<void> setVolume(double value) async => box.put('volume', value);

  @override
  Future<void> setVoiceEnabled(bool value) async => box.put('voiceEnabled', value);

  @override
  Future<void> setSoundEnabled(bool value) async => box.put('soundEnabled', value);

  @override
  Future<void> setExerciseDuration(int value) async => box.put('exerciseDuration', value);

  @override
  Future<void> setRestDuration(int value) async => box.put('restDuration', value);

  @override
  Future<void> setKeepScreenOn(bool value) async => box.put('keepScreenOn', value);
}
