import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:strength_app/presentation/providers/settings_provider.dart';

/// A minimal in-memory fake for Hive Box used by SettingsNotifier.
class FakeSettingsBox extends Fake implements Box<dynamic> {
  final Map<String, dynamic> _data = {};

  @override
  dynamic get(dynamic key, {dynamic defaultValue}) {
    return _data.containsKey(key) ? _data[key] : defaultValue;
  }

  @override
  Future<void> put(dynamic key, dynamic value) async {
    _data[key as String] = value;
  }
}

void main() {
  group('SettingsNotifier', () {
    late FakeSettingsBox fakeBox;
    late SettingsNotifier notifier;

    setUp(() {
      fakeBox = FakeSettingsBox();
      notifier = SettingsNotifier(box: fakeBox);
    });

    tearDown(() {
      notifier.dispose();
    });

    test('default settings values are correct', () {
      expect(notifier.state.volume, 0.8);
      expect(notifier.state.voiceEnabled, isTrue);
      expect(notifier.state.soundEnabled, isTrue);
      expect(notifier.state.exerciseDuration, 60);
      expect(notifier.state.restDuration, 5);
      expect(notifier.state.keepScreenOn, isTrue);
      expect(notifier.state.darkMode, isFalse);
    });

    test('setVolume updates volume in state', () async {
      await notifier.setVolume(0.5);
      expect(notifier.state.volume, 0.5);
    });

    test('setDarkMode updates darkMode in state', () async {
      await notifier.setDarkMode(true);
      expect(notifier.state.darkMode, isTrue);
    });

    test('setKeepScreenOn updates keepScreenOn in state', () async {
      await notifier.setKeepScreenOn(false);
      expect(notifier.state.keepScreenOn, isFalse);
    });

    test('setVoiceEnabled updates voiceEnabled in state', () async {
      await notifier.setVoiceEnabled(false);
      expect(notifier.state.voiceEnabled, isFalse);
    });

    test('setSoundEnabled updates soundEnabled in state', () async {
      await notifier.setSoundEnabled(false);
      expect(notifier.state.soundEnabled, isFalse);
    });

    test('setVolume persists value to box', () async {
      await notifier.setVolume(0.3);
      expect(fakeBox.get('volume'), 0.3);
    });

    test('multiple updates accumulate correctly', () async {
      await notifier.setVolume(0.5);
      await notifier.setDarkMode(true);
      await notifier.setVoiceEnabled(false);

      expect(notifier.state.volume, 0.5);
      expect(notifier.state.darkMode, isTrue);
      expect(notifier.state.voiceEnabled, isFalse);
      // Unchanged fields retain defaults
      expect(notifier.state.soundEnabled, isTrue);
      expect(notifier.state.keepScreenOn, isTrue);
    });
  });
}
