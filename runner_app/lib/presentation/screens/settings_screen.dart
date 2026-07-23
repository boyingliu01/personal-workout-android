import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:strength_app/presentation/providers/settings_provider.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('设置')),
      body: ListView(
        children: [
          const _SectionHeader('音频设置'),
          SwitchListTile(
            title: const Text('语音提示'),
            subtitle: const Text('训练时语音播报动作名称'),
            value: settings.voiceEnabled,
            onChanged: (v) =>
                ref.read(settingsProvider.notifier).setVoiceEnabled(v),
          ),
          SwitchListTile(
            title: const Text('提示音'),
            subtitle: const Text('每秒beep提示音'),
            value: settings.soundEnabled,
            onChanged: (v) =>
                ref.read(settingsProvider.notifier).setSoundEnabled(v),
          ),
          ListTile(
            title: const Text('音量'),
            subtitle: Text('${(settings.volume * 100).round()}%'),
            trailing: SizedBox(
              width: 150,
              child: Slider(
                value: settings.volume,
                onChanged: (v) =>
                    ref.read(settingsProvider.notifier).setVolume(v),
              ),
            ),
          ),
          const _SectionHeader('训练设置'),
          ListTile(
            title: const Text('屏幕常亮'),
            subtitle: const Text('训练时保持屏幕开启'),
            trailing: Switch(
              value: settings.keepScreenOn,
              onChanged: (v) =>
                  ref.read(settingsProvider.notifier).setKeepScreenOn(v),
            ),
          ),
          const _SectionHeader('显示设置'),
          SwitchListTile(
            title: const Text('深色模式'),
            subtitle: const Text('使用深色主题'),
            value: settings.darkMode,
            onChanged: (v) =>
                ref.read(settingsProvider.notifier).setDarkMode(v),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
      ),
    );
  }
}
