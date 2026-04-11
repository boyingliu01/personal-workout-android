# Flutter Android 开发环境 - 完整安装命令

请按顺序在终端中执行以下命令：

---

## 第一部分：安装系统依赖（需要 sudo）

```bash
# 更新包列表并安装基础依赖
sudo apt update
sudo apt install -y git curl unzip xz-utils zip libglu1-mesa

# 安装 Java JDK 17
sudo apt install -y openjdk-17-jdk

# 验证 Java 安装
java -version
```

预期输出应该显示：`openjdk version "17.x.x"`

---

## 第二部分：下载并安装 Flutter SDK

```bash
# 进入用户主目录
cd ~

# 下载 Flutter 3.27.4 (稳定版)
curl -L https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.27.4-stable.tar.xz -o /tmp/flutter.tar.xz

# 解压 Flutter
tar -xf /tmp/flutter.tar.xz

# 清理临时文件
rm /tmp/flutter.tar.xz
```

---

## 第三部分：配置 Flutter 环境变量

### 如果您使用 Zsh（当前环境）：

```bash
# 编辑 ~/.zshrc
cat >> ~/.zshrc << 'EOF'

# Flutter配置
export PATH="$HOME/flutter/bin:$PATH"
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
EOF

# 应用配置
source ~/.zshrc

# 验证 Flutter
flutter --version
```

### 如果您使用 Bash：

```bash
# 编辑 ~/.bashrc
cat >> ~/.bashrc << 'EOF'

# Flutter配置
export PATH="$HOME/flutter/bin:$PATH"
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
EOF

# 应用配置
source ~/.bashrc

# 验证 Flutter
flutter --version
```

---

## 第四部分：安装 Android SDK 命令行工具

```bash
# 创建 Android SDK 目录结构
mkdir -p ~/Android/Sdk/cmdline-tools/latest
mkdir -p ~/Android/Sdk/platforms
mkdir -p ~/Android/Sdk/platform-tools

# 下载 Android 命令行工具
curl -L https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip -o /tmp/cmdline-tools.zip

# 解压
unzip -q /tmp/cmdline-tools.zip -d /tmp

# 移动到正确位置
mv /tmp/cmdline-tools/* ~/Android/Sdk/cmdline-tools/latest/

# 清理临时文件
rm -rf /tmp/cmdline-tools /tmp/cmdline-tools.zip
```

---

## 第五部分：配置 Android 环境变量

### 如果您使用 Zsh（当前环境）：

```bash
# 编辑 ~/.zshrc
cat >> ~/.zshrc << 'EOF'

# Android SDK配置
export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_SDK_ROOT="$ANDROID_HOME"
export PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="$ANDROID_HOME/emulator:$PATH"
EOF

# 应用配置
source ~/.zshrc
```

### 如果您使用 Bash：

```bash
# 编辑 ~/.bashrc
cat >> ~/.bashrc << 'EOF'

# Android SDK配置
export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_SDK_ROOT="$ANDROID_HOME"
export PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="$ANDROID_HOME/emulator:$PATH"
EOF

# 应用配置
source ~/.bashrc
```

---

## 第六部分：安装 Android SDK 组件

```bash
# 接受所有许可证
yes | sdkmanager --licenses

# 安装 platform-tools
sdkmanager "platform-tools"

# 安装 build-tools 34.0.0
sdkmanager "build-tools;34.0.0"

# 安装 Android 34 平台
sdkmanager "platforms;android-34"

# 验证 ADB
adb version
```

---

## 第七部分：接受 Flutter Android 许可证

```bash
# 接受 Flutter Android 许可证
yes | flutter doctor --android-licenses
```

---

## 第八部分：运行 Flutter Doctor 完整检查

```bash
# 运行完整检查
flutter doctor
```

---

## 验证安装 - 版本信息检查

```bash
echo "=== Java 版本 ==="
java -version

echo -e "\n=== Flutter 版本 ==="
flutter --version

echo -e "\n=== ADB 版本 ==="
adb version

echo -e "\n=== Flutter Doctor 检查 ==="
flutter doctor
```

---

## 环境变量配置确认

执行以下命令查看已添加的配置：

### Zsh 用户：
```bash
grep -A 10 "Flutter配置" ~/.zshrc
grep -A 10 "Android SDK配置" ~/.zshrc
```

### Bash 用户：
```bash
grep -A 10 "Flutter配置" ~/.bashrc
grep -A 10 "Android SDK配置" ~/.bashrc
```

---

## 常见问题解决

### 问题1：下载速度慢
脚本已配置国内镜像，如果仍然慢，可以检查网络连接。

### 问题2：WSL2 中连接 Android 设备
在 Windows 中：
1. 安装 Android SDK Platform Tools
2. 运行：`adb -a nodaemon server`

在 WSL2 中：
```bash
export ADB_SERVER_SOCKET=tcp:$(hostname -I | awk '{print $1}'):5037
adb devices
```

### 问题3：权限被拒绝
确保所有命令都在正确的用户权限下执行，不要使用 sudo 运行 flutter 命令。

---

## 安装完成后

创建您的第一个 Flutter 项目：

```bash
cd ~/projects
flutter create sport_apk
cd sport_apk
flutter run
```

祝开发顺利！
