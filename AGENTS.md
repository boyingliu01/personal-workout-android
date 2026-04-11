# AGENTS.MD - Flutter Android Development Setup

## Overview
This repository contains a Flutter Android development environment setup project with comprehensive documentation and automation scripts. It provides detailed guides for Windows + WSL2 + VSCode + Flutter + Android development setup. Focus on WSL2 Ubuntu with Flutter SDK 3.27.4 and Android SDK setup for APK building.

## Environment Installation
The environment is designed for Ubuntu 24.04.4 LTS on WSL2 with the following key installations:
- Java JDK 17 (OpenJDK 17 - required for Android builds)
- Flutter SDK 3.27.4 (latest stable for Android development)
- Android SDK command-line tools, build-tools 34.0.0, platforms android-34
- Supporting tools: git, curl, unzip, xz-utils, zip, libglu1-mesa, clang, cmake, ninja-build, pkg-config, libgtk-3-dev

## Shell Configuration
- Uses Zsh shell by default (may also support bash)
- Environment variables configured in `~/.zshrc` (or `~/.bashrc`):
  - Flutter: `export PATH="$HOME/flutter/bin:$PATH"`
  - China mirrors: `PUB_HOSTED_URL=https://pub.flutter-io.cn` and `FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn`
  - Android: `ANDROID_HOME="$HOME/Android/Sdk"` and `ANDROID_SDK_ROOT="$ANDROID_HOME"`
  - Android path: `"$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"` and `"$ANDROID_HOME/platform-tools:$PATH"`
  - Java: `JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64"` and `PATH="$PATH:$JAVA_HOME/bin"`

## Key Commands
- Full environment check: `flutter doctor` and `flutter doctor -v`
- Install licenses: `yes | flutter doctor --android-licenses`
- Flutter version: `flutter --version`
- ADB version: `adb version`
- Create Flutter project: `flutter create project_name`
- Run app: `flutter run` (for debug) or `flutter run -d <device_id>`
- Build APK: `flutter build apk --debug` (dev) or `flutter build apk --release` (production)
- Install APK: `adb install build/app/outputs/flutter-apk/app-release.apk`
- Clean rebuild: `flutter clean && flutter pub get`
- Run tests: `flutter test` and `flutter test --coverage`
- Development: Hot reload: press 'r', Hot restart: press 'R'

## Development Workflow
- Use VSCode with Remote-WSL extension for development
- Physical device debugging preferred via ADB over Network (recommended):
  - Windows side: `adb tcpip 5555`
  - WSL side: `export WINDOWS_HOST_IP=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}')` followed by `adb connect $WINDOWS_HOST_IP:5555`
- Alternative: Windows Android Emulator with network connection (start emulator in Windows, connect via ADB over Network)
- Development flow: `flutter create` → `flutter pub get` → `flutter run` → hot reload with 'r'

## Architecture Guidelines
- State Management: Riverpod (recommended pattern)
- Local Storage: Hive (NoSQL database, lightweight)
- Video Playback: video_player package (official Flutter plugin)
- Audio Feedback: audioplayers + flutter_tts (voice feedback and notifications)
- Background Processing: flutter_background_service (if needed)
- Screen On Protection: wakelock (keeping screen awake during training)
- UI Design: Follow Material Design principles (default Flutter)

## Common Issues and Solutions
- License issues: Run `yes | flutter doctor --android-licenses` (always after initial setup)
- ADB connectivity: Use ADB over Network method as detailed in workflow (most reliable in WSL2)
- Build failures: Check environment variables are properly set in your shell configuration
- Memory issues: Configure WSL2 memory limits via `.wslconfig` file and increase if needed
- Gradle slow download: Use mirrors by configuring `~/.gradle/init.gradle` with maven.aliyun.com repositories
- Chinese chars garbled: Set locale to zh_CN.UTF-8 with `export LANG=zh_CN.UTF-8` and `export LC_ALL=zh_CN.UTF-8`
- Git performance: WSL2 generally has better Git performance than Windows

## Device Testing and Debugging
- Physical device strongly preferred over emulators
- Set up Android debugging on physical device with USB connection, then ADB over Network to WSL
- Define helper function in `~/.bashrc`/`~/.zshrc` for device connection:
  ```bash
  connect_adb() {
    export WINDOWS_HOST_IP=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}')
    adb kill-server > /dev/null 2>&1
    sleep 1
    adb connect $WINDOWS_HOST_IP:5555
    adb devices
  }
  ```
- For simulator users: Start Android Studio simulator on Windows, then use ADB over Network
- Use `flutter devices` and `adb devices` to verify device is detected
- Debug logs with `flutter logs` and system logs with `adb logcat`

## Build and Release Process
- For development: `flutter build apk --debug` (includes debugging capabilities)
- For release: `flutter build apk --release` (optimized, signed APK)
- For universal APK: `flutter build apk --release --split-per-abi`
- Verify build: `flutter doctor` should show no Android issues
- Install to device: `adb install <path-to-apk>`

## Testing and Quality Assurance
- Unit tests: `flutter test` (for Dart code logic)
- Widget tests: Built-in with Flutter testing capabilities
- Integration tests: `flutter test integration_test/` (for end-to-end tests)
- Build verification: Both `flutter build apk --debug` and `flutter build apk --release`
- Device compatibility: Test with `flutter devices` and actual device run
- Performance: Monitor with `flutter run --profile` 

## References to Detailed Documentation
- Complete installation steps: `INSTALL_COMMANDS.md`
- Automated install: `install_flutter.sh` script
- Manual install: `MANUAL_INSTALL.md`
- WSL+Flutter setup: `VSCODE_WSL_SETUP.md`
- Planned app architecture: `DESIGN.md` and `PLAN.md`

## Gotchas for Future Sessions
- Always source `.zshrc` or `.bashrc` after environment variable changes: `source ~/.zshrc`
- Must accept Android licenses after Android SDK installation
- WSL2 requires special setup for physical device debugging (ADB over Network recommended)
- This project is setup guides only - no actual Flutter source code initially
- Gradle performance significantly affected without mirror configuration for Chinese users
- Shell preference is Zsh, which may affect path configurations differently than bash