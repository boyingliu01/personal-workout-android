import json

with open('exercise_index.json', 'r', encoding='utf-8') as f:
    index = json.load(f)

# Updated target mapping with better avoid lists and fallbacks
targets = {
    # Warmup
    'high_knees': {'keywords': ['high knee'], 'avoid': ['band', 'cable', 'barbell', 'dumbbell', 'wall', 'machine', 'walking'], 'fallback': 'jumping_jack.gif'},
    'butt_kicks': {'keywords': ['butt kick', 'glute kick'], 'avoid': ['band', 'cable', 'barbell', 'machine'], 'fallback': 'jumping_jack.gif'},
    'grapevine': {'keywords': ['grapevine', 'carioca', 'lateral shuffle'], 'avoid': [], 'fallback': 'side_lunge.gif'},
    'lunge_with_twist': {'keywords': ['lunge with twist'], 'avoid': ['barbell', 'dumbbell', 'smith', 'cable'], 'fallback': 'lunge.gif'},
    'front_leg_swings': {'keywords': ['leg swing', 'kicking leg'], 'avoid': ['machine', 'cable', 'barbell', 'parallel'], 'fallback': 'lunge.gif'},
    'side_leg_swings': {'keywords': ['side leg swing', 'side kick', 'lateral leg'], 'avoid': ['machine', 'cable', 'barbell', 'parallel', 'band'], 'fallback': 'side_lunge.gif'},
    'hip_circles': {'keywords': ['hip circle', 'hip rotation', 'fire hydrant'], 'avoid': ['machine', 'cable', 'band'], 'fallback': 'glute_bridge.gif'},
    'worlds_greatest_stretch': {'keywords': ['world greatest stretch', 'worlds greatest'], 'avoid': ['around world'], 'fallback': 'lunge.gif'},
    'calf_walks': {'keywords': ['calf raise', 'standing calf'], 'avoid': ['band', 'cable', 'machine', 'single', 'seated', 'floor', 'barbell'], 'fallback': 'calf_raise.gif'},
    'arm_circles': {'keywords': ['arm circle', 'arm rotation', 'shoulder circle'], 'avoid': ['cable', 'barbell', 'dumbbell'], 'fallback': 'front_raise.gif'},
    'torso_twists': {'keywords': ['torso twist', 'trunk rotation', 'seated twist'], 'avoid': ['cable', 'barbell', 'dumbbell', 'band', 'standing twisting crunch'], 'fallback': 'russian_twist.gif'},
    # Stretch
    'standing_quad_stretch': {'keywords': ['quadriceps stretch', 'standing quad stretch', 'front thigh stretch'], 'avoid': ['machine', 'couch'], 'fallback': 'lunge.gif'},
    'standing_hamstring_stretch': {'keywords': ['hamstring stretch'], 'avoid': ['ball', 'exercise ball', 'band'], 'fallback': 'single_leg_deadlift.gif'},
    'standing_calf_stretch': {'keywords': ['calf stretch'], 'avoid': ['rope', 'band'], 'fallback': 'calf_raise.gif'},
    'kneeling_hip_flexor_stretch': {'keywords': ['hip flexor stretch', 'half kneeling'], 'avoid': ['exercise ball', 'ball', 'machine'], 'fallback': 'lunge.gif'},
    'pigeon_pose': {'keywords': ['pigeon pose', 'pigeon stretch'], 'avoid': ['push-up', 'dumbbell', 'barbell'], 'fallback': 'pigeon_pose.gif'},
    'butterfly_stretch': {'keywords': ['butterfly'], 'avoid': [], 'fallback': 'butterfly_stretch.gif'},
    'supine_figure_four': {'keywords': ['figure four', 'supine figure', 'lying figure four', 'reclined figure'], 'avoid': [], 'fallback': 'supine_figure_four.gif'},
    'wide_legged_forward_fold': {'keywords': ['wide leg stretch', 'seated straddle', 'wide forward fold', 'straddle stretch'], 'avoid': [], 'fallback': 'lunge.gif'},
    'cat_cow': {'keywords': ['cat stretch', 'cat cow', 'spinal flexion extension'], 'avoid': [], 'fallback': 'plank.gif'},
    'supine_spinal_twist': {'keywords': ['spinal twist', 'supine twist', 'lying twist'], 'avoid': ['cable', 'seated'], 'fallback': 'plank.gif'},
    'cobra_stretch': {'keywords': ['cobra', 'prone cobra', 'sphinx pose'], 'avoid': ['push-up', 'pushup', 'pike'], 'fallback': 'plank.gif'},
    'childs_pose': {'keywords': ['child pose', 'child stretch', 'childs pose', 'balasana'], 'avoid': [], 'fallback': 'childs_pose.gif'},
    'neck_side_stretch': {'keywords': ['neck side stretch', 'lateral neck stretch'], 'avoid': ['cable'], 'fallback': 'neck_side_stretch.gif'},
    'upper_trapezius_stretch': {'keywords': ['trapezius stretch', 'trapezius', 'trapezius levator'], 'avoid': ['dumbbell', 'barbell', 'shrug', 'deltoid'], 'fallback': 'lateral_raise.gif'},
    'doorway_pec_stretch': {'keywords': ['chest stretch', 'pec stretch', 'doorway stretch', 'pectoral stretch'], 'avoid': ['cable', 'machine', 'barbell', 'dumbbell', 'fly'], 'fallback': 'doorway_pec_stretch.gif'},
    'cross_body_shoulder_stretch': {'keywords': ['shoulder stretch', 'rear deltoid stretch', 'cross body stretch'], 'avoid': ['cable', 'barbell', 'dumbbell', 'climber', 'bridge'], 'fallback': 'cross_body_shoulder_stretch.gif'},
    'overhead_triceps_stretch': {'keywords': ['tricep stretch', 'triceps stretch', 'overhead tricep'], 'avoid': ['sit-up', 'cable', 'overhead press', 'dumbbell', 'skull'], 'fallback': 'overhead_triceps_stretch.gif'},
}

results = {}
for key, spec in targets.items():
    keywords = spec['keywords']
    avoid = spec['avoid']
    fallback = spec['fallback']
    found = None
    for entry in index:
        name_lower = entry['name'].lower()
        matches_kw = False
        for kw in keywords:
            if kw in name_lower:
                matches_kw = True
                break
        if not matches_kw:
            continue
        # Check avoid
        skip = False
        for a in avoid:
            if a in name_lower:
                skip = True
                break
        if skip:
            continue
        found = entry
        break
    
    if found:
        results[key] = {
            'name': found['name'],
            'url': found['gif_url'],
            'source': 'exact'
        }
        print(f"{key} [EXACT]: {found['name']} => {found['gif_url']}")
    else:
        # Use fallback
        results[key] = {
            'name': fallback.replace('.gif', ''),
            'url': None,
            'source': 'fallback'
        }
        print(f"{key} [FALLBACK]: using {fallback}")

# Save results
with open('target_gifs.json', 'w', encoding='utf-8') as f:
    json.dump(results, f, indent=2)

print('')
exact = sum(1 for v in results.values() if v['source'] == 'exact')
fallback = sum(1 for v in results.values() if v['source'] == 'fallback')
print(f"Exact matches: {exact}")
print(f"Fallbacks: {fallback}")
