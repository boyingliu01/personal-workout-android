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
};
