#!/bin/bash
set -e

echo "=========================================="
echo "Flutter Android 开发环境安装脚本"
echo "=========================================="
echo ""

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 检测使用的shell
if [ -n "$ZSH_VERSION" ]; then
    SHELL_RC="$HOME/.zshrc"
    SHELL_NAME="Zsh"
else
    SHELL_RC="$HOME/.bashrc"
    SHELL_NAME="Bash"
fi

# 工作目录
INSTALL_DIR="$HOME"
FLUTTER_DIR="$INSTALL_DIR/flutter"
ANDROID_DIR="$INSTALL_DIR/Android"
ANDROID_SDK_DIR="$ANDROID_DIR/Sdk"
CMD_TOOLS_DIR="$ANDROID_SDK_DIR/cmdline-tools/latest"

# 创建日志文件
LOG_FILE="$HOME/flutter_install.log"
exec > >(tee -a "$LOG_FILE") 2>&1

echo "日志文件: $LOG_FILE"
echo "检测到Shell: $SHELL_NAME"
echo ""

# 步骤1: 安装系统依赖（需要sudo）
echo -e "${YELLOW}[1/6] 检查系统依赖...${NC}"
MISSING_DEPS=""
for dep in git curl unzip xz-utils zip libglu1-mesa; do
    if ! dpkg -s "$dep" >/dev/null 2>&1; then
        MISSING_DEPS="$MISSING_DEPS $dep"
    fi
done

if [ -n "$MISSING_DEPS" ]; then
    echo "缺少依赖:$MISSING_DEPS"
    echo "请运行: sudo apt update && sudo apt install -y$MISSING_DEPS"
    echo "然后重新运行此脚本"
    exit 1
else
    echo -e "${GREEN}✓ 所有系统依赖已安装${NC}"
fi
echo ""

# 步骤2: 安装Java JDK 17（需要sudo）
echo -e "${YELLOW}[2/6] 检查Java JDK 17...${NC}"
if ! java -version 2>&1 | grep -q "17"; then
    echo "Java JDK 17 未安装"
    echo "请运行: sudo apt install -y openjdk-17-jdk"
    echo "然后重新运行此脚本"
    exit 1
else
    echo -e "${GREEN}✓ Java JDK 17 已安装${NC}"
    java -version
fi
echo ""

# 步骤3: 安装Flutter SDK
echo -e "${YELLOW}[3/6] 安装Flutter SDK...${NC}"
if [ -d "$FLUTTER_DIR" ]; then
    echo -e "${YELLOW}Flutter已存在，跳过下载${NC}"
else
    # 获取最新稳定版本
    echo "正在获取Flutter最新稳定版本..."
    FLUTTER_VERSION="3.27.4"
    FLUTTER_URL="https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_${FLUTTER_VERSION}-stable.tar.xz"

    echo "下载Flutter $FLUTTER_VERSION..."
    curl -L "$FLUTTER_URL" -o "/tmp/flutter.tar.xz"

    echo "解压Flutter..."
    cd "$INSTALL_DIR"
    tar -xf "/tmp/flutter.tar.xz"
    rm "/tmp/flutter.tar.xz"
fi

# 配置Flutter国内镜像（可选但推荐）
echo "配置Flutter环境变量..."
FLUTTER_CONFIG='
# Flutter配置
export PATH="$HOME/flutter/bin:$PATH"
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
'

# 更新shell配置文件
if ! grep -q "flutter/bin" "$SHELL_RC"; then
    echo "$FLUTTER_CONFIG" >> "$SHELL_RC"
fi

# 应用到当前会话
export PATH="$FLUTTER_DIR/bin:$PATH"
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

echo -e "${GREEN}✓ Flutter SDK 安装完成${NC}"
flutter --version
echo ""

# 步骤4: 安装Android SDK命令行工具
echo -e "${YELLOW}[4/6] 安装Android SDK命令行工具...${NC}"

# 创建目录结构
mkdir -p "$CMD_TOOLS_DIR"
mkdir -p "$ANDROID_SDK_DIR/platforms"
mkdir -p "$ANDROID_SDK_DIR/platform-tools"

# 下载命令行工具
if [ ! -f "$CMD_TOOLS_DIR/bin/sdkmanager" ]; then
    CMD_TOOLS_URL="https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip"
    echo "下载Android命令行工具..."
    curl -L "$CMD_TOOLS_URL" -o "/tmp/cmdline-tools.zip"

    echo "解压命令行工具..."
    unzip -q "/tmp/cmdline-tools.zip" -d "/tmp"
    mv "/tmp/cmdline-tools"/* "$CMD_TOOLS_DIR/"
    rm -rf "/tmp/cmdline-tools" "/tmp/cmdline-tools.zip"
fi

# 配置Android环境变量
ANDROID_CONFIG='
# Android SDK配置
export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_SDK_ROOT="$ANDROID_HOME"
export PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="$ANDROID_HOME/emulator:$PATH"
'

# 更新shell配置文件
if ! grep -q "ANDROID_HOME" "$SHELL_RC"; then
    echo "$ANDROID_CONFIG" >> "$SHELL_RC"
fi

# 应用到当前会话
export ANDROID_HOME="$ANDROID_SDK_DIR"
export ANDROID_SDK_ROOT="$ANDROID_HOME"
export PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"

echo -e "${GREEN}✓ Android命令行工具安装完成${NC}"
echo ""

# 步骤5: 安装Android SDK组件
echo -e "${YELLOW}[5/6] 安装Android SDK组件...${NC}"

# 接受许可证（第一次需要）
yes | sdkmanager --licenses || true

# 安装必要的SDK组件
echo "安装platform-tools..."
sdkmanager "platform-tools"

echo "安装build-tools;34.0.0..."
sdkmanager "build-tools;34.0.0"

echo "安装platforms;android-34..."
sdkmanager "platforms;android-34"

echo -e "${GREEN}✓ Android SDK组件安装完成${NC}"
adb version
echo ""

# 步骤6: 运行flutter doctor检查
echo -e "${YELLOW}[6/6] 运行flutter doctor检查...${NC}"

# 预先接受Android licenses
yes | flutter doctor --android-licenses || true

echo "运行flutter doctor..."
flutter doctor

echo ""
echo -e "${GREEN}=========================================="
echo "安装完成！"
echo "==========================================${NC}"
echo ""
echo "请运行以下命令以应用环境变量："
echo "  source ~/.bashrc"
echo ""
echo "或者重新打开终端。"
echo ""
echo "版本信息："
java -version 2>&1 | head -1
flutter --version
adb version
echo ""
echo "flutter doctor输出："
flutter doctor
echo ""
echo "环境变量已添加到 ~/.bashrc"
