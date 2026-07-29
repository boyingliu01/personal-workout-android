# VSCode + WSL + Flutter 开发环境配置指南

本文档详细介绍如何在 Windows 上使用 VSCode + WSL2 + Flutter 开发 Android 应用。

## 目录

1. [方案概述](#1-方案概述)
2. [前置要求](#2-前置要求)
3. [WSL2 安装步骤](#3-wsl2-安装步骤)
4. [VSCode 配置](#4-vscode-配置)
5. [Flutter SDK 安装（WSL 内）](#5-flutter-sdk-安装wsl内)
6. [Android SDK 安装（WSL 内）](#6-android-sdk-安装wsl内)
7. [Java 安装（WSL 内）](#7-java-安装wsl内)
8. [VSCode Flutter 扩展配置](#8-vscode-flutter-扩展配置)
9. [物理设备调试（关键步骤）](#9-物理设备调试关键步骤)
10. [模拟器方案（可选）](#10-模拟器方案可选)
11. [项目创建和运行测试](#11-项目创建和运行测试)
12. [常见问题解决](#12-常见问题解决)
13. [与纯 Windows 开发对比](#13-与纯-windows-开发对比)
14. [推荐工作流程](#14-推荐工作流程)

---

## 1. 方案概述

### 1.1 什么是 WSL2（Windows Subsystem for Linux 2）

WSL2（Windows Subsystem for Linux 2）是微软推出的一项功能，允许开发者在 Windows 上直接运行 Linux 环境，而无需传统的虚拟机或双系统启动。

**WSL2 的主要特点：**
- 完整的 Linux 内核
- 支持 Docker 容器
- 优秀的文件系统性能
- 与 Windows 的深度集成
- 快速启动

### 1.2 为什么选择 WSL2 而不是直接在 Windows 开发 Flutter

| 优势 | 说明 |
|------|------|
| **文件系统性能** | Linux 文件系统比 NTFS 更适合 Flutter 开发，特别是涉及大量小文件的场景 |
| **Linux 工具链** | 许多开发工具和脚本在 Linux 下表现更佳 |
| **终端体验** | Bash/Zsh 比 PowerShell/CMD 更灵活强大 |
| **依赖管理** | 包管理（apt）更方便，版本兼容性更好 |
| **社区支持** | 大部分 Flutter 包开发者使用 Linux/macOS，遇到问题更容易找到解决方案 |

### 1.3 VSCode + WSL2 + Flutter 的工作模式图解

```
┌─────────────────────────────────────────────────────────────┐
│                        Windows 10/11                         │
│  ┌───────────────────────────────────────────────────────┐  │
│  │  VSCode (Windows 端)                                   │  │
│  │  ┌─────────────────────────────────────────────────┐  │  │
│  │  │  Remote - WSL 扩展                               │  │  │
│  │  └─────────────────────────────────────────────────┘  │  │
│  └───────────────────────────────────────────────────────┘  │
│                            │                                  │
│  ┌─────────────────────────┼──────────────────────────────┐  │
│  │  WSL2 (Ubuntu)          ▼                              │  │
│  │  ┌───────────────────────────────────────────────────┐  │  │
│  │  │  Flutter SDK                                        │  │  │
│  │  │  Android SDK                                        │  │  │
│  │  │  OpenJDK 17                                         │  │  │
│  │  │  Dart VM                                            │  │  │
│  │  └───────────────────────────────────────────────────┘  │  │
│  └──────────────────────────────────────────────────────────┘  │
│                            │                                  │
│  ┌─────────────────────────┴──────────────────────────────┐  │
│  │  设备连接                                                 │  │
│  │  - 物理 Android 设备 (USB/Network)                       │  │
│  │  - Windows 端 Android 模拟器                             │  │
│  └──────────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────┘
```

### 1.4 与直接 Windows 开发、macOS 开发的对比

| 特性 | WSL2 方案 | 纯 Windows | macOS |
|------|-----------|-----------|-------|
| 文件系统性能 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| 物理设备调试 | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| 模拟器性能 | ⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| 工具链兼容性 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| 学习曲线 | ⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ |
| 成本 | 免费 | 免费 | 昂贵 |

---

## 2. 前置要求

### 2.1 Windows 版本要求

- **Windows 10**: 版本 2004 及以上（内部版本 19041 及以上）
- **Windows 11**: 所有版本均支持

**如何检查 Windows 版本：**
```powershell
# 按下 Win + R，输入 winver，回车
```

### 2.2 硬件要求

| 组件 | 最低要求 | 推荐配置 |
|------|---------|---------|
| **CPU** | 支持虚拟化（Intel VT-x / AMD-V） | 4 核及以上 |
| **内存** | 8GB | 16GB 及以上 |
| **硬盘** | 20GB 可用空间 | SSD，50GB+ 可用空间 |
| **网络** | 稳定的互联网连接 | 高速网络 |

### 2.3 需要开启的功能

1. **BIOS/UEFI 虚拟化支持**
   - 重启电脑进入 BIOS/UEFI
   - 启用 Intel VT-x 或 AMD-V
   - 启用 Intel VT-d 或 AMD IOMMU（可选）

2. **Windows 功能**
   - 虚拟机平台
   - Windows 虚拟机监控程序平台
   - WSL

---

## 3. WSL2 安装步骤

### 3.1 启用 WSL2 的 PowerShell 命令

以**管理员身份**打开 PowerShell，依次执行以下命令：

```powershell
# 启用 WSL 功能
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# 启用虚拟机平台
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# 重启计算机
shutdown /r /t 0
```

**重启后，继续以管理员身份执行：**

```powershell
# 下载并安装 WSL2 内核更新
# 或者从 https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi 手动下载安装

# 设置 WSL2 为默认版本
wsl --set-default-version 2
```

### 3.2 安装 Ubuntu 发行版

**方式一：Microsoft Store（推荐）**
1. 打开 Microsoft Store
2. 搜索 "Ubuntu"
3. 选择 "Ubuntu 22.04 LTS" 或 "Ubuntu 20.04 LTS"
4. 点击"获取"或"安装"

**方式二：命令行安装**
```powershell
# 查看可用的 Linux 发行版
wsl --list --online

# 安装 Ubuntu 22.04
wsl --install -d Ubuntu-22.04
```

**首次启动 Ubuntu：**
1. 从开始菜单启动 Ubuntu
2. 等待安装完成
3. 创建用户名和密码（记住这些信息）

### 3.3 设置 WSL2 为默认版本

```powershell
# 查看当前 WSL 版本
wsl --list --verbose

# 如果 Ubuntu 不是 WSL2，执行：
wsl --set-version Ubuntu-22.04 2

# 设置 WSL2 为默认
wsl --set-default-version 2
```

### 3.4 验证安装

```powershell
# 查看 WSL 版本
wsl --version

# 列出所有发行版及其状态
wsl --list --verbose
```

期望输出：
```
  NAME            STATE           VERSION
* Ubuntu-22.04    Running         2
```

### 3.5 配置 WSL2 内存和 CPU 限制（.wslconfig）

在 Windows 用户目录下创建 `.wslconfig` 文件：

```ini
# 文件路径: C:\Users\<你的用户名>\.wslconfig

[wsl2]
# 限制 WSL2 内存使用（建议不超过物理内存的 50-70%）
memory=8GB

# 限制 CPU 核心数
processors=4

# 启用嵌套虚拟化（可选，用于在 WSL 内运行 Docker）
nestedVirtualization=true

# 交换空间大小
swap=4GB

# 交换文件路径
swapFile=C:\\temp\\wsl-swap.vhdx
```

**应用配置：**
```powershell
# 关闭 WSL
wsl --shutdown

# 重新启动 WSL
wsl
```

---

## 4. VSCode 配置

### 4.1 安装 VSCode（Windows 端）

1. 访问 [https://code.visualstudio.com/](https://code.visualstudio.com/)
2. 下载 Windows 版本安装包
3. 运行安装程序，按照向导完成安装

**推荐安装选项：**
- ✅ 添加到 PATH（重要）
- ✅ 创建桌面图标
- ✅ 将"通过 Code 打开"添加到上下文菜单

### 4.2 安装 Remote - WSL 扩展

1. 打开 VSCode
2. 点击左侧扩展图标（或按 `Ctrl+Shift+X`）
3. 搜索 "Remote - WSL"
4. 安装由 Microsoft 发布的 "Remote - WSL" 扩展

### 4.3 连接到 WSL

**方式一：通过左下角按钮**
1. 点击 VSCode 左下角的绿色图标
2. 选择 "Connect to WSL"
3. 等待连接建立

**方式二：通过命令面板**
1. 按 `Ctrl+Shift+P` 打开命令面板
2. 输入 "WSL: Connect to WSL"
3. 选择目标发行版

**方式三：从 WSL 终端打开**
```bash
# 在 WSL 终端中，进入项目目录，执行：
code .
```

### 4.4 验证连接状态

连接成功后，VSCode 左下角会显示：
```
WSL: Ubuntu-22.04
```

### 4.5 在 WSL 中打开项目文件夹

1. 连接到 WSL 后
2. 点击 "文件" > "打开文件夹"
3. 选择 WSL 中的项目目录（例如 `/home/<用户名>/projects`）

---

## 5. Flutter SDK 安装（WSL 内）

**以下所有操作都在 WSL Ubuntu 终端中执行。**

### 5.1 更新 apt 包管理器

```bash
sudo apt update && sudo apt upgrade -y
```

### 5.2 安装依赖

```bash
sudo apt install -y \
  git \
  curl \
  unzip \
  xz-utils \
  zip \
  libglu1-mesa \
  clang \
  cmake \
  ninja-build \
  pkg-config \
  libgtk-3-dev \
  liblzma-dev
```

### 5.3 下载 Flutter SDK

访问 [Flutter 官网](https://docs.flutter.dev/get-started/install/linux) 获取最新版本链接，或使用以下命令：

```bash
# 创建工具目录
mkdir -p ~/tools
cd ~/tools

# 下载 Flutter SDK（替换为最新版本）
# 最新版本请查看: https://flutter.dev/docs/development/tools/sdk/releases
FLUTTER_VERSION="3.16.0"
wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_${FLUTTER_VERSION}-stable.tar.xz

# 解压
tar xf flutter_linux_${FLUTTER_VERSION}-stable.tar.xz
```

### 5.4 添加到 PATH

编辑 `~/.bashrc` 文件：

```bash
# 打开 .bashrc
nano ~/.bashrc

# 在文件末尾添加以下内容
export PATH="$HOME/tools/flutter/bin:$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"

# 保存并退出: Ctrl+O, Enter, Ctrl+X

# 立即生效
source ~/.bashrc
```

如果你使用的是 zsh，编辑 `~/.zshrc` 而不是 `~/.bashrc`。

### 5.5 验证 Flutter 安装

```bash
# 查看 Flutter 版本
flutter --version

# 运行 Flutter doctor 检查环境
flutter doctor
```

`flutter doctor` 会显示当前环境的状态，可能会有一些警告（例如 Android SDK 未安装），我们会在后续步骤中解决。

---

## 6. Android SDK 安装（WSL 内）

### 6.1 创建目录结构

```bash
mkdir -p ~/Android/Sdk/cmdline-tools
```

### 6.2 下载 Android Studio 命令行工具

访问 [Android Studio 官网](https://developer.android.com/studio#command-tools) 获取最新的命令行工具链接：

```bash
cd ~/Android/Sdk

# 下载命令行工具（请替换为最新版本的链接）
# 最新版本: https://developer.android.com/studio#command-tools
wget https://dl.google.com/android/repository/commandlinetools-linux-10406996_latest.zip

# 解压
unzip commandlinetools-linux-10406996_latest.zip

# 重命名为 latest（这是 Android SDK 要求的目录结构）
mv cmdline-tools latest
mkdir cmdline-tools
mv latest cmdline-tools/
```

最终目录结构应该是：
```
~/Android/Sdk/
└── cmdline-tools/
    └── latest/
        ├── bin/
        ├── lib/
        └── ...
```

### 6.3 设置环境变量

编辑 `~/.bashrc`：

```bash
nano ~/.bashrc

# 添加以下内容
export ANDROID_HOME="$HOME/Android/Sdk"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/emulator"

# 保存退出后生效
source ~/.bashrc
```

### 6.4 安装必需的 Android SDK 组件

```bash
# 接受 SDK 许可证
sdkmanager --licenses

# 安装必需的组件
sdkmanager "platform-tools" "build-tools;34.0.0" "platforms;android-34"

# （可选）安装更多 Android 版本
sdkmanager "platforms;android-33" "platforms;android-32"
```

### 6.5 验证安装

```bash
# 查看已安装的包
sdkmanager --list_installed

# 验证 adb
adb version
```

---

## 7. Java 安装（WSL 内）

Flutter 需要 Java JDK 来构建 Android 应用。

### 7.1 安装 OpenJDK 17

```bash
sudo apt update
sudo apt install -y openjdk-17-jdk
```

### 7.2 设置 JAVA_HOME 环境变量

```bash
# 编辑 ~/.bashrc
nano ~/.bashrc

# 添加以下内容
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64"
export PATH="$PATH:$JAVA_HOME/bin"

# 保存退出后生效
source ~/.bashrc
```

### 7.3 验证 Java 安装

```bash
# 查看 Java 版本
java -version

# 查看 JAVA_HOME
echo $JAVA_HOME

# 再次运行 Flutter doctor 检查
flutter doctor
```

期望输出：
```
java version "17.x.x" 202x-xx-xx
OpenJDK Runtime Environment (build 17.x.x+xx-xxxx)
OpenJDK 64-Bit Server VM (build 17.x.x+xx-xxxx, mixed mode, sharing)
```

---

## 8. VSCode Flutter 扩展配置

### 8.1 在 WSL 内安装 Flutter 扩展

1. 确保 VSCode 已连接到 WSL
2. 打开扩展面板（`Ctrl+Shift+X`）
3. 搜索 "Flutter"
4. 安装由 Dart Code 发布的 "Flutter" 扩展
   - 这会自动安装 "Dart" 扩展作为依赖

### 8.2 配置 launch.json 用于调试

在项目根目录下创建 `.vscode/launch.json`：

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Flutter",
      "type": "dart",
      "request": "launch",
      "program": "lib/main.dart",
      "args": [],
      "flutterMode": "debug"
    },
    {
      "name": "Flutter (Profile)",
      "type": "dart",
      "request": "launch",
      "program": "lib/main.dart",
      "flutterMode": "profile"
    },
    {
      "name": "Flutter (Release)",
      "type": "dart",
      "request": "launch",
      "program": "lib/main.dart",
      "flutterMode": "release"
    }
  ]
}
```

### 8.3 配置 settings.json

在项目根目录下创建 `.vscode/settings.json`：

```json
{
  // Dart/Flutter 配置
  "dart.lineLength": 120,
  "dart.previewFlutterUiGuides": true,
  "dart.previewFlutterUiGuidesCustomTracking": true,
  "dart.showTodos": true,
  "dart.warnWhenEditingFilesOutsideWorkspace": true,
  
  // 代码格式化
  "editor.formatOnSave": true,
  "editor.formatOnType": true,
  "[dart]": {
    "editor.formatOnSave": true,
    "editor.formatOnType": true,
    "editor.defaultFormatter": "Dart-Code.dart-code",
    "editor.rulers": [120],
    "editor.tabCompletion": "onlySnippets",
    "editor.codeActionsOnSave": {
      "source.fixAll": true,
      "source.organizeImports": true
    }
  },
  
  // 文件关联
  "files.associations": {
    "*.arb": "json"
  },
  
  // 终端配置
  "terminal.integrated.defaultProfile.linux": "bash"
}
```

---

## 9. 物理设备调试（关键步骤）

这是 WSL2 + Flutter 开发中最复杂的部分，因为 USB 设备默认不会直通到 WSL。

### 9.1 在 Windows 上安装 Google USB Driver

1. 访问 [Google USB Driver 页面](https://developer.android.com/studio/run/win-usb)
2. 下载并解压驱动程序
3. 或者通过 Android Studio SDK Manager 安装：
   - Android Studio > SDK Manager > SDK Tools > Google USB Driver

### 9.2 在 Android 手机上开启开发者选项

1. 打开手机的"设置"
2. 进入"关于手机"
3. 连续点击"版本号" 7 次
4. 返回设置主界面，找到"开发者选项"
5. 进入"开发者选项"

### 9.3 开启 USB 调试

1. 在"开发者选项"中
2. 找到并开启"USB 调试"
3. （可选）开启"USB 安装"和"USB 调试（安全设置）"

### 9.4 连接手机到 Windows

1. 使用 USB 数据线连接手机和电脑
2. 手机上会弹出"允许 USB 调试吗？"的提示
3. 勾选"始终允许这台计算机"，点击"允许"

在 Windows 上验证连接：
```powershell
# 打开 PowerShell，进入 Android SDK platform-tools 目录
# 或者如果已将其添加到 PATH，直接执行：
adb devices
```

应该能看到你的设备。

---

### 方案一：ADB over Network（推荐，更简单）

这种方案在 Windows 和 WSL 之间通过网络连接 ADB。

#### 步骤 1：在 Windows 上启动 ADB 服务器

```powershell
# 确保 Windows 上的 adb 正在运行
adb kill-server
adb start-server
adb devices  # 应该能看到你的设备

# 让 ADB 监听 TCP/IP 端口
adb tcpip 5555
```

#### 步骤 2：获取 Windows 的 IP 地址

```powershell
ipconfig
```

找到 WSL 虚拟网络适配器的 IPv4 地址（通常是 `172.x.x.x` 或 `192.168.x.x`）。

或者在 WSL 中获取 Windows IP：
```bash
# 在 WSL 中执行
cat /etc/resolv.conf | grep nameserver | awk '{print $2}'
```

#### 步骤 3：在 WSL 中连接到 Windows 的 ADB

```bash
# 杀死 WSL 中的 adb 服务器
adb kill-server

# 连接到 Windows 的 adb（替换为你的 Windows IP）
export WINDOWS_HOST_IP=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}')
adb connect $WINDOWS_HOST_IP:5555

# 验证连接
adb devices
```

你应该能看到类似这样的输出：
```
List of devices attached
172.x.x.x:5555     device
```

#### 步骤 4：自动化（可选）

为了避免每次都手动连接，在 WSL 的 `~/.bashrc` 中添加：

```bash
# 自动连接到 Windows ADB
connect_adb() {
  export WINDOWS_HOST_IP=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}')
  adb kill-server > /dev/null 2>&1
  sleep 1
  adb connect $WINDOWS_HOST_IP:5555
  adb devices
}

# 可选：每次启动终端时自动连接
# connect_adb
```

现在你可以随时运行 `connect_adb` 来连接设备。

---

### 方案二：USB/IP 直通（更直接但较复杂）

这种方案将 USB 设备直接直通到 WSL。

#### 步骤 1：在 Windows 上安装 usbipd-win

```powershell
# 使用 winget 安装（推荐）
winget install --interactive --exact dorssel.usbipd-win

# 或者从 GitHub 下载安装：
# https://github.com/dorssel/usbipd-win/releases
```

#### 步骤 2：列出 Windows 上的 USB 设备

```powershell
# 以管理员身份打开 PowerShell
usbipd wsl list
```

你会看到类似这样的输出：
```
BUSID  DEVICE
1-1    Google Inc. Nexus/Pixel Device (Universal ADB Interface)
1-2    USB Input Device
```

找到你的 Android 设备的 BUSID。

#### 步骤 3：将设备绑定到 WSL

```powershell
# 绑定设备（替换为你的 BUSID）
usbipd wsl attach --busid 1-1

# 如果你有多个 WSL 发行版，指定发行版：
# usbipd wsl attach --busid 1-1 --distribution Ubuntu-22.04
```

#### 步骤 4：在 WSL 中验证

```bash
# 在 WSL 中执行
lsusb

# 应该能看到你的 Android 设备
adb devices
```

#### 步骤 5：断开设备（使用完毕后）

```powershell
usbipd wsl detach --busid 1-1
```

---

## 10. 模拟器方案（可选）

### 方案 A：Windows 端 Android Studio 模拟器 + WSL Flutter（推荐）

这个方案利用 Windows 端的模拟器，性能更好。

#### 步骤 1：在 Windows 上安装 Android Studio

1. 下载 [Android Studio](https://developer.android.com/studio)
2. 运行安装程序
3. 启动 Android Studio，完成初始设置
4. 安装 Android SDK（记住安装路径）

#### 步骤 2：创建 Android 模拟器

1. 打开 Android Studio
2. 进入 Device Manager（设备管理器）
3. 点击 "Create Device"
4. 选择设备型号（推荐 Pixel 6）
5. 选择系统镜像（推荐 API 34）
6. 完成创建

#### 步骤 3：启动模拟器

1. 在 Device Manager 中点击播放按钮启动模拟器
2. 或者通过命令行启动：
```powershell
# 进入 Windows Android SDK 的 emulator 目录
cd C:\Users\<你的用户名>\AppData\Local\Android\Sdk\emulator
.\emulator -list-avds
.\emulator -avd <模拟器名称>
```

#### 步骤 4：连接 WSL 到模拟器

使用与物理设备相同的 ADB over Network 方式：

```powershell
# 在 Windows 上
adb tcpip 5555
```

```bash
# 在 WSL 中
export WINDOWS_HOST_IP=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}')
adb kill-server
adb connect $WINDOWS_HOST_IP:5555
adb devices
```

现在你应该能看到模拟器设备。

---

### 方案 B：WSL 内使用 Docker 运行 Android 模拟器（较复杂）

这个方案适合高级用户，需要在 WSL 内配置 GPU 支持。

```bash
# 1. 在 WSL 内安装 Docker
# 2. 使用 Docker 运行 Android 模拟器
# 这种方案配置复杂，性能可能不如方案 A，不推荐新手使用
```

---

## 11. 项目创建和运行测试

### 11.1 在 WSL 内创建项目

```bash
# 创建项目目录（如果不存在）
mkdir -p ~/projects
cd ~/projects

# 创建 Flutter 项目
flutter create my_app

# 进入项目目录
cd my_app
```

### 11.2 打开项目

```bash
# 在 VSCode 中打开项目
code .
```

### 11.3 检查可用设备

```bash
flutter devices
```

你应该能看到已连接的物理设备或模拟器。

### 11.4 运行应用

```bash
# 运行应用（debug 模式）
flutter run

# 如果你有多个设备，指定设备 ID
flutter run -d <device_id>

# 或者使用 VSCode 的调试功能：按 F5 启动调试
```

### 11.5 热重载

在 `flutter run` 运行时：
- 按 `r` 键：热重载（快速查看代码变更）
- 按 `R` 键：热重启（完全重启应用）
- 按 `q` 键：退出

### 11.6 构建 APK

```bash
# 构建 debug APK
flutter build apk --debug

# 构建 release APK（推荐用于发布）
flutter build apk --release

# 构建所有 ABI 的 APK
flutter build apk --release --split-per-abi
```

构建完成后，APK 文件位于：
```
build/app/outputs/flutter-apk/app-release.apk
```

### 11.7 安装 APK 到设备

```bash
# 安装 APK
adb install build/app/outputs/flutter-apk/app-release.apk

# 如果已安装，使用 -r 重新安装
adb install -r build/app/outputs/flutter-apk/app-release.apk
```

---

## 12. 常见问题解决

### 12.1 WSL2 内存不足如何扩展

**症状：** Flutter 构建失败，提示 OOM（内存不足）。

**解决方案：**

1. 编辑 Windows 下的 `.wslconfig`：
```ini
[wsl2]
memory=12GB
swap=8GB
```

2. 重启 WSL：
```powershell
wsl --shutdown
wsl
```

3. 在 WSL 中验证：
```bash
free -h
```

### 12.2 adb devices 显示空/无权限

**症状：** `adb devices` 显示 `unauthorized` 或 `???????????? no permissions`。

**解决方案：**

```bash
# 方案 1：重新授权
adb kill-server
# 断开并重新连接 USB
# 在手机上点击"允许 USB 调试"

# 方案 2：检查 udev 规则（WSL 中）
sudo nano /etc/udev/rules.d/51-android.rules

# 添加以下内容（根据你的设备厂商修改）：
SUBSYSTEM=="usb", ATTR{idVendor}=="18d1", MODE="0666", GROUP="plugdev"
SUBSYSTEM=="usb", ATTR{idVendor}=="0bb4", MODE="0666", GROUP="plugdev"
# 更多厂商 ID: https://developer.android.com/studio/run/device

# 保存后：
sudo udevadm control --reload-rules
sudo udevadm trigger

# 方案 3：使用 ADB over Network（推荐）
# 参考第 9 章方案一
```

### 12.3 Flutter doctor 报告 Android SDK 问题

**症状：** `flutter doctor` 提示 Android SDK 未找到或 licenses 未接受。

**解决方案：**

```bash
# 1. 检查环境变量
echo $ANDROID_HOME
echo $PATH

# 2. 如果环境变量未设置，重新配置：
nano ~/.bashrc
# 添加：
export ANDROID_HOME="$HOME/Android/Sdk"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
# 保存后
source ~/.bashrc

# 3. 接受所有 licenses
sdkmanager --licenses

# 4. 再次检查
flutter doctor -v
```

### 12.4 USB 设备无法直通到 WSL

**症状：** 使用 usbipd-win 时出错。

**解决方案：**

```powershell
# 1. 确保 usbipd-win 是最新版本
winget upgrade dorssel.usbipd-win

# 2. 确保 WSL2 版本是 2
wsl --list --verbose

# 3. 以管理员身份运行 PowerShell
# 4. 先解绑再重新绑定
usbipd wsl detach --busid 1-1
usbipd wsl attach --busid 1-1

# 5. 如果仍然失败，使用 ADB over Network 方案
```

### 12.5 模拟器无法连接

**症状：** WSL 中的 adb 无法连接到 Windows 模拟器。

**解决方案：**

```bash
# 1. 确保 Windows 模拟器正在运行
# 2. 在 Windows 上检查：
adb devices

# 3. 重启 Windows 的 adb：
adb kill-server
adb start-server
adb tcpip 5555

# 4. 在 WSL 中：
export WINDOWS_HOST_IP=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}')
adb kill-server
adb connect $WINDOWS_HOST_IP:5555

# 5. 如果仍然失败，检查 Windows 防火墙设置
# 允许 adb 通过防火墙
```

### 12.6 Gradle 构建缓慢/失败

**症状：** `flutter run` 卡在 Gradle 构建阶段。

**解决方案：**

```bash
# 1. 配置 Gradle 镜像（中国用户）
mkdir -p ~/.gradle
nano ~/.gradle/init.gradle

# 添加以下内容：
allprojects {
    repositories {
        maven { url 'https://maven.aliyun.com/repository/google' }
        maven { url 'https://maven.aliyun.com/repository/jcenter' }
        maven { url 'https://maven.aliyun.com/repository/public' }
    }
}

# 2. 增加 Gradle 内存
nano ~/.gradle/gradle.properties

# 添加：
org.gradle.jvmargs=-Xmx2048m -Dfile.encoding=UTF-8
org.gradle.daemon=true
org.gradle.parallel=true
org.gradle.caching=true

# 3. 清理并重新构建
flutter clean
flutter pub get
flutter run
```

### 12.7 中文乱码问题

**症状：** 终端输出中文显示乱码。

**解决方案：**

```bash
# 1. 在 WSL 中设置 locale
sudo apt install -y locales
sudo locale-gen zh_CN.UTF-8
sudo update-locale LANG=zh_CN.UTF-8

# 2. 在 ~/.bashrc 中添加：
export LANG=zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8

# 3. VSCode 终端配置（.vscode/settings.json）
{
  "terminal.integrated.env.linux": {
    "LANG": "zh_CN.UTF-8",
    "LC_ALL": "zh_CN.UTF-8"
  }
}
```

---

## 13. 与纯 Windows 开发对比

| 特性 | WSL2 方案 | 纯 Windows |
|------|-----------|-----------|
| **文件系统性能** | 更快（Linux 原生，适合大量小文件） | 正常（NTFS） |
| **工具链** | Linux 原生，兼容性更好 | Windows 版本 |
| **终端体验** | 更佳（Bash/Zsh，强大的脚本支持） | PowerShell/CMD |
| **物理设备调试** | 较复杂（需要 ADB over Network 或 USB/IP） | 简单（直接连接） |
| **模拟器调试** | 推荐使用 Windows 模拟器 + 网络连接 | 简单（直接支持） |
| **学习曲线** | 需要 WSL 和 Linux 知识 | 低 |
| **包管理** | apt（强大且方便） | 需要手动安装或使用 Chocolatey |
| **Docker 支持** | 原生支持 WSL2 后端 | 也支持，但性能稍差 |
| **Git 性能** | 更好 | 正常 |
| **与 Windows 软件的互操作性** | 良好（可直接运行 Windows exe） | 原生 |

---

## 14. 推荐工作流程

### 日常开发流程

```
1. 启动 WSL
   └─ wsl

2. 连接设备（物理设备或模拟器）
   ├─ 物理设备：connect_adb（ADB over Network）
   └─ 模拟器：在 Windows 启动模拟器，然后 connect_adb

3. 打开项目
   └─ cd ~/projects/my_app && code .

4. 开发
   ├─ 使用 VSCode 编写代码
   ├─ 按 F5 启动调试
   └─ 使用热重载（r 键）快速预览

5. 测试
   ├─ flutter test
   └─ 在设备上手动测试

6. 构建
   └─ flutter build apk --release

7. 安装
   └─ adb install build/app/outputs/flutter-apk/app-release.apk
```

### 快速参考命令

```bash
# 连接设备（ADB over Network）
connect_adb

# 查看设备
flutter devices

# 运行应用
flutter run
flutter run -d <device_id>

# 构建 APK
flutter build apk --release

# 安装 APK
adb install build/app/outputs/flutter-apk/app-release.apk

# 查看日志
flutter logs
adb logcat

# 清理项目
flutter clean
flutter pub get

# 运行测试
flutter test
flutter test --coverage

# 检查环境
flutter doctor
flutter doctor -v
```

---

## 附录：有用的资源

- [Flutter 官方文档](https://docs.flutter.dev/)
- [WSL 官方文档](https://learn.microsoft.com/zh-cn/windows/wsl/)
- [VSCode Remote Development](https://code.visualstudio.com/docs/remote/wsl)
- [usbipd-win 项目](https://github.com/dorssel/usbipd-win)
- [Android 开发者文档](https://developer.android.com/docs)

---

**文档版本：** 1.0  
**最后更新：** 2026-04-11  
**维护者：** 开发团队
