/// Maps exercise IDs to GIF animation file paths.
/// Returns null if no animation is available for the exercise.
String? animationForExercise(String exerciseId) {
  return _exerciseAnimationMap[exerciseId];
}

/// Check if an exercise has an animation available.
bool hasAnimation(String exerciseId) {
  return _exerciseAnimationMap.containsKey(exerciseId);
}

const _exerciseAnimationMap = <String, String>{
  // Legs
  'squat': 'assets/animations/squat.gif',
  'deadlift': 'assets/animations/deadlift.gif',
  'lunge': 'assets/animations/lunge.gif',
  'side_lunge': 'assets/animations/side_lunge.gif',
  'calf_raise': 'assets/animations/calf_raise.gif',
  'glute_bridge': 'assets/animations/glute_bridge.gif',
  'single_leg_deadlift': 'assets/animations/single_leg_deadlift.gif',
  'leg_press': 'assets/animations/bulgarian_split_squat.gif',
  // Core
  'plank': 'assets/animations/plank.gif',
  'side_plank': 'assets/animations/side_plank.gif',
  'dead_bug': 'assets/animations/dead_bug.gif',
  'bird_dog': 'assets/animations/bird_dog.gif', // Using plank as temporary fallback
  'mountain_climber': 'assets/animations/mountain_climber.gif',
  'russian_twist': 'assets/animations/russian_twist.gif',
  // Upper Body
  'push_up': 'assets/animations/push_up.gif',
  'pull_up': 'assets/animations/diamond_push_up.gif', // Using diamond push-up as fallback
  'dumbbell_press': 'assets/animations/dumbbell_press.gif',
  'bicep_curl': 'assets/animations/bicep_curl.gif',
  'tricep_dip': 'assets/animations/tricep_dip.gif',
  'bent_over_row': 'assets/animations/bent_over_row.gif',
  'lateral_raise': 'assets/animations/lateral_raise.gif',
  'front_raise': 'assets/animations/front_raise.gif',
  // Full Body
  'burpee': 'assets/animations/burpee.gif',
  'kettlebell_swing': 'assets/animations/dumbbell_swing.gif', // Using dumbbell swing as fallback
  'thruster': 'assets/animations/squat_to_press.gif', // Using squat to press as fallback
  'clean_and_press': 'assets/animations/squat_jump.gif', // Using squat jump as fallback
  'man_maker': 'assets/animations/man_maker.gif', // Using burpee as temporary fallback
  'jumping_jack': 'assets/animations/jumping_jack.gif',
  // Warmup
  'warmup_jumping_jack': 'assets/animations/jumping_jack.gif',
  'high_knees': 'assets/animations/high_knees.gif',
  'butt_kicks': 'assets/animations/butt_kicks.gif',
  'grapevine': 'assets/animations/side_lunge.gif', // Using side lunge as fallback
  'lunge_with_twist': 'assets/animations/lunge_with_twist.gif',
  'front_leg_swings': 'assets/animations/single_leg_deadlift.gif', // Using single leg deadlift as fallback
  'side_leg_swings': 'assets/animations/side_lunge.gif', // Using side lunge as fallback
  'hip_circles': 'assets/animations/squat.gif', // Using squat as fallback
  'worlds_greatest_stretch': 'assets/animations/worlds_greatest_stretch.gif',
  'calf_walks': 'assets/animations/bodyweight_calf_raise.gif',
  'arm_circles': 'assets/animations/shoulder_circles.gif',
  'torso_twists': 'assets/animations/russian_twist.gif', // Using russian twist as fallback
  // Stretch
  'standing_quad_stretch': 'assets/animations/standing_quad_stretch.gif',
  'standing_hamstring_stretch': 'assets/animations/hamstring_stretch.gif',
  'standing_calf_stretch': 'assets/animations/calf_stretch.gif',
  'kneeling_hip_flexor_stretch': 'assets/animations/kneeling_hip_flexor_stretch.gif',
  'pigeon_pose': 'assets/animations/pigeon_pose.gif',
  'butterfly_stretch': 'assets/animations/butterfly_pose.gif',
  'supine_figure_four': 'assets/animations/supine_figure_four.gif',
  'wide_legged_forward_fold': 'assets/animations/straddle_stretch.gif',
  'cat_cow': 'assets/animations/cat_cow.gif',
  'supine_spinal_twist': 'assets/animations/supine_spinal_twist.gif',
  'cobra_stretch': 'assets/animations/cobra_stretch.gif',
  'childs_pose': 'assets/animations/childs_pose.gif',
  'neck_side_stretch': 'assets/animations/neck_side_stretch.gif',
  'upper_trapezius_stretch': 'assets/animations/upper_trapezius_stretch.gif',
  'doorway_pec_stretch': 'assets/animations/back_pec_stretch.gif',
  'cross_body_shoulder_stretch': 'assets/animations/shoulder_stretch.gif',
  'overhead_triceps_stretch': 'assets/animations/overhead_triceps_stretch.gif',
};
