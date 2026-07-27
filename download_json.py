import urllib.request
import json
import sys
import os

JSON_URL = "https://raw.githubusercontent.com/hasaneyldrm/exercises-dataset/main/data/exercises.json"
OUTPUT = "exercises.json"

print(f"Downloading {JSON_URL}...")
try:
    req = urllib.request.Request(JSON_URL, headers={'User-Agent': 'Mozilla/5.0'})
    with urllib.request.urlopen(req, timeout=300) as resp:
        data = resp.read()
        print(f"Downloaded {len(data)} bytes")
        with open(OUTPUT, 'wb') as f:
            f.write(data)
        print("Done!")
        # Parse and extract summary
        exercises = json.loads(data)
        print(f"Parsed {len(exercises)} exercises")
except Exception as e:
    print(f"Error: {e}")
    sys.exit(1)
