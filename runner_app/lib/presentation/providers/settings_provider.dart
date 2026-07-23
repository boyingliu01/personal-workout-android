import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:strength_app/presentation/models/settings_model.dart';

class SettingsNotifier extends StateNotifier<AppSettings> {
  final Box<dynamic> box;

  SettingsNotifier({required this.box})
      : super(
          AppSettings(
            volume: box.get('volume', defaultValue: 0.8) as double,
            voiceEnabled: box.get('voiceEnabled', defaultValue: true) as bool,
            soundEnabled: box.get('soundEnabled', defaultValue: true) as bool,
            exerciseDuration:
                box.get('exerciseDuration', defaultValue: 60) as int,
            restDuration: box.get('restDuration', defaultValue: 5) as int,
            keepScreenOn: box.get('keepScreenOn', defaultValue: true) as bool,
            darkMode: box.get('darkMode', defaultValue: false) as bool,
          ),
        );

  Future<void> setVolume(double v) async {
    await box.put('volume', v);
    state = state.copyWith(volume: v);
  }

  Future<void> setVoiceEnabled(bool v) async {
    await box.put('voiceEnabled', v);
    state = state.copyWith(voiceEnabled: v);
  }

  Future<void> setSoundEnabled(bool v) async {
    await box.put('soundEnabled', v);
    state = state.copyWith(soundEnabled: v);
  }

  Future<void> setKeepScreenOn(bool v) async {
    await box.put('keepScreenOn', v);
    state = state.copyWith(keepScreenOn: v);
  }

  Future<void> setDarkMode(bool v) async {
    await box.put('darkMode', v);
    state = state.copyWith(darkMode: v);
  }
}

final settingsProvider = StateNotifierProvider<SettingsNotifier, AppSettings>(
  (ref) => SettingsNotifier(box: Hive.box('settings')),
);
