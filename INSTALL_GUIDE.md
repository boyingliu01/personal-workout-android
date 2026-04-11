# Flutter Android 开发环境安装指南

## 环境要求
- Ubuntu 24.04.4 LTS (WSL2)
- 网络连接
- 用户已在 sudo 组 (您的用户已在 sudo 组中)

## 安装步骤

### 第一步：运行自动化安装脚本（推荐）

我已经为您创建了完整的安装脚本，请按以下步骤执行：

```bash
# 1. 进入项目目录
cd /home/boyingliu01/projects/sport-apk

# 2. 给脚本添加执行权限
chmod +x install_flutter.sh

# 3. 运行安装脚本
./install_flutter.sh
```

脚本会自动：
1. 检查系统依赖
2. 验证 Java 安装
3. 下载并配置 Flutter SDK
4. 下载并配置 Android SDK
5. 配置环境变量
6. 运行 flutter doctor 检查

---

### 如果自动化脚本失败，请使用手动命令（推荐）

我已经为您准备了完整的命令集合在 `INSTALL_COMMANDS.md` 文件中：

```bash
cd /home/boyingliu01/projects/sport-apk
cat INSTALL_COMMANDS.md
```

---

## 如果需要手动安装，请按以下步骤操作：

### 1. 安装系统依赖

```bash
sudo apt update
sudo apt install -y git curl unzip xz-utils zip libglu1-mesa
```

### 2. 安装 Java JDK 17

```bash
sudo apt install -y openjdk-17-jdk
java -version
```

### 3. 安装 Flutter SDK

```bash
# 下载 Flutter 3.27.4 (最新稳定版)
cd ~
curl -L https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.27.4-stable.tar.xz -o /tmp/flutter.tar.xz

# 解压
tar -xf /tmp/flutter.tar.xz
rm /tmp/flutter.tar.xz
```

### 4. 配置 Flutter 环境变量

编辑 `~/.bashrc` 文件：

```bash
# 添加以下内容到 ~/.bashrc
nano ~/.bashrc
```

添加：

```bash
# Flutter配置
export PATH="$HOME/flutter/bin:$PATH"
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
```

保存并退出，然后应用：

```bash
source ~/.bashrc
flutter --version
```

### 5. 安装 Android SDK 命令行工具

```bash
# 创建目录结构
mkdir -p ~/Android/Sdk/cmdline-tools/latest
mkdir -p ~/Android/Sdk/platforms
mkdir -p ~/Android/Sdk/platform-tools

# 下载命令行工具
curl -L https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip -o /tmp/cmdline-tools.zip

# 解压
unzip -q /tmp/cmdline-tools.zip -d /tmp
mv /tmp/cmdline-tools/* ~/Android/Sdk/cmdline-tools/latest/
rm -rf /tmp/cmdline-tools /tmp/cmdline-tools.zip
```

### 6. 配置 Android 环境变量

编辑 `~/.bashrc` 文件：

```bash
nano ~/.bashrc
```

添加：

```bash
# Android SDK配置
export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_SDK_ROOT="$ANDROID_HOME"
export PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="$ANDROID_HOME/emulator:$PATH"
```

保存并退出，然后应用：

```bash
source ~/.bashrc
```

### 7. 安装 Android SDK 组件

```bash
# 接受许可证
yes | sdkmanager --licenses

# 安装必要组件
sdkmanager "platform-tools"
sdkmanager "build-tools;34.0.0"
sdkmanager "platforms;android-34"

# 验证
adb version
```

### 8. 接受 Flutter Android 许可证

```bash
yes | flutter doctor --android-licenses
```

### 9. 运行 Flutter Doctor 检查

```bash
flutter doctor
```

---

## 安装完成后的验证

运行以下命令验证所有组件：

```bash
# 1. 检查 Java 版本
java -version

# 2. 检查 Flutter 版本
flutter --version

# 3. 检查 ADB 版本
adb version

# 4. 运行 Flutter Doctor 完整检查
flutter doctor
```

## 预期输出

### Java 版本
```
openjdk version "17.x.x" ...
```

### Flutter 版本
```
Flutter 3.27.4 • channel stable ...
```

### ADB 版本
```
Android Debug Bridge version 1.0.41 ...
```

### Flutter Doctor
应该显示所有项目为绿色对勾（✓）

## 常见问题

### WSL2 中连接 Android 设备
在 WSL2 中访问 USB 设备需要额外配置：
1. 在 Windows 中安装 adb
2. 在 Windows 中运行 `adb -a nodaemon server`
3. 在 WSL2 中设置：`export ADB_SERVER_SOCKET=tcp:$(hostname -I | awk '{print $1}'):5037`

### 网络问题
如果下载速度慢，脚本已配置国内镜像：
- PUB_HOSTED_URL=https://pub.flutter-io.cn
- FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

---

## 下一步

安装完成后，您可以：

1. 创建第一个 Flutter 项目：
   ```bash
   flutter create my_app
   cd my_app
   ```

2. 运行项目（需要连接设备或模拟器）：
   ```bash
   flutter run
   ```

祝您开发愉快！
