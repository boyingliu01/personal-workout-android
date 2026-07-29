# 手动安装 Flutter Android 开发环境

## 准备工作

### 1. 确认您的用户组
```bash
id
```

您应该看到 `sudo` 在您的组列表中。

---

## 第一步：安装系统依赖和 Java

在您的终端中执行：

```bash
sudo apt update
sudo apt install -y git curl unzip xz-utils zip libglu1-mesa openjdk-17-jdk
java -version
```

---

## 第二步：手动下载和安装 Flutter

### 2.1 下载 Flutter SDK

在浏览器中打开：
https://flutter.dev/docs/get-started/install/linux

下载最新稳定版（当前为3.27.4）：
https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.27.4-stable.tar.xz

### 2.2 解压到用户主目录

打开 File Explorer（资源管理器），找到下载的 `flutter_linux_3.27.4-stable.tar.xz`，
将其拖放到您的 `home/boyingliu01/` 文件夹中。

在终端中运行：

```bash
cd ~
tar -xf flutter_linux_3.27.4-stable.tar.xz
mv flutter_linux_3.27.4-stable flutter
```

---

## 第三步：配置 Flutter 环境变量

### 3.1 为 Zsh（您当前使用的 shell）：

```bash
# 打开 .zshrc 文件
nano ~/.zshrc
```

添加以下内容到文件末尾：

```bash
# Flutter配置
export PATH="$HOME/flutter/bin:$PATH"
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
```

保存并退出（按 `Ctrl+O`，然后 `Enter`，然后 `Ctrl+X`）。

### 3.2 应用配置：

```bash
source ~/.zshrc
flutter --version
```

---

## 第四步：安装 Android SDK 命令行工具

### 4.1 下载 Android SDK Command-Line Tools：

在浏览器中打开：
https://developer.android.com/studio#downloads

向下滚动找到 "Command line tools only"，下载 Linux 版本：
https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip

### 4.2 解压到 Android SDK 目录：

```bash
mkdir -p ~/Android/Sdk/cmdline-tools/latest
cd ~/Android/Sdk/cmdline-tools/latest
```

找到下载的 `commandlinetools-linux-11076708_latest.zip`，
右键点击选择 "Extract Here"（解压到此处），
将内容解压到 `~/Android/Sdk/cmdline-tools/latest/` 文件夹中。

---

## 第五步：配置 Android 环境变量

### 5.1 为 Zsh：

```bash
# 打开 .zshrc 文件
nano ~/.zshrc
```

添加以下内容：

```bash
# Android SDK配置
export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_SDK_ROOT="$ANDROID_HOME"
export PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="$ANDROID_HOME/emulator:$PATH"
```

### 5.2 应用配置：

```bash
source ~/.zshrc
```

---

## 第六步：安装 Android SDK 组件

```bash
# 接受所有 Android 许可证
yes | sdkmanager --licenses

# 安装必要的组件
sdkmanager "platform-tools" "build-tools;34.0.0" "platforms;android-34"

# 验证安装
adb version
```

---

## 第七步：完成 Flutter 配置

```bash
# 接受 Flutter Android 许可证
yes | flutter doctor --android-licenses

# 检查所有依赖
flutter doctor
```

---

## 验证安装

```bash
# 查看安装位置
ls -la ~/flutter
ls -la ~/Android/Sdk

# 检查路径
which flutter
which dart
which adb

# 验证版本
java -version
flutter --version
adb version
```

---

## 常见问题

### 问题1：Permission denied（权限被拒绝）

如果在运行命令时出现权限问题，确保：

1. 您使用的是正确的用户（`boyingliu01`）
2. 文件权限正确（使用 `ls -l` 查看）
3. 对于系统目录使用 `sudo`

### 问题2：Flutter not found（找不到 Flutter）

检查：
1. Flutter 是否正确解压到 `~/flutter`
2. `~/.zshrc` 中是否有正确的路径配置
3. 是否运行了 `source ~/.zshrc`
4. 运行 `echo $PATH` 检查路径是否包含 `/home/boyingliu01/flutter/bin`

### 问题3：Android SDK 未找到

检查：
1. Android SDK 是否在 `~/Android/Sdk` 中
2. 环境变量是否正确设置
3. 运行 `echo $ANDROID_HOME` 验证路径

---

## 完成后

您已经成功安装了完整的 Flutter Android 开发环境！

现在您可以创建您的第一个 Flutter 项目：

```bash
cd /home/boyingliu01/projects
flutter create sport_apk
cd sport_apk
flutter run
```

如果您没有连接设备，可以使用 Android 模拟器。
