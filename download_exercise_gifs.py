#!/usr/bin/env python3
"""
Download exercise GIFs from exercises-dataset repository.
Only downloads the exercises needed for the strength training app.
"""

import json
import os
import re
import sys
import time
from pathlib import Path
from urllib.request import urlopen, urlretrieve
from urllib.error import URLError, HTTPError
from concurrent.futures import ThreadPoolExecutor, as_completed

# Base URLs
GITHUB_RAW = "https://raw.githubusercontent.com/hasaneyldrm/exercises-dataset/main"
JSON_URL = f"{GITHUB_RAW}/data/exercises.json"
VIDEO_BASE = f"{GITHUB_RAW}/videos"

# Output directory
OUTPUT_DIR = Path("runner_app/assets/animations")

# Target exercise names (lowercase for matching)
TARGET_EXERCISES = [
    # Warmup exercises
    "high knees",
    "butt kicks", 
    "grapevine",
    "lunge with twist",
    "leg swing",
    "hip circles",
    "world's greatest stretch",
    "calf raises",
    "arm circles",
    "torso twists",
    
    # Stretch exercises
    "quad stretch",
    "hamstring stretch",
    "calf stretch",
    "hip flexor stretch",
    "pigeon",
    "butterfly",
    "figure four",
    "forward fold",
    "cat cow",
    "spinal twist",
    "cobra",
    "child's pose",
    "neck stretch",
    "trapezius",
    "chest stretch",
    "shoulder stretch",
    "tricep stretch",
    
    # Strength exercises (verify existing)
    "squat",
    "deadlift",
    "lunge",
    "side lunge",
    "calf raise",
    "glute bridge",
    "single leg deadlift",
    "bulgarian split squat",
    "plank",
    "side plank",
    "dead bug",
    "bird dog",
    "mountain climber",
    "russian twist",
    "push-up",
    "push up",
    "diamond push-up",
    "dumbbell press",
    "biceps curl",
    "tricep dip",
    "bent over row",
    "lateral raise",
    "front raise",
    "burpee",
    "jumping jack",
    "man maker",
]

def load_exercises():
    """Load exercises from JSON file."""
    print("Downloading exercises.json...")
    try:
        response = urlopen(JSON_URL, timeout=120)
        data = json.loads(response.read().decode('utf-8'))
        print(f"Loaded {len(data)} exercises")
        return data
    except Exception as e:
        print(f"Error loading JSON: {e}")
        sys.exit(1)

def find_matching_exercises(all_exercises):
    """Find exercises that match our target list."""
    matches = []
    
    for exercise in all_exercises:
        name = exercise.get('name', '').lower()
        
        # Check if any target name is a substring of the exercise name
        for target in TARGET_EXERCISES:
            if target in name:
                gif_url = exercise.get('gif_url')
                if gif_url:
                    matches.append({
                        'name': exercise['name'],
                        'gif_url': gif_url,
                        'id': exercise.get('id', 'unknown')
                    })
                    break
    
    print(f"Found {len(matches)} matching exercises")
    return matches

def download_gif(exercise, output_dir):
    """Download a single GIF file."""
    gif_url = f"{GITHUB_RAW}/{exercise['gif_url']}"
    
    # Create filename from exercise name
    safe_name = re.sub(r'[^\w\s-]', '', exercise['name'].lower())
    safe_name = re.sub(r'[-\s]+', '_', safe_name)
    filename = output_dir / f"{safe_name}.gif"
    
    # Skip if already exists
    if filename.exists():
        print(f"  ✓ Already exists: {filename.name}")
        return True
    
    # Download with retry
    for attempt in range(3):
        try:
            urlretrieve(gif_url, filename)
            print(f"  ✓ Downloaded: {filename.name}")
            return True
        except (URLError, HTTPError) as e:
            print(f"  ⚠ Attempt {attempt + 1} failed for {filename.name}: {e}")
            time.sleep(2 ** attempt)
        except Exception as e:
            print(f"  ✗ Error downloading {filename.name}: {e}")
            return False
    
    print(f"  ✗ Failed after 3 attempts: {filename.name}")
    return False

def main():
    # Ensure output directory exists
    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
    
    # Load and filter exercises
    all_exercises = load_exercises()
    matches = find_matching_exercises(all_exercises)
    
    if not matches:
        print("No matching exercises found!")
        sys.exit(1)
    
    # Download GIFs in parallel
    print(f"\nDownloading {len(matches)} GIF files to {OUTPUT_DIR}...")
    success_count = 0
    fail_count = 0
    
    with ThreadPoolExecutor(max_workers=5) as executor:
        futures = {
            executor.submit(download_gif, ex, OUTPUT_DIR): ex
            for ex in matches
        }
        
        for future in as_completed(futures):
            if future.result():
                success_count += 1
            else:
                fail_count += 1
    
    print(f"\n✓ Download complete!")
    print(f"  Success: {success_count}")
    print(f"  Failed: {fail_count}")
    print(f"  Location: {OUTPUT_DIR.absolute()}")

if __name__ == "__main__":
    main()
