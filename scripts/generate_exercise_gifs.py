#!/usr/bin/env python3
"""
生成缺失的健身动作 GIF 动画
使用豆包 Seedance 2.0 API 或 Kling 2.0 API

使用方法：
1. 安装依赖：pip install requests pillow
2. 设置环境变量：
   - DOUBAO_API_KEY: 豆包火山方舟 API Key
   - 或 KLING_API_KEY: Kling API Key
3. 运行脚本：python generate_exercise_gifs.py
"""

import os
import sys
import time
import requests
from pathlib import Path
from PIL import Image
import io

# 配置
OUTPUT_DIR = Path(__file__).parent.parent / "runner_app" / "assets" / "animations"
OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

# 缺失的动作配置
EXERCISES = [
    {
        "id": "bird_dog",
        "name": "鸟狗式",
        "prompt": "一位健身教练演示标准鸟狗式动作，侧面视角，四点跪姿，同时伸展对侧手臂和腿，保持身体平衡，动作规范流畅，写实风格，室内环境，明亮光线",
        "duration": 8,
    },
    {
        "id": "man_maker",
        "name": "人肉制造机",
        "prompt": "一位健身教练演示标准人肉制造机动作，侧面视角，双手持哑铃，完成俯卧撑、划船、深蹲、推举的连续动作，动作规范流畅，写实风格，室内环境，明亮光线",
        "duration": 10,
    },
]


def generate_with_doubao(api_key: str, exercise: dict) -> bytes | None:
    """使用豆包 Seedance 2.0 API 生成视频"""
    url = "https://ark.cn-beijing.volces.com/api/v3/videos/generations"
    headers = {
        "Content-Type": "application/json",
        "Authorization": f"Bearer {api_key}",
    }
    payload = {
        "model": "doubao-seedance-2.0",
        "prompt": exercise["prompt"],
        "duration": exercise["duration"],
        "resolution": "720p",
        "aspect_ratio": "1:1",  # 正方形适合移动端
        "fps": 24,
    }

    try:
        print(f"  提交生成任务...")
        response = requests.post(url, headers=headers, json=payload, timeout=30)
        response.raise_for_status()
        task_id = response.json()["id"]
        print(f"  任务 ID: {task_id}")

        # 轮询任务状态
        status_url = f"https://ark.cn-beijing.volces.com/api/v3/videos/generations/{task_id}"
        max_attempts = 60  # 最多等待 10 分钟
        for attempt in range(max_attempts):
            time.sleep(10)
            status_response = requests.get(status_url, headers=headers, timeout=30)
            status_data = status_response.json()
            status = status_data.get("status")

            if status == "completed":
                video_url = status_data["video_url"]
                print(f"  视频生成完成，下载中...")
                video_response = requests.get(video_url, timeout=60)
                return video_response.content
            elif status == "failed":
                print(f"  生成失败: {status_data.get('error')}")
                return None
            else:
                print(f"  等待中... ({attempt + 1}/{max_attempts})")

        print(f"  超时，任务未完成")
        return None

    except Exception as e:
        print(f"  错误: {e}")
        return None


def generate_with_kling(api_key: str, exercise: dict) -> bytes | None:
    """使用 Kling 2.0 API 生成视频"""
    url = "https://api.klingai.com/v1/videos/generations"
    headers = {
        "Content-Type": "application/json",
        "Authorization": f"Bearer {api_key}",
    }
    payload = {
        "model": "kling-v2",
        "prompt": exercise["prompt"],
        "duration": exercise["duration"],
        "resolution": "720p",
        "aspect_ratio": "1:1",
    }

    try:
        print(f"  提交生成任务...")
        response = requests.post(url, headers=headers, json=payload, timeout=30)
        response.raise_for_status()
        task_id = response.json()["task_id"]
        print(f"  任务 ID: {task_id}")

        # 轮询任务状态
        status_url = f"https://api.klingai.com/v1/videos/generations/{task_id}"
        max_attempts = 60
        for attempt in range(max_attempts):
            time.sleep(10)
            status_response = requests.get(status_url, headers=headers, timeout=30)
            status_data = status_response.json()
            status = status_data.get("status")

            if status == "completed":
                video_url = status_data["video_url"]
                print(f"  视频生成完成，下载中...")
                video_response = requests.get(video_url, timeout=60)
                return video_response.content
            elif status == "failed":
                print(f"  生成失败: {status_data.get('error')}")
                return None
            else:
                print(f"  等待中... ({attempt + 1}/{max_attempts})")

        print(f"  超时，任务未完成")
        return None

    except Exception as e:
        print(f"  错误: {e}")
        return None


def video_to_gif(video_data: bytes, output_path: Path, size=(320, 320)):
    """将视频转换为 GIF"""
    try:
        # 使用 ffmpeg 转换（需要安装 ffmpeg）
        import subprocess
        import tempfile

        with tempfile.NamedTemporaryFile(suffix=".mp4", delete=False) as temp_video:
            temp_video.write(video_data)
            temp_video_path = temp_video.name

        try:
            # 使用 ffmpeg 转换为 GIF
            cmd = [
                "ffmpeg",
                "-i",
                temp_video_path,
                "-vf",
                f"fps=12,scale={size[0]}:{size[1]}:flags=lanczos",
                "-loop",
                "0",
                str(output_path),
            ]
            subprocess.run(cmd, check=True, capture_output=True)
            print(f"  ✅ 已保存: {output_path}")
        finally:
            os.unlink(temp_video_path)

    except FileNotFoundError:
        print(f"  ❌ 错误: 未找到 ffmpeg，请先安装")
        print(f"     安装方法: https://ffmpeg.org/download.html")
        sys.exit(1)
    except Exception as e:
        print(f"  ❌ 转换失败: {e}")


def main():
    """主函数"""
    print("=" * 60)
    print("健身动作 GIF 动画生成工具")
    print("=" * 60)

    # 检查 API Key
    doubao_key = os.getenv("DOUBAO_API_KEY")
    kling_key = os.getenv("KLING_API_KEY")

    if not doubao_key and not kling_key:
        print("\n❌ 错误: 未设置 API Key")
        print("\n请设置以下环境变量之一：")
        print("  - DOUBAO_API_KEY: 豆包火山方舟 API Key")
        print("  - KLING_API_KEY: Kling API Key")
        print("\n获取方法：")
        print("  - 豆包: https://console.volcengine.com/ark")
        print("  - Kling: https://klingai.com/")
        sys.exit(1)

    # 选择 API
    if doubao_key:
        print("\n使用豆包 Seedance 2.0 API")
        generate_func = lambda ex: generate_with_doubao(doubao_key, ex)
    else:
        print("\n使用 Kling 2.0 API")
        generate_func = lambda ex: generate_with_kling(kling_key, ex)

    # 生成动画
    print(f"\n准备生成 {len(EXERCISES)} 个动作的动画...\n")

    success_count = 0
    for exercise in EXERCISES:
        print(f"正在生成: {exercise['name']} ({exercise['id']})")
        video_data = generate_func(exercise)

        if video_data:
            output_path = OUTPUT_DIR / f"{exercise['id']}.gif"
            video_to_gif(video_data, output_path)
            success_count += 1
        else:
            print(f"  ❌ 生成失败，跳过")

        print()

    # 总结
    print("=" * 60)
    print(f"生成完成: {success_count}/{len(EXERCISES)} 个动作")
    print("=" * 60)

    if success_count == len(EXERCISES):
        print("\n✅ 所有动画生成成功！")
        print(f"\n文件位置: {OUTPUT_DIR}")
        print("\n下一步:")
        print("  1. 运行 flutter pub get")
        print("  2. 运行 flutter test 验证")
        print("  3. 构建 APK 并在真机上测试")
    else:
        print(f"\n⚠️  部分动画生成失败，请检查 API Key 和网络连接")


if __name__ == "__main__":
    main()
