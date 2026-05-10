/// Chinese text and localization constants for Runner Training app.
abstract class AppStrings {
  AppStrings._();

  // App identity
  static const String appTitle = '跑者训练';
  static const String homeSubtitle = '你的个人跑步训练助手';

  // Workout type titles
  static const String warmupTitle = '跑前动态热身';
  static const String stretchTitle = '跑后拉伸';
  static const String strengthTitle = '力量训练';

  // Strength training section titles
  static const String sectionA = '板块A：臀腿力量';
  static const String sectionB = '板块B：核心力量';
  static const String sectionC = '板块C：上肢力量';

  // Timer controls
  static const String startTraining = '开始训练';
  static const String pause = '暂停';
  static const String resume = '继续';
  static const String skip = '跳过';
  static const String prevExercise = '上一个';
  static const String nextExercise = '下一个';
  static const String back = '返回';

  // Workout completion
  static const String workoutComplete = '训练完成';
  static const String greatJob = '太棒了！';
  static const String durationLabel = '用时';
  static const String exercisesCompleted = '动作完成';

  // Navigation
  static const String statsTitle = '训练统计';
  static const String settingsTitle = '设置';
  static const String historyTitle = '历史记录';
  static const String homeTab = '首页';
  static const String statsTab = '统计';
  static const String settingsTab = '设置';

  // Audio controls
  static const String mute = '静音';
  static const String unmute = '取消静音';

  // Exit confirmation
  static const String exitConfirm = '退出训练？当前进度将保存';
  static const String continueTraining = '继续训练';
  static const String saveAndExit = '保存并退出';

  // Session recovery
  static const String recoverSession = '上次训练未完成，是否继续？';
  static const String continueLast = '继续上次训练';
  static const String startNew = '开始新训练';

  // Video loading
  static const String loadingVideo = '加载动作视频...';

  // Difficulty labels
  static const String beginner = '入门';
  static const String intermediate = '中级';
  static const String advanced = '高级';

  // Error messages
  static const String videoLoadFailed = '视频加载失败';
  static const String noInternet = '网络连接异常';
  static const String genericError = '发生错误';
  static const String retry = '重试';

  // Settings labels
  static const String countdownBeep = '倒计时提示音';
  static const String videoQuality = '视频清晰度';
  static const String language = '语言';
  static const String about = '关于';
  static const String version = '版本';
}
