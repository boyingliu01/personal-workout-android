# Sport-APK 项目 Windows 桌面迁移搭建指南

> 本项目为 Flutter Android 应用（strength_app），用于跑者力量训练。
> 原开发环境为 WSL2 Ubuntu，现迁移到原生 Windows 桌面。

---

## 1. 前置条件

| 软件 | 最低版本 | 说明 |
|------|----------|------|
| Git | 2.40+ | 代码版本控制 |
| Java JDK | 17 | Android 构建必需 |
| Flutter SDK | 3.27+ | 要求 Dart SDK ^3.6.2 |
| Android SDK | API 34 | 命令行工具 + build-tools 34.0.0 |
| VS Code | 最新版 | 推荐配合 Flutter/Dart 插件 |

---

## 2. 安装步骤（按顺序执行）

### 2.1 安装 Git

1. 下载 [Git for Windows](https://git-scm.com/download/win)
2. 安装时勾选 "Git from the command line and also from 3rd-party software"
3. 完成后打开 **PowerShell** 或 **Git Bash** 验证：

```powershell
git --version
```

### 2.2 安装 Java JDK 17

推荐方式（winget）：

```powershell
winget install --id=OpenJDK.17
```

或手动下载：
- [Eclipse Temurin JDK 17](https://adoptium.net/temurin/releases/?version=17)

安装后配置环境变量（**系统属性 → 环境变量 → 系统变量**）：

| 变量名 | 值（替换为你的实际路径） |
|--------|--------------------------|
| `JAVA_HOME` | `C:\Program Files\Eclipse Adoptium\jdk-17.x.x.x-hotspot` |

然后将 `%JAVA_HOME%\bin` 添加到 `Path` 环境变量。

验证：

```powershell
java -version
```

应显示 `openjdk version "17.x.x"`。

### 2.3 安装 Flutter SDK

1. 从 [Flutter 官网](https://docs.flutter.dev/get-started/install/windows) 下载稳定版 SDK
2. 解压到固定路径，例如 `C:\src\flutter`
3. 将 `C:\src\flutter\bin` 添加到系统 `Path` 环境变量

**国内镜像**（如果在国内网络环境下）：

| 变量名 | 值 |
|--------|-----|
| `PUB_HOSTED_URL` | `https://pub.flutter-io.cn` |
| `FLUTTER_STORAGE_BASE_URL` | `https://storage.flutter-io.cn` |

**注意**：中国镜像自 2025 年底起已关停。如果镜像不可用，请移除这两个环境变量，使用官方源。

验证：

```powershell
flutter --version
```

### 2.4 安装 Android SDK（通过 Android Studio）

这是最简单的方式：

1. 下载 [Android Studio](https://developer.android.com/studio)
2. 安装时勾选 **Android SDK**、**Android Virtual Device**、**Android SDK Command-line Tools**
3. 首次启动后，打开 **Tools → SDK Manager**：
   - 勾选 **SDK Platforms → Android 14.0 (API 34)**
   - 勾选 **SDK Tools → Android SDK Build-Tools 34.0.0**、**Android SDK Command-line Tools (latest)**、**Android Emulator**
4. 配置环境变量：

| 变量名 | 值 |
|--------|-----|
| `ANDROID_HOME` | `%LOCALAPPDATA%\Android\Sdk` |
| `ANDROID_SDK_ROOT` | `%LOCALAPPDATA%\Android\Sdk` |

将以下内容添加到 `Path`：
- `%ANDROID_HOME%\platform-tools`
- `%ANDROID_HOME%\cmdline-tools\latest\bin`

验证：

```powershell
adb version
```

5. 接受 Android  licenses：

```powershell
flutter doctor --android-licenses
```

输入 `y` 接受全部。

### 2.5 VS Code 及插件

1. 安装 [VS Code](https://code.visualstudio.com/)
2. 安装推荐扩展：
   - **Flutter** (Dart Code)
   - **Dart**
   - **Error Lens**（可选，行内显示错误）

---

## 3. 克隆项目

```powershell
# 推荐放到你习惯的项目目录下
cd C:\Users\你的用户名\Projects

git clone https://github.com/boyingliu01/personal-workout-android.git sport-apk
cd sport-apk
```

---

## 4. 初始化 Flutter 项目

```powershell
# 进入 Flutter 项目目录
cd runner_app

# 获取依赖
flutter pub get

# 运行 build_runner (Riverpod 代码生成)
dart run build_runner build
```

---

## 5. 运行验证

### 5.1 环境检查

```powershell
flutter doctor
```

预期输出应全部打勾。常见问题：

| 问题 | 解决 |
|------|------|
| Android SDK 未找到 | 检查 `ANDROID_HOME` 环境变量 |
| Android licenses not accepted | 运行 `flutter doctor --android-licenses` |
| Java 版本不对 | 确保是 JDK 17，不是 21+ |

### 5.2 连接设备

**方式一：USB 物理设备**

1. 手机开启 **开发者选项 → USB 调试**
2. USB 连接电脑
3. 手机上允许 USB 调试授权

```powershell
adb devices
flutter devices
```

**方式二：无线调试（Android 11+）**

1. 手机：开发者选项 → 无线调试 → 开启
2. 点击 "使用配对码配对设备"，获取 IP 和端口
3. 电脑：

```powershell
adb pair 手机IP:配对端口
# 输入配对码
adb connect 手机IP:调试端口
adb devices
```

**方式三：Windows Android 模拟器**

```powershell
# 在 Android Studio 的 Device Manager 中创建模拟器
# 然后 Flutter 会自动识别
flutter devices
```

### 5.3 启动开发

```powershell
flutter run
```

热重载：按 `r`，热重启：按 `R`。

### 5.4 构建 APK

```powershell
# Debug 构建（带调试功能）
flutter build apk --debug

# Release 构建（生产用）
flutter build apk --release
```

---

## 6. 与 WSL2 开发的区别

| 项目 | WSL2 Ubuntu | 原生 Windows |
|------|-------------|--------------|
| 终端 | bash/zsh | PowerShell / Git Bash |
| Flutter 安装 | `~/flutter` Linux 版 | `C:\src\flutter` Windows 版 |
| Android SDK | `~/Android/Sdk` | `%LOCALAPPDATA%\Android\Sdk` |
| 设备调试 | ADB over Network | USB / 无线直连 / 模拟器 |
| 环境变量 | `~/.zshrc` / `~/.bashrc` | 系统环境变量 / `powershell profile` |
| Git Line Endings | `lf` | Windows 版 Git 默认 `crlf`（本项目已配置） |

---

## 7. 迁移后注意事项

1. **不要混合使用 WSL2 和 Windows 的 Flutter** — 两者是独立的安装，不要互相引用
2. **pubspec.lock** — 已包含在版本控制中，`flutter pub get` 后版本一致
3. **本地 Hive 数据** — 存储在设备/模拟器上，不跨平台迁移
4. **VS Code 配置** — 如果需要 `.vscode/settings.json`，需在新环境重新创建（已加入 .gitignore）
5. **OpenCode 配置** — `.opencode/`、`opencode.json` 已排除，需要重新初始化

---

## 8. 快速命令速查表

```powershell
# 环境诊断
flutter doctor -v

# 获取依赖
cd runner_app
flutter pub get

# 生成 Riverpod 代码
dart run build_runner build

# 运行（连接设备后）
flutter run

# 运行测试
flutter test

# 构建 APK
flutter build apk --release

# 安装 APK 到设备
adb install runner_app\build\app\outputs\flutter-apk\app-release.apk

# 查看设备日志
flutter logs
adb logcat

# 清理重建
flutter clean && flutter pub get
```

---

## 9. 故障排查

### 9.1 `flutter pub get` 卡住或超时

网络问题（国内）。检查 `PUB_HOSTED_URL` 和 `FLUTTER_STORAGE_BASE_URL` 是否可用，或在 `~/.config/dart/pub.json` 中配置镜像。

### 9.2 Gradle 下载极慢

创建 `%USERPROFILE%\.gradle\init.gradle`：

```groovy
allprojects {
    repositories {
        maven { url 'https://maven.aliyun.com/repository/google' }
        maven { url 'https://maven.aliyun.com/repository/central' }
        maven { url 'https://maven.aliyun.com/repository/public' }
        mavenCentral()
        google()
    }
}
```

### 9.3 中文日志乱码

PowerShell 编码问题：

```powershell
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
```

或永久设置：在 PowerShell Profile (`notepad $PROFILE`) 中加入上面的命令。

### 9.4 `adb devices` 找不到设备

- USB 线问题：换线/换 USB 口
- Windows 驱动：打开 **设备管理器** → Android 设备 → 右键更新驱动
- USB 调试授权弹窗是否已在手机上点击确认
