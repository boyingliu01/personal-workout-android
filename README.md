# 🏃 跑者力量训练 (Runner Strength Training)

> 专为跑步爱好者设计的力量训练 APP，所有动作均可在家完成。

[![Flutter](https://img.shields.io/badge/Flutter-3.44-blue.svg)](https://flutter.dev)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Tests](https://img.shields.io/badge/Tests-134%20passing-brightgreen.svg)](#testing)

## 📱 功能特性

### 6 大训练模块（57 个动作）

| 模块 | 动作数 | 时长 | 说明 |
|------|--------|------|------|
| 🏃 跑前热身 | 12 | ~12 分钟 | 激活心肺、提升体温、动态拉伸 |
| 🦵 臀腿训练 | 8 | ~15 分钟 | 深蹲、弓步、硬拉等 |
| 💪 核心训练 | 6 | ~12 分钟 | 平板支撑、死虫、鸟狗式 |
| 🏋️ 上肢训练 | 8 | ~18 分钟 | 俯卧撑、哑铃动作 |
| 🔥 全身训练 | 6 | ~20 分钟 | 波比跳、开合跳等复合动作 |
| 🧘 跑后拉伸 | 17 | ~20 分钟 | 放松紧张肌群、促进恢复 |

### 核心功能

- ⏱️ **倒计时训练** — 圆形进度条 + 语音提示 + 音效
- 🔁 **训练中断恢复** — 退出时自动保存进度，下次可继续
- 📊 **训练统计** — 周训练柱状图、总次数、总时长
- 🎨 **暗色模式** — 支持亮色/暗色主题切换
- 🎬 **动作动画** — 每个动作配有 GIF 示范动画
- 🔋 **卡路里估算** — 根据训练类型和时长估算消耗
- 📋 **训练历史** — 按类型筛选、删除记录
- 🎛️ **自定义设置** — 音量、语音、屏幕常亮等

## 🚀 快速开始

### 前置条件

- [Flutter SDK](https://docs.flutter.dev/get-started/install) >= 3.6.2
- Android Studio 或 VS Code
- Android 设备或模拟器

### 安装运行

```bash
# 克隆仓库
git clone https://github.com/boyingliu01/personal-workout-android.git
cd personal-workout-android/runner_app

# 安装依赖
flutter pub get

# 运行
flutter run

# 构建 APK
flutter build apk --release
```

### 安装 APK

构建完成后，APK 文件位于：
```
runner_app/build/app/outputs/flutter-apk/app-release.apk
```

传输到 Android 设备安装即可。

## 🏗️ 项目结构

```
personal-workout-android/
├── runner_app/                    # Flutter 项目
│   ├── lib/
│   │   ├── domain/entities/       # 领域模型（Exercise, Workout, TrainingSession）
│   │   ├── core/
│   │   │   ├── services/          # 音频服务（TTS + tick 音效）、计时器服务
│   │   │   └── constants/         # 训练数据、动画映射、图标
│   │   ├── data/
│   │   │   ├── datasources/       # Hive 数据源（JSON 序列化）
│   │   │   └── repositories/      # 训练存储（Hive box 'sessions'）
│   │   ├── presentation/
│   │   │   ├── screens/           # 7 个页面（状态机驱动）
│   │   │   ├── providers/         # Riverpod StateNotifier
│   │   │   ├── widgets/           # 统计图表等组件
│   │   │   └── models/            # UI 模型
│   │   └── main.dart              # 入口：Hive 初始化 → ProviderScope → StrengthApp
│   ├── assets/animations/         # 51 个 GIF 动画文件
│   └── test/                      # 134 个测试（unit + widget）
├── docs/                          # 设计文档、架构文档
├── scripts/                       # 开发辅助脚本
├── AGENTS.md                      # 项目知识库
└── architecture.yaml              # 架构层定义
```

### 架构设计

采用 **DDD 分层架构**：

```
domain/entities → core/services → data/storage → presentation/screens+providers
```

- **Domain 层**：纯 Dart 实体，无 Flutter 依赖
- **Core 层**：音频、计时器等服务
- **Data 层**：Hive 持久化存储
- **Presentation 层**：Riverpod 状态管理 + Widget

## 🧪 测试

```bash
# 运行所有测试（134 个）
flutter test

# 运行测试并查看覆盖率
flutter test --coverage
```

### 测试覆盖

| 测试文件 | 覆盖功能 |
|----------|----------|
| exercise_test.dart | Exercise 实体、枚举 |
| exercise_data_test.dart | 6 个训练模块数据完整性 |
| exercise_animations_test.dart | 动画映射 |
| training_session_provider_test.dart | 状态机流转 |
| history_provider_test.dart | 历史记录 CRUD |
| session_recovery_test.dart | 训练中断恢复 |
| settings_provider_test.dart | 设置持久化 |
| stats_chart_test.dart | 统计图表计算 |
| calorie_test.dart | 卡路里估算 |
| audio_service_test.dart | 音频服务 |
| timer_service_test.dart | 计时器 |
| storage_serialization_test.dart | JSON 序列化 |
| widget_test.dart | Widget 测试 |

## 🛠️ 开发

### 构建

```bash
# Debug 构建
flutter build apk --debug

# Release 构建
flutter build apk --release

# 清理重建
flutter clean && flutter pub get && flutter build apk --release
```

### 代码质量

```bash
# 静态分析
flutter analyze

# 运行所有质量门禁
npx xp-gate check . --all
```

## 🎯 训练场景

本应用针对 **家庭训练** 设计：

- ✅ **允许**：徒手训练 + 哑铃训练
- ❌ **不依赖**：健身房专用器械（腿举机、史密斯机等）
- 🪑 **可选辅助**：沙发/椅子（保加利亚分腿蹲等）

## 📄 文档

- [设计文档](docs/DESIGN.md) — 完整的产品设计
- [架构文档](docs/PLAN.md) — 实现计划
- [规格说明](docs/specification.yaml) — 功能规格
- [安装指南](docs/INSTALL_GUIDE.md) — 详细安装步骤

## 📝 更新日志

### v2.2.0 (2026-07-27)
- 跑前热身模块（12 个动作）
- 跑后拉伸模块（17 个动作）
- 动画示范 GIF（51 个）
- 训练中断恢复
- 统计图表
- 手势操作（滑动切换、双击静音）
- 暗色模式
- 历史筛选
- 卡路里估算

### v2.0.0 (2026-07-23)
- 力量训练模块（臀腿、核心、上肢、全身）
- 基础训练流程
- 语音提示 + 音效
- 训练历史
- 设置页

## 📜 License

MIT License

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

---

**为跑步而练，为跑步而强。** 🏃‍♂️💪
