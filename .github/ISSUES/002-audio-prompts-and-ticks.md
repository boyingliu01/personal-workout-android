# Feature: 添加语音提示和倒计时嘀嗒声

**优先级**: Major (MVP核心体验)
**Gate**: Gate 3 真机验证
**报告日期**: 2026-05-17

## 用户故事
作为训练中的用户，我在做动作时不方便看手机屏幕，需要语音提示告诉我当前状态和剩余时间。

## 需求清单

### 1. 动作开始前语音提示
- **时机**: 进入 ExerciseScreen 时立即播放
- **内容**: "准备开始 — [动作名称]"
- **示例**: "准备开始 — 深蹲"

### 2. 动作最后5秒倒计时语音
- **时机**: 动作倒计时剩余5秒开始
- **内容**: 每秒播报剩余秒数
- **示例**: "5" → "4" → "3" → "2" → "1"

### 3. 动作结束提示
- **时机**: 动作倒计时归零时
- **内容**: "时间到！休息 [X] 秒"
- **示例**: "时间到！休息30秒"

### 4. 休息结束提示
- **时机**: 休息倒计时剩余3秒开始
- **内容**: 每秒播报剩余秒数
- **示例**: "3" → "2" → "1"

### 5. 每秒嘀嗒声
- **时机**: 每个倒计时每秒触发
- **声音**: 短促的"嘀"声（钟表嘀嗒效果）
- **注意**: 语音播报时不叠加嘀嗒声

## 技术实现

### 当前 AudioService 状态
`runner_app/lib/core/services/audio_service.dart` 目前全是 stub：
```dart
Future<bool> preload(String key) async => true;  // stub
Future<void> playBeep() async {}                  // stub
Future<void> speak(String text) async {}          // stub
```

### 推荐方案

#### 音频组件选择
| 功能 | 推荐包 | 说明 |
|------|--------|------|
| TTS语音 | `flutter_tts` | 已添加到 pubspec，支持中文 |
| 嘀嗒声 | `audioplayers` | 播放本地音频文件（短音效） |

#### 嘀嗒声音效
需要添加一个短音频文件（`assets/audio/tick.mp3`），100-200ms 的短促"嘀"声。可以从免费音效网站获取，或用代码生成。

#### AudioService 改造
```dart
class AudioService {
  final FlutterTts _tts;
  final AudioPlayer _player;  // 嘀嗒声
  double _volume = 0.8;
  bool _muted = false;
  bool _voiceEnabled = true;

  // TTS语音
  Future<void> speak(String text) async {
    if (_muted || !_voiceEnabled) return;
    await _tts.setVolume(_volume);
    await _tts.setLanguage('zh-CN');
    await _tts.speak(text);
  }

  // 嘀嗒声
  Future<void> playTick() async {
    if (_muted) return;
    await _player.play(AssetSource('audio/tick.mp3'),
        volume: _volume * 0.3);  // 嘀嗒声音量降低
  }
}
```

#### 倒计时集成
在 `ExerciseScreen` 和 `RestScreen` 的 timer stream 回调中：
```dart
_subscription = _timer.stream.listen((seconds) {
  // 每秒嘀嗒
  _audioService.playTick();

  // 最后5秒语音
  if (seconds >= duration - 5) {
    final remaining = duration - seconds;
    _audioService.speak('$remaining');
  }
});
```

### Riverpod Provider 集成
AudioService 应该通过 Riverpod Provider 共享（当前是 stub，需要改为真实实现）：

```dart
final audioServiceProvider = Provider<AudioService>((ref) {
  final service = AudioService();
  ref.onDispose(() => service.dispose());
  return service;
});
```

## 依赖变更
```yaml
# pubspec.yaml 需要添加
dependencies:
  flutter_tts: ^4.2.5     # 已有
  audioplayers: ^6.0.0    # 新增 - 播放嘀嗒声

flutter:
  assets:
    - assets/audio/tick.mp3  # 新增
```

## 验收标准
- [ ] 进入动作时听到"准备开始 — [动作名称]"
- [ ] 最后5秒每秒听到数字"5, 4, 3, 2, 1"
- [ ] 动作结束时听到"时间到！休息X秒"
- [ ] 休息最后3秒每秒听到数字"3, 2, 1"
- [ ] 每秒有嘀嗒声（语音播报时不叠加）
- [ ] Settings 中的"声音开关"控制嘀嗒声
- [ ] Settings 中的"语音开关"控制TTS播报
- [ ] Settings 中的"音量"控制音量大小
- [ ] 静音模式下一切音频操作无崩溃

## 相关文件
- `runner_app/lib/core/services/audio_service.dart` (需改造)
- `runner_app/lib/presentation/screens/exercise_screen.dart` (集成)
- `runner_app/lib/presentation/screens/rest_screen.dart` (集成)
- `runner_app/lib/presentation/providers/audio_provider.dart` (Riverpod单例)
- `runner_app/lib/presentation/providers/settings_provider.dart` (音量/开关设置)
- `runner_app/pubspec.yaml` (依赖)
- `runner_app/assets/audio/` (音效文件)

---

## 状态更新

### 2026-05-24 第一次实现完成
- 已实现 `AudioService`：`flutter_tts` 中文语音 + `audioplayers` 播放 `tick.wav`
- 修复 `preload()` 的 `_initialized` 守卫问题（每次调用都重新配置TTS）
- 修复屏幕 `dispose()` 改为 `stop()`（保持单例存活）
- 所有55个测试通过，`flutter analyze` 干净
- 已编译 debug APK 交付测试

### 2026-05-24 真机验证 ❌ 未通过
**症状**: 重新安装 APK 后，音频仍然不工作。

**已尝试的修复**:
1. 移除 `preload()` 中的 `_initialized` 早期返回
2. `ExerciseScreen` 和 `RestScreen` 的 `dispose()` 改为 `stop()` 而非 `dispose()`
3. `RestScreen.initState()` 中添加 `preload()` 调用

**可能原因**:
- TTS 引擎在真机上初始化时间比模拟器长，`preload()` 的异步调用可能还未完成就开始 `speak()`
- `audioplayers` 的 `AssetSource` 路径问题（`tick.wav` 是否正确打包到APK）
- 权限问题（TTS 需要特定 Android 权限？）
- `flutter_tts` 在 Android 上的兼容性问题（Kotlin 版本？compileSdk 版本？）

**下一步**: 需要真机日志（`flutter logs` 或 `adb logcat`）确认 TTS 初始化是否成功，以及音频调用的具体报错。

### 2026-07-23 Sprint 3 代码清理完成
- 移除调试日志（exercise_screen、rest_screen 中的 debugPrint）
- 保留 audio_service 中的错误路径日志（用于真机诊断）
- 代码状态：80 个测试通过，flutter analyze 无问题
- **状态**: 待真机验收

### 真机验收步骤
1. 连接 Android 真机（USB 或无线调试）
2. 运行 `flutter logs` 启动日志监控
3. 执行以下操作并记录结果：
   - 进入训练 → 应听到"准备开始 — [动作名称]"
   - 等待倒计时最后 5 秒 → 应听到"5, 4, 3, 2, 1"
   - 动作结束 → 应听到"时间到！休息X秒"
   - 休息最后 3 秒 → 应听到"3, 2, 1"
   - 检查每秒是否有嘀嗒声
4. 在 Settings 中测试：
   - 关闭"语音开关" → 应无 TTS 播报
   - 关闭"声音开关" → 应无嘀嗒声
   - 调整音量滑块 → 音量应变化
5. 查看 `flutter logs` 输出，确认：
   - `[AudioService] ✅ TTS initialized (zh-CN)` 出现
   - 无错误日志
