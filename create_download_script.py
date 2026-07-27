#!/usr/bin/env python3
"""
Parse exercises.json and create:
1. exercise_index.json - mapping of exercise name to GIF info
2. download_gifs.ps1 - PowerShell script to download all GIFs
"""
import json
import re

INPUT = "exercises.json"
INDEX_OUTPUT = "exercise_index.json"
SCRIPT_OUTPUT = "download_gifs.ps1"
ASSETS_DIR = "runner_app/assets/animations"
GIF_BASE = "https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/"

print(f"Loading {INPUT}...")
with open(INPUT, 'r', encoding='utf-8') as f:
    exercises = json.load(f)

print(f"Loaded {len(exercises)} exercises")

# Build index
index = []
for ex in exercises:
    name = ex.get('name', '')
    gif_url = ex.get('gif_url', '')
    if not gif_url:
        continue
    
    # Sanitize filename
    safe_name = re.sub(r'[^\w\s-]', '', name.lower().strip())
    safe_name = re.sub(r'[\s]+', '_', safe_name)
    safe_name = safe_name[:60]
    
    index.append({
        'id': ex.get('id', ''),
        'name': name,
        'gif_url': gif_url,
        'filename': f'{safe_name}.gif'
    })

# Save index
with open(INDEX_OUTPUT, 'w', encoding='utf-8') as f:
    json.dump(index, f, indent=2)
print(f"Index saved: {len(index)} entries")

# Create PowerShell download script
lines = []
lines.append("# Auto-generated script to download exercise GIF animations")
lines.append(f"# Total: {len(index)} GIFs from exercises-dataset repository")
lines.append("")
lines.append('$ProgressPreference = "SilentlyContinue"')
lines.append(f'$AssetsDir = "{ASSETS_DIR}"')
lines.append(f'$BaseURL = "{GIF_BASE}"')
lines.append("")
lines.append('if (-not (Test-Path $AssetsDir)) {')
lines.append('    New-Item -ItemType Directory -Path $AssetsDir -Force | Out-Null')
lines.append('}')
lines.append("")
lines.append('$count = 0')
lines.append('$skip = 0')
lines.append("")

for i, entry in enumerate(index):
    url = GIF_BASE + entry['gif_url']
    filename = entry['filename']
    comment = entry['name'].replace("'", "''")
    target = f"$AssetsDir/{filename}"
    
    lines.append(f"# {i+1}. {comment} (id: {entry['id']})")
    lines.append(f"if (-not (Test-Path '{target}')) {{")
    lines.append(f"    Invoke-WebRequest -Uri '{url}' -OutFile '{target}' -UseBasicParsing")
    lines.append("    $count++")
    lines.append(f"    Write-Host '[$count / {len(index)}] Downloaded: {filename}'")
    lines.append("} else {")
    lines.append("    $skip++")
    lines.append("}")
    lines.append("")

lines.append("")
lines.append('Write-Host ""')
lines.append('Write-Host "Download complete: $count new files, $skip skipped (already exist)"')

with open(SCRIPT_OUTPUT, 'w', encoding='utf-8') as f:
    f.write('\n'.join(lines) + '\n')

print(f"Download script created: {SCRIPT_OUTPUT}")
print(f"Run: powershell -File {SCRIPT_OUTPUT}")
