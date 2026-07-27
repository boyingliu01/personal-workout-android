# Auto-generated script to download exercise GIF animations
# Total: 1324 GIFs from exercises-dataset repository

$ProgressPreference = "SilentlyContinue"
$AssetsDir = "runner_app/assets/animations"
$BaseURL = "https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/"

if (-not (Test-Path $AssetsDir)) {
    New-Item -ItemType Directory -Path $AssetsDir -Force | Out-Null
}

$count = 0
$skip = 0

# 1. 3/4 sit-up (id: 0001)
if (-not (Test-Path '$AssetsDir/34_sit-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0001-2gPfomN.gif' -OutFile '$AssetsDir/34_sit-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: 34_sit-up.gif'
} else {
    $skip++
}

# 2. 45° side bend (id: 0002)
if (-not (Test-Path '$AssetsDir/45_side_bend.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0002-Hy9D21L.gif' -OutFile '$AssetsDir/45_side_bend.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: 45_side_bend.gif'
} else {
    $skip++
}

# 3. air bike (id: 0003)
if (-not (Test-Path '$AssetsDir/air_bike.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0003-1ZFqTDN.gif' -OutFile '$AssetsDir/air_bike.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: air_bike.gif'
} else {
    $skip++
}

# 4. all fours squad stretch (id: 1512)
if (-not (Test-Path '$AssetsDir/all_fours_squad_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1512-qBcKorM.gif' -OutFile '$AssetsDir/all_fours_squad_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: all_fours_squad_stretch.gif'
} else {
    $skip++
}

# 5. alternate heel touchers (id: 0006)
if (-not (Test-Path '$AssetsDir/alternate_heel_touchers.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0006-qaZVsGk.gif' -OutFile '$AssetsDir/alternate_heel_touchers.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: alternate_heel_touchers.gif'
} else {
    $skip++
}

# 6. alternate lateral pulldown (id: 0007)
if (-not (Test-Path '$AssetsDir/alternate_lateral_pulldown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0007-4IKbhHV.gif' -OutFile '$AssetsDir/alternate_lateral_pulldown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: alternate_lateral_pulldown.gif'
} else {
    $skip++
}

# 7. ankle circles (id: 1368)
if (-not (Test-Path '$AssetsDir/ankle_circles.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1368-uL9CsKm.gif' -OutFile '$AssetsDir/ankle_circles.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ankle_circles.gif'
} else {
    $skip++
}

# 8. archer pull up (id: 3293)
if (-not (Test-Path '$AssetsDir/archer_pull_up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3293-72BC5Za.gif' -OutFile '$AssetsDir/archer_pull_up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: archer_pull_up.gif'
} else {
    $skip++
}

# 9. archer push up (id: 3294)
if (-not (Test-Path '$AssetsDir/archer_push_up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3294-A9qxk2F.gif' -OutFile '$AssetsDir/archer_push_up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: archer_push_up.gif'
} else {
    $skip++
}

# 10. arm slingers hanging bent knee legs (id: 2355)
if (-not (Test-Path '$AssetsDir/arm_slingers_hanging_bent_knee_legs.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2355-uWpxD4v.gif' -OutFile '$AssetsDir/arm_slingers_hanging_bent_knee_legs.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: arm_slingers_hanging_bent_knee_legs.gif'
} else {
    $skip++
}

# 11. arm slingers hanging straight legs (id: 2333)
if (-not (Test-Path '$AssetsDir/arm_slingers_hanging_straight_legs.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2333-PXTIwgu.gif' -OutFile '$AssetsDir/arm_slingers_hanging_straight_legs.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: arm_slingers_hanging_straight_legs.gif'
} else {
    $skip++
}

# 12. arms apart circular toe touch (male) (id: 3214)
if (-not (Test-Path '$AssetsDir/arms_apart_circular_toe_touch_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3214-RtyAsy1.gif' -OutFile '$AssetsDir/arms_apart_circular_toe_touch_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: arms_apart_circular_toe_touch_male.gif'
} else {
    $skip++
}

# 13. arms overhead full sit-up (male) (id: 3204)
if (-not (Test-Path '$AssetsDir/arms_overhead_full_sit-up_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3204-NAkmgdx.gif' -OutFile '$AssetsDir/arms_overhead_full_sit-up_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: arms_overhead_full_sit-up_male.gif'
} else {
    $skip++
}

# 14. assisted chest dip (kneeling) (id: 0009)
if (-not (Test-Path '$AssetsDir/assisted_chest_dip_kneeling.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0009-PAgTVaK.gif' -OutFile '$AssetsDir/assisted_chest_dip_kneeling.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: assisted_chest_dip_kneeling.gif'
} else {
    $skip++
}

# 15. assisted hanging knee raise (id: 0011)
if (-not (Test-Path '$AssetsDir/assisted_hanging_knee_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0011-03lzqwk.gif' -OutFile '$AssetsDir/assisted_hanging_knee_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: assisted_hanging_knee_raise.gif'
} else {
    $skip++
}

# 16. assisted hanging knee raise with throw down (id: 0010)
if (-not (Test-Path '$AssetsDir/assisted_hanging_knee_raise_with_throw_down.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0010-8K0w2yA.gif' -OutFile '$AssetsDir/assisted_hanging_knee_raise_with_throw_down.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: assisted_hanging_knee_raise_with_throw_down.gif'
} else {
    $skip++
}

# 17. assisted lying calves stretch (id: 1708)
if (-not (Test-Path '$AssetsDir/assisted_lying_calves_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1708-GxDwDX0.gif' -OutFile '$AssetsDir/assisted_lying_calves_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: assisted_lying_calves_stretch.gif'
} else {
    $skip++
}

# 18. assisted lying glutes stretch (id: 1709)
if (-not (Test-Path '$AssetsDir/assisted_lying_glutes_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1709-yn0LjwL.gif' -OutFile '$AssetsDir/assisted_lying_glutes_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: assisted_lying_glutes_stretch.gif'
} else {
    $skip++
}

# 19. assisted lying gluteus and piriformis stretch (id: 1710)
if (-not (Test-Path '$AssetsDir/assisted_lying_gluteus_and_piriformis_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1710-RQNVT10.gif' -OutFile '$AssetsDir/assisted_lying_gluteus_and_piriformis_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: assisted_lying_gluteus_and_piriformis_stretch.gif'
} else {
    $skip++
}

# 20. assisted lying leg raise with lateral throw down (id: 0012)
if (-not (Test-Path '$AssetsDir/assisted_lying_leg_raise_with_lateral_throw_down.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0012-UGhRD1A.gif' -OutFile '$AssetsDir/assisted_lying_leg_raise_with_lateral_throw_down.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: assisted_lying_leg_raise_with_lateral_throw_down.gif'
} else {
    $skip++
}

# 21. assisted lying leg raise with throw down (id: 0013)
if (-not (Test-Path '$AssetsDir/assisted_lying_leg_raise_with_throw_down.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0013-VX5YKR5.gif' -OutFile '$AssetsDir/assisted_lying_leg_raise_with_throw_down.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: assisted_lying_leg_raise_with_throw_down.gif'
} else {
    $skip++
}

# 22. assisted motion russian twist (id: 0014)
if (-not (Test-Path '$AssetsDir/assisted_motion_russian_twist.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0014-r7cT9YD.gif' -OutFile '$AssetsDir/assisted_motion_russian_twist.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: assisted_motion_russian_twist.gif'
} else {
    $skip++
}

# 23. assisted parallel close grip pull-up (id: 0015)
if (-not (Test-Path '$AssetsDir/assisted_parallel_close_grip_pull-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0015-vrhHa6D.gif' -OutFile '$AssetsDir/assisted_parallel_close_grip_pull-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: assisted_parallel_close_grip_pull-up.gif'
} else {
    $skip++
}

# 24. assisted prone hamstring (id: 0016)
if (-not (Test-Path '$AssetsDir/assisted_prone_hamstring.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0016-VedGSby.gif' -OutFile '$AssetsDir/assisted_prone_hamstring.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: assisted_prone_hamstring.gif'
} else {
    $skip++
}

# 25. assisted prone lying quads stretch (id: 1713)
if (-not (Test-Path '$AssetsDir/assisted_prone_lying_quads_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1713-YUYAMEj.gif' -OutFile '$AssetsDir/assisted_prone_lying_quads_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: assisted_prone_lying_quads_stretch.gif'
} else {
    $skip++
}

# 26. assisted prone rectus femoris stretch (id: 1714)
if (-not (Test-Path '$AssetsDir/assisted_prone_rectus_femoris_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1714-2Ryn564.gif' -OutFile '$AssetsDir/assisted_prone_rectus_femoris_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: assisted_prone_rectus_femoris_stretch.gif'
} else {
    $skip++
}

# 27. assisted pull-up (id: 0017)
if (-not (Test-Path '$AssetsDir/assisted_pull-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0017-kiJ4Z2K.gif' -OutFile '$AssetsDir/assisted_pull-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: assisted_pull-up.gif'
} else {
    $skip++
}

# 28. assisted seated pectoralis major stretch with stability ball (id: 1716)
if (-not (Test-Path '$AssetsDir/assisted_seated_pectoralis_major_stretch_with_stability_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1716-RoV1Rfa.gif' -OutFile '$AssetsDir/assisted_seated_pectoralis_major_stretch_with_stability_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: assisted_seated_pectoralis_major_stretch_with_stability_ball.gif'
} else {
    $skip++
}

# 29. assisted side lying adductor stretch (id: 1712)
if (-not (Test-Path '$AssetsDir/assisted_side_lying_adductor_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1712-hC6oYY5.gif' -OutFile '$AssetsDir/assisted_side_lying_adductor_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: assisted_side_lying_adductor_stretch.gif'
} else {
    $skip++
}

# 30. assisted sit-up (id: 1758)
if (-not (Test-Path '$AssetsDir/assisted_sit-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1758-aumB2IV.gif' -OutFile '$AssetsDir/assisted_sit-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: assisted_sit-up.gif'
} else {
    $skip++
}

# 31. assisted standing chin-up (id: 1431)
if (-not (Test-Path '$AssetsDir/assisted_standing_chin-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1431-7OeHptV.gif' -OutFile '$AssetsDir/assisted_standing_chin-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: assisted_standing_chin-up.gif'
} else {
    $skip++
}

# 32. assisted standing pull-up (id: 1432)
if (-not (Test-Path '$AssetsDir/assisted_standing_pull-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1432-f4xtKBj.gif' -OutFile '$AssetsDir/assisted_standing_pull-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: assisted_standing_pull-up.gif'
} else {
    $skip++
}

# 33. assisted standing triceps extension (with towel) (id: 0018)
if (-not (Test-Path '$AssetsDir/assisted_standing_triceps_extension_with_towel.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0018-7HcfMBP.gif' -OutFile '$AssetsDir/assisted_standing_triceps_extension_with_towel.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: assisted_standing_triceps_extension_with_towel.gif'
} else {
    $skip++
}

# 34. assisted triceps dip (kneeling) (id: 0019)
if (-not (Test-Path '$AssetsDir/assisted_triceps_dip_kneeling.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0019-J60bN17.gif' -OutFile '$AssetsDir/assisted_triceps_dip_kneeling.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: assisted_triceps_dip_kneeling.gif'
} else {
    $skip++
}

# 35. assisted wide-grip chest dip (kneeling) (id: 2364)
if (-not (Test-Path '$AssetsDir/assisted_wide-grip_chest_dip_kneeling.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2364-PnZJIrk.gif' -OutFile '$AssetsDir/assisted_wide-grip_chest_dip_kneeling.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: assisted_wide-grip_chest_dip_kneeling.gif'
} else {
    $skip++
}

# 36. astride jumps (male) (id: 3220)
if (-not (Test-Path '$AssetsDir/astride_jumps_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3220-f9lVSSI.gif' -OutFile '$AssetsDir/astride_jumps_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: astride_jumps_male.gif'
} else {
    $skip++
}

# 37. back and forth step (id: 3672)
if (-not (Test-Path '$AssetsDir/back_and_forth_step.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3672-fNGumX0.gif' -OutFile '$AssetsDir/back_and_forth_step.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: back_and_forth_step.gif'
} else {
    $skip++
}

# 38. back extension on exercise ball (id: 1314)
if (-not (Test-Path '$AssetsDir/back_extension_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1314-qLpO4vV.gif' -OutFile '$AssetsDir/back_extension_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: back_extension_on_exercise_ball.gif'
} else {
    $skip++
}

# 39. back lever (id: 3297)
if (-not (Test-Path '$AssetsDir/back_lever.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3297-GaSzzuh.gif' -OutFile '$AssetsDir/back_lever.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: back_lever.gif'
} else {
    $skip++
}

# 40. back pec stretch (id: 1405)
if (-not (Test-Path '$AssetsDir/back_pec_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1405-chfnQnM.gif' -OutFile '$AssetsDir/back_pec_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: back_pec_stretch.gif'
} else {
    $skip++
}

# 41. backward jump (id: 1473)
if (-not (Test-Path '$AssetsDir/backward_jump.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1473-SaDOwk7.gif' -OutFile '$AssetsDir/backward_jump.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: backward_jump.gif'
} else {
    $skip++
}

# 42. balance board (id: 0020)
if (-not (Test-Path '$AssetsDir/balance_board.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0020-xAySMB0.gif' -OutFile '$AssetsDir/balance_board.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: balance_board.gif'
} else {
    $skip++
}

# 43. band alternating biceps curl (id: 0968)
if (-not (Test-Path '$AssetsDir/band_alternating_biceps_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0968-3omWx6P.gif' -OutFile '$AssetsDir/band_alternating_biceps_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_alternating_biceps_curl.gif'
} else {
    $skip++
}

# 44. band alternating v-up (id: 0969)
if (-not (Test-Path '$AssetsDir/band_alternating_v-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0969-ztAa1RK.gif' -OutFile '$AssetsDir/band_alternating_v-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_alternating_v-up.gif'
} else {
    $skip++
}

# 45. band assisted pull-up (id: 0970)
if (-not (Test-Path '$AssetsDir/band_assisted_pull-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0970-r1XNRYB.gif' -OutFile '$AssetsDir/band_assisted_pull-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_assisted_pull-up.gif'
} else {
    $skip++
}

# 46. band assisted wheel rollerout (id: 0971)
if (-not (Test-Path '$AssetsDir/band_assisted_wheel_rollerout.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0971-zhF9lW4.gif' -OutFile '$AssetsDir/band_assisted_wheel_rollerout.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_assisted_wheel_rollerout.gif'
} else {
    $skip++
}

# 47. band bench press (id: 1254)
if (-not (Test-Path '$AssetsDir/band_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1254-khlHMqs.gif' -OutFile '$AssetsDir/band_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_bench_press.gif'
} else {
    $skip++
}

# 48. band bent-over hip extension (id: 0980)
if (-not (Test-Path '$AssetsDir/band_bent-over_hip_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0980-wSScovH.gif' -OutFile '$AssetsDir/band_bent-over_hip_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_bent-over_hip_extension.gif'
} else {
    $skip++
}

# 49. band bicycle crunch (id: 0972)
if (-not (Test-Path '$AssetsDir/band_bicycle_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0972-tZkGYZ9.gif' -OutFile '$AssetsDir/band_bicycle_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_bicycle_crunch.gif'
} else {
    $skip++
}

# 50. band close-grip pulldown (id: 0974)
if (-not (Test-Path '$AssetsDir/band_close-grip_pulldown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0974-DptumMx.gif' -OutFile '$AssetsDir/band_close-grip_pulldown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_close-grip_pulldown.gif'
} else {
    $skip++
}

# 51. band close-grip push-up (id: 0975)
if (-not (Test-Path '$AssetsDir/band_close-grip_push-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0975-ufaxB52.gif' -OutFile '$AssetsDir/band_close-grip_push-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_close-grip_push-up.gif'
} else {
    $skip++
}

# 52. band concentration curl (id: 0976)
if (-not (Test-Path '$AssetsDir/band_concentration_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0976-kmVVAfu.gif' -OutFile '$AssetsDir/band_concentration_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_concentration_curl.gif'
} else {
    $skip++
}

# 53. band fixed back close grip pulldown (id: 3117)
if (-not (Test-Path '$AssetsDir/band_fixed_back_close_grip_pulldown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3117-4LoWllp.gif' -OutFile '$AssetsDir/band_fixed_back_close_grip_pulldown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_fixed_back_close_grip_pulldown.gif'
} else {
    $skip++
}

# 54. band fixed back underhand pulldown (id: 3116)
if (-not (Test-Path '$AssetsDir/band_fixed_back_underhand_pulldown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3116-ZH68exZ.gif' -OutFile '$AssetsDir/band_fixed_back_underhand_pulldown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_fixed_back_underhand_pulldown.gif'
} else {
    $skip++
}

# 55. band front lateral raise (id: 0977)
if (-not (Test-Path '$AssetsDir/band_front_lateral_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0977-sTg7iys.gif' -OutFile '$AssetsDir/band_front_lateral_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_front_lateral_raise.gif'
} else {
    $skip++
}

# 56. band front raise (id: 0978)
if (-not (Test-Path '$AssetsDir/band_front_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0978-TFA88iB.gif' -OutFile '$AssetsDir/band_front_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_front_raise.gif'
} else {
    $skip++
}

# 57. band hip lift (id: 1408)
if (-not (Test-Path '$AssetsDir/band_hip_lift.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1408-E4R8Hz1.gif' -OutFile '$AssetsDir/band_hip_lift.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_hip_lift.gif'
} else {
    $skip++
}

# 58. band horizontal pallof press (id: 0979)
if (-not (Test-Path '$AssetsDir/band_horizontal_pallof_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0979-9pa4H5m.gif' -OutFile '$AssetsDir/band_horizontal_pallof_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_horizontal_pallof_press.gif'
} else {
    $skip++
}

# 59. band jack knife sit-up (id: 0981)
if (-not (Test-Path '$AssetsDir/band_jack_knife_sit-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0981-KCBKjma.gif' -OutFile '$AssetsDir/band_jack_knife_sit-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_jack_knife_sit-up.gif'
} else {
    $skip++
}

# 60. band kneeling one arm pulldown (id: 0983)
if (-not (Test-Path '$AssetsDir/band_kneeling_one_arm_pulldown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0983-pmnrOp0.gif' -OutFile '$AssetsDir/band_kneeling_one_arm_pulldown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_kneeling_one_arm_pulldown.gif'
} else {
    $skip++
}

# 61. band kneeling twisting crunch (id: 0985)
if (-not (Test-Path '$AssetsDir/band_kneeling_twisting_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0985-225x2Vd.gif' -OutFile '$AssetsDir/band_kneeling_twisting_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_kneeling_twisting_crunch.gif'
} else {
    $skip++
}

# 62. band lying hip internal rotation (id: 0984)
if (-not (Test-Path '$AssetsDir/band_lying_hip_internal_rotation.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0984-vIICElP.gif' -OutFile '$AssetsDir/band_lying_hip_internal_rotation.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_lying_hip_internal_rotation.gif'
} else {
    $skip++
}

# 63. band lying straight leg raise (id: 1002)
if (-not (Test-Path '$AssetsDir/band_lying_straight_leg_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1002-bbLR7fB.gif' -OutFile '$AssetsDir/band_lying_straight_leg_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_lying_straight_leg_raise.gif'
} else {
    $skip++
}

# 64. band one arm overhead biceps curl (id: 0986)
if (-not (Test-Path '$AssetsDir/band_one_arm_overhead_biceps_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0986-UNAB8ak.gif' -OutFile '$AssetsDir/band_one_arm_overhead_biceps_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_one_arm_overhead_biceps_curl.gif'
} else {
    $skip++
}

# 65. band one arm single leg split squat (id: 0987)
if (-not (Test-Path '$AssetsDir/band_one_arm_single_leg_split_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0987-arsYEd3.gif' -OutFile '$AssetsDir/band_one_arm_single_leg_split_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_one_arm_single_leg_split_squat.gif'
} else {
    $skip++
}

# 66. band one arm standing low row (id: 0988)
if (-not (Test-Path '$AssetsDir/band_one_arm_standing_low_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0988-km0sQC0.gif' -OutFile '$AssetsDir/band_one_arm_standing_low_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_one_arm_standing_low_row.gif'
} else {
    $skip++
}

# 67. band one arm twisting chest press (id: 0989)
if (-not (Test-Path '$AssetsDir/band_one_arm_twisting_chest_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0989-c16nYGA.gif' -OutFile '$AssetsDir/band_one_arm_twisting_chest_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_one_arm_twisting_chest_press.gif'
} else {
    $skip++
}

# 68. band one arm twisting seated row (id: 0990)
if (-not (Test-Path '$AssetsDir/band_one_arm_twisting_seated_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0990-DKBwJrL.gif' -OutFile '$AssetsDir/band_one_arm_twisting_seated_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_one_arm_twisting_seated_row.gif'
} else {
    $skip++
}

# 69. band pull through (id: 0991)
if (-not (Test-Path '$AssetsDir/band_pull_through.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0991-VtTbiP3.gif' -OutFile '$AssetsDir/band_pull_through.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_pull_through.gif'
} else {
    $skip++
}

# 70. band push sit-up (id: 0992)
if (-not (Test-Path '$AssetsDir/band_push_sit-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0992-zFzbBfL.gif' -OutFile '$AssetsDir/band_push_sit-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_push_sit-up.gif'
} else {
    $skip++
}

# 71. band reverse fly (id: 0993)
if (-not (Test-Path '$AssetsDir/band_reverse_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0993-sTfvVsG.gif' -OutFile '$AssetsDir/band_reverse_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_reverse_fly.gif'
} else {
    $skip++
}

# 72. band reverse wrist curl (id: 0994)
if (-not (Test-Path '$AssetsDir/band_reverse_wrist_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0994-Ezpnw9d.gif' -OutFile '$AssetsDir/band_reverse_wrist_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_reverse_wrist_curl.gif'
} else {
    $skip++
}

# 73. band seated hip internal rotation (id: 0996)
if (-not (Test-Path '$AssetsDir/band_seated_hip_internal_rotation.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0996-9gbyYKk.gif' -OutFile '$AssetsDir/band_seated_hip_internal_rotation.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_seated_hip_internal_rotation.gif'
} else {
    $skip++
}

# 74. band seated twist (id: 1011)
if (-not (Test-Path '$AssetsDir/band_seated_twist.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1011-S1JXDAG.gif' -OutFile '$AssetsDir/band_seated_twist.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_seated_twist.gif'
} else {
    $skip++
}

# 75. band shoulder press (id: 0997)
if (-not (Test-Path '$AssetsDir/band_shoulder_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0997-peAeMR3.gif' -OutFile '$AssetsDir/band_shoulder_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_shoulder_press.gif'
} else {
    $skip++
}

# 76. band shrug (id: 1018)
if (-not (Test-Path '$AssetsDir/band_shrug.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1018-trmte8s.gif' -OutFile '$AssetsDir/band_shrug.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_shrug.gif'
} else {
    $skip++
}

# 77. band side triceps extension (id: 0998)
if (-not (Test-Path '$AssetsDir/band_side_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0998-obe5LMq.gif' -OutFile '$AssetsDir/band_side_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_side_triceps_extension.gif'
} else {
    $skip++
}

# 78. band single leg calf raise (id: 0999)
if (-not (Test-Path '$AssetsDir/band_single_leg_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0999-9JprnPh.gif' -OutFile '$AssetsDir/band_single_leg_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_single_leg_calf_raise.gif'
} else {
    $skip++
}

# 79. band single leg reverse calf raise (id: 1000)
if (-not (Test-Path '$AssetsDir/band_single_leg_reverse_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1000-QsSQWbf.gif' -OutFile '$AssetsDir/band_single_leg_reverse_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_single_leg_reverse_calf_raise.gif'
} else {
    $skip++
}

# 80. band single leg split squat (id: 1001)
if (-not (Test-Path '$AssetsDir/band_single_leg_split_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1001-y8bYM8w.gif' -OutFile '$AssetsDir/band_single_leg_split_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_single_leg_split_squat.gif'
} else {
    $skip++
}

# 81. band squat (id: 1004)
if (-not (Test-Path '$AssetsDir/band_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1004-TUZLh71.gif' -OutFile '$AssetsDir/band_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_squat.gif'
} else {
    $skip++
}

# 82. band squat row (id: 1003)
if (-not (Test-Path '$AssetsDir/band_squat_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1003-w1NOByi.gif' -OutFile '$AssetsDir/band_squat_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_squat_row.gif'
} else {
    $skip++
}

# 83. band standing crunch (id: 1005)
if (-not (Test-Path '$AssetsDir/band_standing_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1005-Kzg30R7.gif' -OutFile '$AssetsDir/band_standing_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_standing_crunch.gif'
} else {
    $skip++
}

# 84. band standing rear delt row (id: 1022)
if (-not (Test-Path '$AssetsDir/band_standing_rear_delt_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1022-tc5dYrf.gif' -OutFile '$AssetsDir/band_standing_rear_delt_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_standing_rear_delt_row.gif'
} else {
    $skip++
}

# 85. band standing twisting crunch (id: 1007)
if (-not (Test-Path '$AssetsDir/band_standing_twisting_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1007-euq4pwp.gif' -OutFile '$AssetsDir/band_standing_twisting_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_standing_twisting_crunch.gif'
} else {
    $skip++
}

# 86. band step-up (id: 1008)
if (-not (Test-Path '$AssetsDir/band_step-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1008-d5bTEPV.gif' -OutFile '$AssetsDir/band_step-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_step-up.gif'
} else {
    $skip++
}

# 87. band stiff leg deadlift (id: 1009)
if (-not (Test-Path '$AssetsDir/band_stiff_leg_deadlift.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1009-kuMiR2T.gif' -OutFile '$AssetsDir/band_stiff_leg_deadlift.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_stiff_leg_deadlift.gif'
} else {
    $skip++
}

# 88. band straight back stiff leg deadlift (id: 1023)
if (-not (Test-Path '$AssetsDir/band_straight_back_stiff_leg_deadlift.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1023-lHeUULr.gif' -OutFile '$AssetsDir/band_straight_back_stiff_leg_deadlift.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_straight_back_stiff_leg_deadlift.gif'
} else {
    $skip++
}

# 89. band straight leg deadlift (id: 1010)
if (-not (Test-Path '$AssetsDir/band_straight_leg_deadlift.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1010-KUaoUV8.gif' -OutFile '$AssetsDir/band_straight_leg_deadlift.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_straight_leg_deadlift.gif'
} else {
    $skip++
}

# 90. band twisting overhead press (id: 1012)
if (-not (Test-Path '$AssetsDir/band_twisting_overhead_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1012-u4bAmKp.gif' -OutFile '$AssetsDir/band_twisting_overhead_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_twisting_overhead_press.gif'
} else {
    $skip++
}

# 91. band two legs calf raise - (band under both legs) v. 2 (id: 1369)
if (-not (Test-Path '$AssetsDir/band_two_legs_calf_raise_-_band_under_both_legs_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1369-jl6uxZV.gif' -OutFile '$AssetsDir/band_two_legs_calf_raise_-_band_under_both_legs_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_two_legs_calf_raise_-_band_under_both_legs_v_2.gif'
} else {
    $skip++
}

# 92. band underhand pulldown (id: 1013)
if (-not (Test-Path '$AssetsDir/band_underhand_pulldown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1013-k6tUeqS.gif' -OutFile '$AssetsDir/band_underhand_pulldown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_underhand_pulldown.gif'
} else {
    $skip++
}

# 93. band v-up (id: 1014)
if (-not (Test-Path '$AssetsDir/band_v-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1014-H6ETwO9.gif' -OutFile '$AssetsDir/band_v-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_v-up.gif'
} else {
    $skip++
}

# 94. band vertical pallof press (id: 1015)
if (-not (Test-Path '$AssetsDir/band_vertical_pallof_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1015-G7PXMlT.gif' -OutFile '$AssetsDir/band_vertical_pallof_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_vertical_pallof_press.gif'
} else {
    $skip++
}

# 95. band wrist curl (id: 1016)
if (-not (Test-Path '$AssetsDir/band_wrist_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1016-vUTfFHw.gif' -OutFile '$AssetsDir/band_wrist_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_wrist_curl.gif'
} else {
    $skip++
}

# 96. band y-raise (id: 1017)
if (-not (Test-Path '$AssetsDir/band_y-raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1017-aHDy5O5.gif' -OutFile '$AssetsDir/band_y-raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: band_y-raise.gif'
} else {
    $skip++
}

# 97. barbell alternate biceps curl (id: 0023)
if (-not (Test-Path '$AssetsDir/barbell_alternate_biceps_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0023-Yza7XrQ.gif' -OutFile '$AssetsDir/barbell_alternate_biceps_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_alternate_biceps_curl.gif'
} else {
    $skip++
}

# 98. barbell bench front squat (id: 0024)
if (-not (Test-Path '$AssetsDir/barbell_bench_front_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0024-Y7YcmIJ.gif' -OutFile '$AssetsDir/barbell_bench_front_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_bench_front_squat.gif'
} else {
    $skip++
}

# 99. barbell bench press (id: 0025)
if (-not (Test-Path '$AssetsDir/barbell_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0025-EIeI8Vf.gif' -OutFile '$AssetsDir/barbell_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_bench_press.gif'
} else {
    $skip++
}

# 100. barbell bench squat (id: 0026)
if (-not (Test-Path '$AssetsDir/barbell_bench_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0026-W9pFVv1.gif' -OutFile '$AssetsDir/barbell_bench_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_bench_squat.gif'
} else {
    $skip++
}

# 101. barbell bent arm pullover (id: 1316)
if (-not (Test-Path '$AssetsDir/barbell_bent_arm_pullover.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1316-cA9FuWG.gif' -OutFile '$AssetsDir/barbell_bent_arm_pullover.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_bent_arm_pullover.gif'
} else {
    $skip++
}

# 102. barbell bent over row (id: 0027)
if (-not (Test-Path '$AssetsDir/barbell_bent_over_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0027-eZyBC3j.gif' -OutFile '$AssetsDir/barbell_bent_over_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_bent_over_row.gif'
} else {
    $skip++
}

# 103. barbell biceps curl (with arm blaster) (id: 2407)
if (-not (Test-Path '$AssetsDir/barbell_biceps_curl_with_arm_blaster.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2407-aee2Fcj.gif' -OutFile '$AssetsDir/barbell_biceps_curl_with_arm_blaster.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_biceps_curl_with_arm_blaster.gif'
} else {
    $skip++
}

# 104. barbell clean and press (id: 0028)
if (-not (Test-Path '$AssetsDir/barbell_clean_and_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0028-SGY8Zui.gif' -OutFile '$AssetsDir/barbell_clean_and_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_clean_and_press.gif'
} else {
    $skip++
}

# 105. barbell clean-grip front squat (id: 0029)
if (-not (Test-Path '$AssetsDir/barbell_clean-grip_front_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0029-qi996YS.gif' -OutFile '$AssetsDir/barbell_clean-grip_front_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_clean-grip_front_squat.gif'
} else {
    $skip++
}

# 106. barbell close-grip bench press (id: 0030)
if (-not (Test-Path '$AssetsDir/barbell_close-grip_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0030-J6Dx1Mu.gif' -OutFile '$AssetsDir/barbell_close-grip_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_close-grip_bench_press.gif'
} else {
    $skip++
}

# 107. barbell curl (id: 0031)
if (-not (Test-Path '$AssetsDir/barbell_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0031-25GPyDY.gif' -OutFile '$AssetsDir/barbell_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_curl.gif'
} else {
    $skip++
}

# 108. barbell deadlift (id: 0032)
if (-not (Test-Path '$AssetsDir/barbell_deadlift.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0032-ila4NZS.gif' -OutFile '$AssetsDir/barbell_deadlift.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_deadlift.gif'
} else {
    $skip++
}

# 109. barbell decline bench press (id: 0033)
if (-not (Test-Path '$AssetsDir/barbell_decline_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0033-GrO65fd.gif' -OutFile '$AssetsDir/barbell_decline_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_decline_bench_press.gif'
} else {
    $skip++
}

# 110. barbell decline bent arm pullover (id: 0034)
if (-not (Test-Path '$AssetsDir/barbell_decline_bent_arm_pullover.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0034-hMEptv0.gif' -OutFile '$AssetsDir/barbell_decline_bent_arm_pullover.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_decline_bent_arm_pullover.gif'
} else {
    $skip++
}

# 111. barbell decline close grip to skull press (id: 0035)
if (-not (Test-Path '$AssetsDir/barbell_decline_close_grip_to_skull_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0035-LMGXZn8.gif' -OutFile '$AssetsDir/barbell_decline_close_grip_to_skull_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_decline_close_grip_to_skull_press.gif'
} else {
    $skip++
}

# 112. barbell decline pullover (id: 1255)
if (-not (Test-Path '$AssetsDir/barbell_decline_pullover.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1255-9sgNE2O.gif' -OutFile '$AssetsDir/barbell_decline_pullover.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_decline_pullover.gif'
} else {
    $skip++
}

# 113. barbell decline wide-grip press (id: 0036)
if (-not (Test-Path '$AssetsDir/barbell_decline_wide-grip_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0036-hl8DUh8.gif' -OutFile '$AssetsDir/barbell_decline_wide-grip_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_decline_wide-grip_press.gif'
} else {
    $skip++
}

# 114. barbell decline wide-grip pullover (id: 0037)
if (-not (Test-Path '$AssetsDir/barbell_decline_wide-grip_pullover.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0037-Hj4FOCd.gif' -OutFile '$AssetsDir/barbell_decline_wide-grip_pullover.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_decline_wide-grip_pullover.gif'
} else {
    $skip++
}

# 115. barbell drag curl (id: 0038)
if (-not (Test-Path '$AssetsDir/barbell_drag_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0038-IENzBdA.gif' -OutFile '$AssetsDir/barbell_drag_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_drag_curl.gif'
} else {
    $skip++
}

# 116. barbell floor calf raise (id: 1370)
if (-not (Test-Path '$AssetsDir/barbell_floor_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1370-2IHEa2T.gif' -OutFile '$AssetsDir/barbell_floor_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_floor_calf_raise.gif'
} else {
    $skip++
}

# 117. barbell front chest squat (id: 0039)
if (-not (Test-Path '$AssetsDir/barbell_front_chest_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0039-IeTIEqg.gif' -OutFile '$AssetsDir/barbell_front_chest_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_front_chest_squat.gif'
} else {
    $skip++
}

# 118. barbell front raise (id: 0041)
if (-not (Test-Path '$AssetsDir/barbell_front_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0041-b2Uoz54.gif' -OutFile '$AssetsDir/barbell_front_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_front_raise.gif'
} else {
    $skip++
}

# 119. barbell front raise and pullover (id: 0040)
if (-not (Test-Path '$AssetsDir/barbell_front_raise_and_pullover.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0040-33AzZeV.gif' -OutFile '$AssetsDir/barbell_front_raise_and_pullover.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_front_raise_and_pullover.gif'
} else {
    $skip++
}

# 120. barbell front squat (id: 0042)
if (-not (Test-Path '$AssetsDir/barbell_front_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0042-zG0zs85.gif' -OutFile '$AssetsDir/barbell_front_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_front_squat.gif'
} else {
    $skip++
}

# 121. barbell full squat (id: 0043)
if (-not (Test-Path '$AssetsDir/barbell_full_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0043-qXTaZnJ.gif' -OutFile '$AssetsDir/barbell_full_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_full_squat.gif'
} else {
    $skip++
}

# 122. barbell full squat (back pov) (id: 1461)
if (-not (Test-Path '$AssetsDir/barbell_full_squat_back_pov.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1461-DhMl549.gif' -OutFile '$AssetsDir/barbell_full_squat_back_pov.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_full_squat_back_pov.gif'
} else {
    $skip++
}

# 123. barbell full squat (side pov) (id: 1462)
if (-not (Test-Path '$AssetsDir/barbell_full_squat_side_pov.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1462-iYzB0Cz.gif' -OutFile '$AssetsDir/barbell_full_squat_side_pov.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_full_squat_side_pov.gif'
} else {
    $skip++
}

# 124. barbell full zercher squat (id: 1545)
if (-not (Test-Path '$AssetsDir/barbell_full_zercher_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1545-vR1vold.gif' -OutFile '$AssetsDir/barbell_full_zercher_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_full_zercher_squat.gif'
} else {
    $skip++
}

# 125. barbell glute bridge (id: 1409)
if (-not (Test-Path '$AssetsDir/barbell_glute_bridge.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1409-qKBpF7I.gif' -OutFile '$AssetsDir/barbell_glute_bridge.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_glute_bridge.gif'
} else {
    $skip++
}

# 126. barbell glute bridge two legs on bench (male) (id: 3562)
if (-not (Test-Path '$AssetsDir/barbell_glute_bridge_two_legs_on_bench_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3562-qg2PGl6.gif' -OutFile '$AssetsDir/barbell_glute_bridge_two_legs_on_bench_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_glute_bridge_two_legs_on_bench_male.gif'
} else {
    $skip++
}

# 127. barbell good morning (id: 0044)
if (-not (Test-Path '$AssetsDir/barbell_good_morning.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0044-XlZ4lAC.gif' -OutFile '$AssetsDir/barbell_good_morning.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_good_morning.gif'
} else {
    $skip++
}

# 128. barbell guillotine bench press (id: 0045)
if (-not (Test-Path '$AssetsDir/barbell_guillotine_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0045-GXoaSgn.gif' -OutFile '$AssetsDir/barbell_guillotine_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_guillotine_bench_press.gif'
} else {
    $skip++
}

# 129. barbell hack squat (id: 0046)
if (-not (Test-Path '$AssetsDir/barbell_hack_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0046-5VCj6iH.gif' -OutFile '$AssetsDir/barbell_hack_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_hack_squat.gif'
} else {
    $skip++
}

# 130. barbell high bar squat (id: 1436)
if (-not (Test-Path '$AssetsDir/barbell_high_bar_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1436-Gnfo4FM.gif' -OutFile '$AssetsDir/barbell_high_bar_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_high_bar_squat.gif'
} else {
    $skip++
}

# 131. barbell incline bench press (id: 0047)
if (-not (Test-Path '$AssetsDir/barbell_incline_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0047-3TZduzM.gif' -OutFile '$AssetsDir/barbell_incline_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_incline_bench_press.gif'
} else {
    $skip++
}

# 132. barbell incline close grip bench press (id: 1719)
if (-not (Test-Path '$AssetsDir/barbell_incline_close_grip_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1719-gx7s7uF.gif' -OutFile '$AssetsDir/barbell_incline_close_grip_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_incline_close_grip_bench_press.gif'
} else {
    $skip++
}

# 133. barbell incline reverse-grip press (id: 0048)
if (-not (Test-Path '$AssetsDir/barbell_incline_reverse-grip_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0048-641mIfk.gif' -OutFile '$AssetsDir/barbell_incline_reverse-grip_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_incline_reverse-grip_press.gif'
} else {
    $skip++
}

# 134. barbell incline row (id: 0049)
if (-not (Test-Path '$AssetsDir/barbell_incline_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0049-dmgMp3n.gif' -OutFile '$AssetsDir/barbell_incline_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_incline_row.gif'
} else {
    $skip++
}

# 135. barbell incline shoulder raise (id: 0050)
if (-not (Test-Path '$AssetsDir/barbell_incline_shoulder_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0050-xi0yckC.gif' -OutFile '$AssetsDir/barbell_incline_shoulder_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_incline_shoulder_raise.gif'
} else {
    $skip++
}

# 136. barbell jefferson squat (id: 0051)
if (-not (Test-Path '$AssetsDir/barbell_jefferson_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0051-pkSoCW9.gif' -OutFile '$AssetsDir/barbell_jefferson_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_jefferson_squat.gif'
} else {
    $skip++
}

# 137. barbell jm bench press (id: 0052)
if (-not (Test-Path '$AssetsDir/barbell_jm_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0052-ZsiqXYa.gif' -OutFile '$AssetsDir/barbell_jm_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_jm_bench_press.gif'
} else {
    $skip++
}

# 138. barbell jump squat (id: 0053)
if (-not (Test-Path '$AssetsDir/barbell_jump_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0053-1gFNTZV.gif' -OutFile '$AssetsDir/barbell_jump_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_jump_squat.gif'
} else {
    $skip++
}

# 139. barbell lateral lunge (id: 1410)
if (-not (Test-Path '$AssetsDir/barbell_lateral_lunge.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1410-py1HSzx.gif' -OutFile '$AssetsDir/barbell_lateral_lunge.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_lateral_lunge.gif'
} else {
    $skip++
}

# 140. barbell low bar squat (id: 1435)
if (-not (Test-Path '$AssetsDir/barbell_low_bar_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1435-bTpEUcm.gif' -OutFile '$AssetsDir/barbell_low_bar_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_low_bar_squat.gif'
} else {
    $skip++
}

# 141. barbell lunge (id: 0054)
if (-not (Test-Path '$AssetsDir/barbell_lunge.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0054-t8iSghb.gif' -OutFile '$AssetsDir/barbell_lunge.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_lunge.gif'
} else {
    $skip++
}

# 142. barbell lying back of the head tricep extension (id: 1720)
if (-not (Test-Path '$AssetsDir/barbell_lying_back_of_the_head_tricep_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1720-yg8Totb.gif' -OutFile '$AssetsDir/barbell_lying_back_of_the_head_tricep_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_lying_back_of_the_head_tricep_extension.gif'
} else {
    $skip++
}

# 143. barbell lying close-grip press (id: 0055)
if (-not (Test-Path '$AssetsDir/barbell_lying_close-grip_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0055-EcaV7aL.gif' -OutFile '$AssetsDir/barbell_lying_close-grip_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_lying_close-grip_press.gif'
} else {
    $skip++
}

# 144. barbell lying close-grip triceps extension (id: 0056)
if (-not (Test-Path '$AssetsDir/barbell_lying_close-grip_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0056-HJ63mSO.gif' -OutFile '$AssetsDir/barbell_lying_close-grip_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_lying_close-grip_triceps_extension.gif'
} else {
    $skip++
}

# 145. barbell lying extension (id: 0057)
if (-not (Test-Path '$AssetsDir/barbell_lying_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0057-EMpUwRI.gif' -OutFile '$AssetsDir/barbell_lying_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_lying_extension.gif'
} else {
    $skip++
}

# 146. barbell lying lifting (on hip) (id: 0058)
if (-not (Test-Path '$AssetsDir/barbell_lying_lifting_on_hip.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0058-SNFfUff.gif' -OutFile '$AssetsDir/barbell_lying_lifting_on_hip.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_lying_lifting_on_hip.gif'
} else {
    $skip++
}

# 147. barbell lying preacher curl (id: 0059)
if (-not (Test-Path '$AssetsDir/barbell_lying_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0059-SYJ4Bkt.gif' -OutFile '$AssetsDir/barbell_lying_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_lying_preacher_curl.gif'
} else {
    $skip++
}

# 148. barbell lying triceps extension (id: 0061)
if (-not (Test-Path '$AssetsDir/barbell_lying_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0061-iZop9xO.gif' -OutFile '$AssetsDir/barbell_lying_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_lying_triceps_extension.gif'
} else {
    $skip++
}

# 149. barbell lying triceps extension skull crusher (id: 0060)
if (-not (Test-Path '$AssetsDir/barbell_lying_triceps_extension_skull_crusher.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0060-h8LFzo9.gif' -OutFile '$AssetsDir/barbell_lying_triceps_extension_skull_crusher.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_lying_triceps_extension_skull_crusher.gif'
} else {
    $skip++
}

# 150. barbell narrow stance squat (id: 0063)
if (-not (Test-Path '$AssetsDir/barbell_narrow_stance_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0063-elhhVgj.gif' -OutFile '$AssetsDir/barbell_narrow_stance_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_narrow_stance_squat.gif'
} else {
    $skip++
}

# 151. barbell one arm bent over row (id: 0064)
if (-not (Test-Path '$AssetsDir/barbell_one_arm_bent_over_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0064-Jsgsc27.gif' -OutFile '$AssetsDir/barbell_one_arm_bent_over_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_one_arm_bent_over_row.gif'
} else {
    $skip++
}

# 152. barbell one arm floor press (id: 0065)
if (-not (Test-Path '$AssetsDir/barbell_one_arm_floor_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0065-vtusOWT.gif' -OutFile '$AssetsDir/barbell_one_arm_floor_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_one_arm_floor_press.gif'
} else {
    $skip++
}

# 153. barbell one arm side deadlift (id: 0066)
if (-not (Test-Path '$AssetsDir/barbell_one_arm_side_deadlift.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0066-2DxtqHL.gif' -OutFile '$AssetsDir/barbell_one_arm_side_deadlift.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_one_arm_side_deadlift.gif'
} else {
    $skip++
}

# 154. barbell one arm snatch (id: 0067)
if (-not (Test-Path '$AssetsDir/barbell_one_arm_snatch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0067-xHKN2s8.gif' -OutFile '$AssetsDir/barbell_one_arm_snatch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_one_arm_snatch.gif'
} else {
    $skip++
}

# 155. barbell one leg squat (id: 0068)
if (-not (Test-Path '$AssetsDir/barbell_one_leg_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0068-uKyN64F.gif' -OutFile '$AssetsDir/barbell_one_leg_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_one_leg_squat.gif'
} else {
    $skip++
}

# 156. barbell overhead squat (id: 0069)
if (-not (Test-Path '$AssetsDir/barbell_overhead_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0069-gfk9kD4.gif' -OutFile '$AssetsDir/barbell_overhead_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_overhead_squat.gif'
} else {
    $skip++
}

# 157. barbell palms down wrist curl over a bench (id: 1411)
if (-not (Test-Path '$AssetsDir/barbell_palms_down_wrist_curl_over_a_bench.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1411-yzYH9pI.gif' -OutFile '$AssetsDir/barbell_palms_down_wrist_curl_over_a_bench.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_palms_down_wrist_curl_over_a_bench.gif'
} else {
    $skip++
}

# 158. barbell palms up wrist curl over a bench (id: 1412)
if (-not (Test-Path '$AssetsDir/barbell_palms_up_wrist_curl_over_a_bench.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1412-SJAA2IQ.gif' -OutFile '$AssetsDir/barbell_palms_up_wrist_curl_over_a_bench.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_palms_up_wrist_curl_over_a_bench.gif'
} else {
    $skip++
}

# 159. barbell pendlay row (id: 3017)
if (-not (Test-Path '$AssetsDir/barbell_pendlay_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3017-r0z6xzQ.gif' -OutFile '$AssetsDir/barbell_pendlay_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_pendlay_row.gif'
} else {
    $skip++
}

# 160. barbell pin presses (id: 1751)
if (-not (Test-Path '$AssetsDir/barbell_pin_presses.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1751-bndCa3Q.gif' -OutFile '$AssetsDir/barbell_pin_presses.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_pin_presses.gif'
} else {
    $skip++
}

# 161. barbell preacher curl (id: 0070)
if (-not (Test-Path '$AssetsDir/barbell_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0070-qOgPVf6.gif' -OutFile '$AssetsDir/barbell_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_preacher_curl.gif'
} else {
    $skip++
}

# 162. barbell press sit-up (id: 0071)
if (-not (Test-Path '$AssetsDir/barbell_press_sit-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0071-wnEscH8.gif' -OutFile '$AssetsDir/barbell_press_sit-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_press_sit-up.gif'
} else {
    $skip++
}

# 163. barbell prone incline curl (id: 0072)
if (-not (Test-Path '$AssetsDir/barbell_prone_incline_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0072-WLvTAv5.gif' -OutFile '$AssetsDir/barbell_prone_incline_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_prone_incline_curl.gif'
} else {
    $skip++
}

# 164. barbell pullover (id: 0073)
if (-not (Test-Path '$AssetsDir/barbell_pullover.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0073-i6LWjok.gif' -OutFile '$AssetsDir/barbell_pullover.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_pullover.gif'
} else {
    $skip++
}

# 165. barbell pullover to press (id: 0022)
if (-not (Test-Path '$AssetsDir/barbell_pullover_to_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0022-znLogoF.gif' -OutFile '$AssetsDir/barbell_pullover_to_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_pullover_to_press.gif'
} else {
    $skip++
}

# 166. barbell rack pull (id: 0074)
if (-not (Test-Path '$AssetsDir/barbell_rack_pull.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0074-za9Ni4z.gif' -OutFile '$AssetsDir/barbell_rack_pull.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_rack_pull.gif'
} else {
    $skip++
}

# 167. barbell rear delt raise (id: 0075)
if (-not (Test-Path '$AssetsDir/barbell_rear_delt_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0075-Ln9iTbU.gif' -OutFile '$AssetsDir/barbell_rear_delt_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_rear_delt_raise.gif'
} else {
    $skip++
}

# 168. barbell rear delt row (id: 0076)
if (-not (Test-Path '$AssetsDir/barbell_rear_delt_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0076-S9zHIvU.gif' -OutFile '$AssetsDir/barbell_rear_delt_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_rear_delt_row.gif'
} else {
    $skip++
}

# 169. barbell rear lunge (id: 0078)
if (-not (Test-Path '$AssetsDir/barbell_rear_lunge.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0078-VaP75jl.gif' -OutFile '$AssetsDir/barbell_rear_lunge.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_rear_lunge.gif'
} else {
    $skip++
}

# 170. barbell rear lunge v. 2 (id: 0077)
if (-not (Test-Path '$AssetsDir/barbell_rear_lunge_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0077-62Nw60O.gif' -OutFile '$AssetsDir/barbell_rear_lunge_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_rear_lunge_v_2.gif'
} else {
    $skip++
}

# 171. barbell revers wrist curl v. 2 (id: 0079)
if (-not (Test-Path '$AssetsDir/barbell_revers_wrist_curl_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0079-qDnGfDb.gif' -OutFile '$AssetsDir/barbell_revers_wrist_curl_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_revers_wrist_curl_v_2.gif'
} else {
    $skip++
}

# 172. barbell reverse close-grip bench press (id: 2187)
if (-not (Test-Path '$AssetsDir/barbell_reverse_close-grip_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2187-YqJw82s.gif' -OutFile '$AssetsDir/barbell_reverse_close-grip_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_reverse_close-grip_bench_press.gif'
} else {
    $skip++
}

# 173. barbell reverse curl (id: 0080)
if (-not (Test-Path '$AssetsDir/barbell_reverse_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0080-xNrS20v.gif' -OutFile '$AssetsDir/barbell_reverse_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_reverse_curl.gif'
} else {
    $skip++
}

# 174. barbell reverse grip bent over row (id: 0118)
if (-not (Test-Path '$AssetsDir/barbell_reverse_grip_bent_over_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0118-SzX3uzM.gif' -OutFile '$AssetsDir/barbell_reverse_grip_bent_over_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_reverse_grip_bent_over_row.gif'
} else {
    $skip++
}

# 175. barbell reverse grip decline bench press (id: 1256)
if (-not (Test-Path '$AssetsDir/barbell_reverse_grip_decline_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1256-DotAgEF.gif' -OutFile '$AssetsDir/barbell_reverse_grip_decline_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_reverse_grip_decline_bench_press.gif'
} else {
    $skip++
}

# 176. barbell reverse grip incline bench press (id: 1257)
if (-not (Test-Path '$AssetsDir/barbell_reverse_grip_incline_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1257-DU7I633.gif' -OutFile '$AssetsDir/barbell_reverse_grip_incline_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_reverse_grip_incline_bench_press.gif'
} else {
    $skip++
}

# 177. barbell reverse grip incline bench row (id: 1317)
if (-not (Test-Path '$AssetsDir/barbell_reverse_grip_incline_bench_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1317-8d8qJQI.gif' -OutFile '$AssetsDir/barbell_reverse_grip_incline_bench_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_reverse_grip_incline_bench_row.gif'
} else {
    $skip++
}

# 178. barbell reverse grip skullcrusher (id: 1721)
if (-not (Test-Path '$AssetsDir/barbell_reverse_grip_skullcrusher.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1721-yRLPCLu.gif' -OutFile '$AssetsDir/barbell_reverse_grip_skullcrusher.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_reverse_grip_skullcrusher.gif'
} else {
    $skip++
}

# 179. barbell reverse preacher curl (id: 0081)
if (-not (Test-Path '$AssetsDir/barbell_reverse_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0081-4LIG9xr.gif' -OutFile '$AssetsDir/barbell_reverse_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_reverse_preacher_curl.gif'
} else {
    $skip++
}

# 180. barbell reverse wrist curl (id: 0082)
if (-not (Test-Path '$AssetsDir/barbell_reverse_wrist_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0082-LsZkfU6.gif' -OutFile '$AssetsDir/barbell_reverse_wrist_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_reverse_wrist_curl.gif'
} else {
    $skip++
}

# 181. barbell rollerout (id: 0084)
if (-not (Test-Path '$AssetsDir/barbell_rollerout.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0084-7M66AVi.gif' -OutFile '$AssetsDir/barbell_rollerout.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_rollerout.gif'
} else {
    $skip++
}

# 182. barbell rollerout from bench (id: 0083)
if (-not (Test-Path '$AssetsDir/barbell_rollerout_from_bench.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0083-Gxg9lDc.gif' -OutFile '$AssetsDir/barbell_rollerout_from_bench.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_rollerout_from_bench.gif'
} else {
    $skip++
}

# 183. barbell romanian deadlift (id: 0085)
if (-not (Test-Path '$AssetsDir/barbell_romanian_deadlift.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0085-wQ2c4XD.gif' -OutFile '$AssetsDir/barbell_romanian_deadlift.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_romanian_deadlift.gif'
} else {
    $skip++
}

# 184. barbell seated behind head military press (id: 0086)
if (-not (Test-Path '$AssetsDir/barbell_seated_behind_head_military_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0086-ngPpyRS.gif' -OutFile '$AssetsDir/barbell_seated_behind_head_military_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_seated_behind_head_military_press.gif'
} else {
    $skip++
}

# 185. barbell seated bradford rocky press (id: 0087)
if (-not (Test-Path '$AssetsDir/barbell_seated_bradford_rocky_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0087-0dCyly0.gif' -OutFile '$AssetsDir/barbell_seated_bradford_rocky_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_seated_bradford_rocky_press.gif'
} else {
    $skip++
}

# 186. barbell seated calf raise (id: 0088)
if (-not (Test-Path '$AssetsDir/barbell_seated_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0088-ktsFQAZ.gif' -OutFile '$AssetsDir/barbell_seated_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_seated_calf_raise.gif'
} else {
    $skip++
}

# 187. barbell seated calf raise (id: 1371)
if (-not (Test-Path '$AssetsDir/barbell_seated_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1371-ipvgBnC.gif' -OutFile '$AssetsDir/barbell_seated_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_seated_calf_raise.gif'
} else {
    $skip++
}

# 188. barbell seated close grip behind neck triceps extension (id: 1718)
if (-not (Test-Path '$AssetsDir/barbell_seated_close_grip_behind_neck_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1718-4CBIBOM.gif' -OutFile '$AssetsDir/barbell_seated_close_grip_behind_neck_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_seated_close_grip_behind_neck_triceps_extension.gif'
} else {
    $skip++
}

# 189. barbell seated close-grip concentration curl (id: 0089)
if (-not (Test-Path '$AssetsDir/barbell_seated_close-grip_concentration_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0089-1V1gj1u.gif' -OutFile '$AssetsDir/barbell_seated_close-grip_concentration_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_seated_close-grip_concentration_curl.gif'
} else {
    $skip++
}

# 190. barbell seated good morning (id: 0090)
if (-not (Test-Path '$AssetsDir/barbell_seated_good_morning.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0090-d960PgE.gif' -OutFile '$AssetsDir/barbell_seated_good_morning.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_seated_good_morning.gif'
} else {
    $skip++
}

# 191. barbell seated overhead press (id: 0091)
if (-not (Test-Path '$AssetsDir/barbell_seated_overhead_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0091-kTbSH9h.gif' -OutFile '$AssetsDir/barbell_seated_overhead_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_seated_overhead_press.gif'
} else {
    $skip++
}

# 192. barbell seated overhead triceps extension (id: 0092)
if (-not (Test-Path '$AssetsDir/barbell_seated_overhead_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0092-5uFK1xr.gif' -OutFile '$AssetsDir/barbell_seated_overhead_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_seated_overhead_triceps_extension.gif'
} else {
    $skip++
}

# 193. barbell seated twist (id: 0094)
if (-not (Test-Path '$AssetsDir/barbell_seated_twist.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0094-dFSNDOA.gif' -OutFile '$AssetsDir/barbell_seated_twist.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_seated_twist.gif'
} else {
    $skip++
}

# 194. barbell shrug (id: 0095)
if (-not (Test-Path '$AssetsDir/barbell_shrug.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0095-dG7tG5y.gif' -OutFile '$AssetsDir/barbell_shrug.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_shrug.gif'
} else {
    $skip++
}

# 195. barbell side bent v. 2 (id: 0096)
if (-not (Test-Path '$AssetsDir/barbell_side_bent_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0096-i4JkUaL.gif' -OutFile '$AssetsDir/barbell_side_bent_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_side_bent_v_2.gif'
} else {
    $skip++
}

# 196. barbell side split squat (id: 0098)
if (-not (Test-Path '$AssetsDir/barbell_side_split_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0098-W31mMjd.gif' -OutFile '$AssetsDir/barbell_side_split_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_side_split_squat.gif'
} else {
    $skip++
}

# 197. barbell side split squat v. 2 (id: 0097)
if (-not (Test-Path '$AssetsDir/barbell_side_split_squat_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0097-HUEqZ1y.gif' -OutFile '$AssetsDir/barbell_side_split_squat_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_side_split_squat_v_2.gif'
} else {
    $skip++
}

# 198. barbell single leg deadlift (id: 1756)
if (-not (Test-Path '$AssetsDir/barbell_single_leg_deadlift.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1756-gEyURal.gif' -OutFile '$AssetsDir/barbell_single_leg_deadlift.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_single_leg_deadlift.gif'
} else {
    $skip++
}

# 199. barbell single leg split squat (id: 0099)
if (-not (Test-Path '$AssetsDir/barbell_single_leg_split_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0099-gGNQmVt.gif' -OutFile '$AssetsDir/barbell_single_leg_split_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_single_leg_split_squat.gif'
} else {
    $skip++
}

# 200. barbell sitted alternate leg raise (id: 2799)
if (-not (Test-Path '$AssetsDir/barbell_sitted_alternate_leg_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2799-G7xoEzr.gif' -OutFile '$AssetsDir/barbell_sitted_alternate_leg_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_sitted_alternate_leg_raise.gif'
} else {
    $skip++
}

# 201. barbell sitted alternate leg raise (female) (id: 2800)
if (-not (Test-Path '$AssetsDir/barbell_sitted_alternate_leg_raise_female.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2800-BCs0G2F.gif' -OutFile '$AssetsDir/barbell_sitted_alternate_leg_raise_female.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_sitted_alternate_leg_raise_female.gif'
} else {
    $skip++
}

# 202. barbell skier (id: 0100)
if (-not (Test-Path '$AssetsDir/barbell_skier.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0100-4Leypho.gif' -OutFile '$AssetsDir/barbell_skier.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_skier.gif'
} else {
    $skip++
}

# 203. barbell speed squat (id: 0101)
if (-not (Test-Path '$AssetsDir/barbell_speed_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0101-euI1BwR.gif' -OutFile '$AssetsDir/barbell_speed_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_speed_squat.gif'
} else {
    $skip++
}

# 204. barbell split squat v. 2 (id: 2810)
if (-not (Test-Path '$AssetsDir/barbell_split_squat_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2810-HBYyX94.gif' -OutFile '$AssetsDir/barbell_split_squat_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_split_squat_v_2.gif'
} else {
    $skip++
}

# 205. barbell squat (on knees) (id: 0102)
if (-not (Test-Path '$AssetsDir/barbell_squat_on_knees.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0102-oR7O9LW.gif' -OutFile '$AssetsDir/barbell_squat_on_knees.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_squat_on_knees.gif'
} else {
    $skip++
}

# 206. barbell squat jump step rear lunge (id: 2798)
if (-not (Test-Path '$AssetsDir/barbell_squat_jump_step_rear_lunge.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2798-RYcV1kH.gif' -OutFile '$AssetsDir/barbell_squat_jump_step_rear_lunge.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_squat_jump_step_rear_lunge.gif'
} else {
    $skip++
}

# 207. barbell standing ab rollerout (id: 0103)
if (-not (Test-Path '$AssetsDir/barbell_standing_ab_rollerout.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0103-xnInPfE.gif' -OutFile '$AssetsDir/barbell_standing_ab_rollerout.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_standing_ab_rollerout.gif'
} else {
    $skip++
}

# 208. barbell standing back wrist curl (id: 0104)
if (-not (Test-Path '$AssetsDir/barbell_standing_back_wrist_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0104-2qTvJAZ.gif' -OutFile '$AssetsDir/barbell_standing_back_wrist_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_standing_back_wrist_curl.gif'
} else {
    $skip++
}

# 209. barbell standing bradford press (id: 0105)
if (-not (Test-Path '$AssetsDir/barbell_standing_bradford_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0105-dCPESfR.gif' -OutFile '$AssetsDir/barbell_standing_bradford_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_standing_bradford_press.gif'
} else {
    $skip++
}

# 210. barbell standing calf raise (id: 1372)
if (-not (Test-Path '$AssetsDir/barbell_standing_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1372-8ozhUIZ.gif' -OutFile '$AssetsDir/barbell_standing_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_standing_calf_raise.gif'
} else {
    $skip++
}

# 211. barbell standing close grip curl (id: 0106)
if (-not (Test-Path '$AssetsDir/barbell_standing_close_grip_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0106-4dUn2iv.gif' -OutFile '$AssetsDir/barbell_standing_close_grip_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_standing_close_grip_curl.gif'
} else {
    $skip++
}

# 212. barbell standing close grip military press (id: 1456)
if (-not (Test-Path '$AssetsDir/barbell_standing_close_grip_military_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1456-wdRZISl.gif' -OutFile '$AssetsDir/barbell_standing_close_grip_military_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_standing_close_grip_military_press.gif'
} else {
    $skip++
}

# 213. barbell standing concentration curl (id: 2414)
if (-not (Test-Path '$AssetsDir/barbell_standing_concentration_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2414-vsMcDi9.gif' -OutFile '$AssetsDir/barbell_standing_concentration_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_standing_concentration_curl.gif'
} else {
    $skip++
}

# 214. barbell standing front raise over head (id: 0107)
if (-not (Test-Path '$AssetsDir/barbell_standing_front_raise_over_head.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0107-S8mo30S.gif' -OutFile '$AssetsDir/barbell_standing_front_raise_over_head.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_standing_front_raise_over_head.gif'
} else {
    $skip++
}

# 215. barbell standing leg calf raise (id: 0108)
if (-not (Test-Path '$AssetsDir/barbell_standing_leg_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0108-rGwhJ5o.gif' -OutFile '$AssetsDir/barbell_standing_leg_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_standing_leg_calf_raise.gif'
} else {
    $skip++
}

# 216. barbell standing overhead triceps extension (id: 0109)
if (-not (Test-Path '$AssetsDir/barbell_standing_overhead_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0109-dZl9Q27.gif' -OutFile '$AssetsDir/barbell_standing_overhead_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_standing_overhead_triceps_extension.gif'
} else {
    $skip++
}

# 217. barbell standing reverse grip curl (id: 0110)
if (-not (Test-Path '$AssetsDir/barbell_standing_reverse_grip_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0110-LWuA3aZ.gif' -OutFile '$AssetsDir/barbell_standing_reverse_grip_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_standing_reverse_grip_curl.gif'
} else {
    $skip++
}

# 218. barbell standing rocking leg calf raise (id: 0111)
if (-not (Test-Path '$AssetsDir/barbell_standing_rocking_leg_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0111-6HiHHe0.gif' -OutFile '$AssetsDir/barbell_standing_rocking_leg_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_standing_rocking_leg_calf_raise.gif'
} else {
    $skip++
}

# 219. barbell standing twist (id: 0112)
if (-not (Test-Path '$AssetsDir/barbell_standing_twist.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0112-yQe5HpE.gif' -OutFile '$AssetsDir/barbell_standing_twist.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_standing_twist.gif'
} else {
    $skip++
}

# 220. barbell standing wide grip biceps curl (id: 1629)
if (-not (Test-Path '$AssetsDir/barbell_standing_wide_grip_biceps_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1629-faHKVkK.gif' -OutFile '$AssetsDir/barbell_standing_wide_grip_biceps_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_standing_wide_grip_biceps_curl.gif'
} else {
    $skip++
}

# 221. barbell standing wide military press (id: 1457)
if (-not (Test-Path '$AssetsDir/barbell_standing_wide_military_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1457-Kyd9Rz5.gif' -OutFile '$AssetsDir/barbell_standing_wide_military_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_standing_wide_military_press.gif'
} else {
    $skip++
}

# 222. barbell standing wide-grip curl (id: 0113)
if (-not (Test-Path '$AssetsDir/barbell_standing_wide-grip_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0113-NdIb5Z1.gif' -OutFile '$AssetsDir/barbell_standing_wide-grip_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_standing_wide-grip_curl.gif'
} else {
    $skip++
}

# 223. barbell step-up (id: 0114)
if (-not (Test-Path '$AssetsDir/barbell_step-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0114-Kxquu2E.gif' -OutFile '$AssetsDir/barbell_step-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_step-up.gif'
} else {
    $skip++
}

# 224. barbell stiff leg good morning (id: 0115)
if (-not (Test-Path '$AssetsDir/barbell_stiff_leg_good_morning.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0115-JrOHAZc.gif' -OutFile '$AssetsDir/barbell_stiff_leg_good_morning.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_stiff_leg_good_morning.gif'
} else {
    $skip++
}

# 225. barbell straight leg deadlift (id: 0116)
if (-not (Test-Path '$AssetsDir/barbell_straight_leg_deadlift.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0116-hrVQWvE.gif' -OutFile '$AssetsDir/barbell_straight_leg_deadlift.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_straight_leg_deadlift.gif'
} else {
    $skip++
}

# 226. barbell sumo deadlift (id: 0117)
if (-not (Test-Path '$AssetsDir/barbell_sumo_deadlift.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0117-KgI0tqW.gif' -OutFile '$AssetsDir/barbell_sumo_deadlift.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_sumo_deadlift.gif'
} else {
    $skip++
}

# 227. barbell thruster (id: 3305)
if (-not (Test-Path '$AssetsDir/barbell_thruster.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3305-f7Y9eDZ.gif' -OutFile '$AssetsDir/barbell_thruster.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_thruster.gif'
} else {
    $skip++
}

# 228. barbell upright row (id: 0120)
if (-not (Test-Path '$AssetsDir/barbell_upright_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0120-UDlhcO8.gif' -OutFile '$AssetsDir/barbell_upright_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_upright_row.gif'
} else {
    $skip++
}

# 229. barbell upright row v. 2 (id: 0119)
if (-not (Test-Path '$AssetsDir/barbell_upright_row_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0119-83HoW9X.gif' -OutFile '$AssetsDir/barbell_upright_row_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_upright_row_v_2.gif'
} else {
    $skip++
}

# 230. barbell upright row v. 3 (id: 0121)
if (-not (Test-Path '$AssetsDir/barbell_upright_row_v_3.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0121-fI18Rbc.gif' -OutFile '$AssetsDir/barbell_upright_row_v_3.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_upright_row_v_3.gif'
} else {
    $skip++
}

# 231. barbell wide bench press (id: 0122)
if (-not (Test-Path '$AssetsDir/barbell_wide_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0122-JsKq9so.gif' -OutFile '$AssetsDir/barbell_wide_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_wide_bench_press.gif'
} else {
    $skip++
}

# 232. barbell wide reverse grip bench press (id: 1258)
if (-not (Test-Path '$AssetsDir/barbell_wide_reverse_grip_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1258-945zpRg.gif' -OutFile '$AssetsDir/barbell_wide_reverse_grip_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_wide_reverse_grip_bench_press.gif'
} else {
    $skip++
}

# 233. barbell wide squat (id: 0124)
if (-not (Test-Path '$AssetsDir/barbell_wide_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0124-s7HX1BY.gif' -OutFile '$AssetsDir/barbell_wide_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_wide_squat.gif'
} else {
    $skip++
}

# 234. barbell wide-grip upright row (id: 0123)
if (-not (Test-Path '$AssetsDir/barbell_wide-grip_upright_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0123-RgJDRR1.gif' -OutFile '$AssetsDir/barbell_wide-grip_upright_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_wide-grip_upright_row.gif'
} else {
    $skip++
}

# 235. barbell wrist curl (id: 0126)
if (-not (Test-Path '$AssetsDir/barbell_wrist_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0126-82LxxkW.gif' -OutFile '$AssetsDir/barbell_wrist_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_wrist_curl.gif'
} else {
    $skip++
}

# 236. barbell wrist curl v. 2 (id: 0125)
if (-not (Test-Path '$AssetsDir/barbell_wrist_curl_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0125-6kSxYnw.gif' -OutFile '$AssetsDir/barbell_wrist_curl_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_wrist_curl_v_2.gif'
} else {
    $skip++
}

# 237. barbell zercher squat (id: 0127)
if (-not (Test-Path '$AssetsDir/barbell_zercher_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0127-LSTChY9.gif' -OutFile '$AssetsDir/barbell_zercher_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: barbell_zercher_squat.gif'
} else {
    $skip++
}

# 238. basic toe touch (male) (id: 3212)
if (-not (Test-Path '$AssetsDir/basic_toe_touch_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3212-BbfB8Gb.gif' -OutFile '$AssetsDir/basic_toe_touch_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: basic_toe_touch_male.gif'
} else {
    $skip++
}

# 239. battling ropes (id: 0128)
if (-not (Test-Path '$AssetsDir/battling_ropes.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0128-RJa4tCo.gif' -OutFile '$AssetsDir/battling_ropes.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: battling_ropes.gif'
} else {
    $skip++
}

# 240. bear crawl (id: 3360)
if (-not (Test-Path '$AssetsDir/bear_crawl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3360-0Yz8WdV.gif' -OutFile '$AssetsDir/bear_crawl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: bear_crawl.gif'
} else {
    $skip++
}

# 241. behind head chest stretch (id: 1259)
if (-not (Test-Path '$AssetsDir/behind_head_chest_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1259-QoHIhPl.gif' -OutFile '$AssetsDir/behind_head_chest_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: behind_head_chest_stretch.gif'
} else {
    $skip++
}

# 242. bench dip (knees bent) (id: 0129)
if (-not (Test-Path '$AssetsDir/bench_dip_knees_bent.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0129-RrLske5.gif' -OutFile '$AssetsDir/bench_dip_knees_bent.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: bench_dip_knees_bent.gif'
} else {
    $skip++
}

# 243. bench dip on floor (id: 1399)
if (-not (Test-Path '$AssetsDir/bench_dip_on_floor.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1399-9RT8oQW.gif' -OutFile '$AssetsDir/bench_dip_on_floor.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: bench_dip_on_floor.gif'
} else {
    $skip++
}

# 244. bench hip extension (id: 0130)
if (-not (Test-Path '$AssetsDir/bench_hip_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0130-u27Kcdz.gif' -OutFile '$AssetsDir/bench_hip_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: bench_hip_extension.gif'
} else {
    $skip++
}

# 245. bench pull-ups (id: 3019)
if (-not (Test-Path '$AssetsDir/bench_pull-ups.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3019-mExgrF9.gif' -OutFile '$AssetsDir/bench_pull-ups.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: bench_pull-ups.gif'
} else {
    $skip++
}

# 246. bent knee lying twist (male) (id: 3639)
if (-not (Test-Path '$AssetsDir/bent_knee_lying_twist_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3639-6sYyrRX.gif' -OutFile '$AssetsDir/bent_knee_lying_twist_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: bent_knee_lying_twist_male.gif'
} else {
    $skip++
}

# 247. biceps leg concentration curl (id: 1770)
if (-not (Test-Path '$AssetsDir/biceps_leg_concentration_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1770-sJFIDIp.gif' -OutFile '$AssetsDir/biceps_leg_concentration_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: biceps_leg_concentration_curl.gif'
} else {
    $skip++
}

# 248. biceps narrow pull-ups (id: 0139)
if (-not (Test-Path '$AssetsDir/biceps_narrow_pull-ups.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0139-50BETrz.gif' -OutFile '$AssetsDir/biceps_narrow_pull-ups.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: biceps_narrow_pull-ups.gif'
} else {
    $skip++
}

# 249. biceps pull-up (id: 0140)
if (-not (Test-Path '$AssetsDir/biceps_pull-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0140-guT8YnS.gif' -OutFile '$AssetsDir/biceps_pull-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: biceps_pull-up.gif'
} else {
    $skip++
}

# 250. body-up (id: 0137)
if (-not (Test-Path '$AssetsDir/body-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0137-U6G2gk9.gif' -OutFile '$AssetsDir/body-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: body-up.gif'
} else {
    $skip++
}

# 251. bodyweight drop jump squat (id: 3543)
if (-not (Test-Path '$AssetsDir/bodyweight_drop_jump_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3543-wfotm7S.gif' -OutFile '$AssetsDir/bodyweight_drop_jump_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: bodyweight_drop_jump_squat.gif'
} else {
    $skip++
}

# 252. bodyweight incline side plank (id: 3544)
if (-not (Test-Path '$AssetsDir/bodyweight_incline_side_plank.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3544-5VXmnV5.gif' -OutFile '$AssetsDir/bodyweight_incline_side_plank.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: bodyweight_incline_side_plank.gif'
} else {
    $skip++
}

# 253. bodyweight kneeling triceps extension (id: 1771)
if (-not (Test-Path '$AssetsDir/bodyweight_kneeling_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1771-s0HKO2I.gif' -OutFile '$AssetsDir/bodyweight_kneeling_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: bodyweight_kneeling_triceps_extension.gif'
} else {
    $skip++
}

# 254. bodyweight side lying biceps curl (id: 1769)
if (-not (Test-Path '$AssetsDir/bodyweight_side_lying_biceps_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1769-gscGLOU.gif' -OutFile '$AssetsDir/bodyweight_side_lying_biceps_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: bodyweight_side_lying_biceps_curl.gif'
} else {
    $skip++
}

# 255. bodyweight squatting row (id: 3168)
if (-not (Test-Path '$AssetsDir/bodyweight_squatting_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3168-3xK09Sk.gif' -OutFile '$AssetsDir/bodyweight_squatting_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: bodyweight_squatting_row.gif'
} else {
    $skip++
}

# 256. bodyweight squatting row (with towel) (id: 3167)
if (-not (Test-Path '$AssetsDir/bodyweight_squatting_row_with_towel.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3167-BReCuOn.gif' -OutFile '$AssetsDir/bodyweight_squatting_row_with_towel.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: bodyweight_squatting_row_with_towel.gif'
} else {
    $skip++
}

# 257. bodyweight standing calf raise (id: 1373)
if (-not (Test-Path '$AssetsDir/bodyweight_standing_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1373-bJYHBIN.gif' -OutFile '$AssetsDir/bodyweight_standing_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: bodyweight_standing_calf_raise.gif'
} else {
    $skip++
}

# 258. bodyweight standing close-grip one arm row (id: 3156)
if (-not (Test-Path '$AssetsDir/bodyweight_standing_close-grip_one_arm_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3156-v2DfH14.gif' -OutFile '$AssetsDir/bodyweight_standing_close-grip_one_arm_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: bodyweight_standing_close-grip_one_arm_row.gif'
} else {
    $skip++
}

# 259. bodyweight standing close-grip row (id: 3158)
if (-not (Test-Path '$AssetsDir/bodyweight_standing_close-grip_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3158-tig3PXb.gif' -OutFile '$AssetsDir/bodyweight_standing_close-grip_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: bodyweight_standing_close-grip_row.gif'
} else {
    $skip++
}

# 260. bodyweight standing one arm row (id: 3162)
if (-not (Test-Path '$AssetsDir/bodyweight_standing_one_arm_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3162-xbkPfaw.gif' -OutFile '$AssetsDir/bodyweight_standing_one_arm_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: bodyweight_standing_one_arm_row.gif'
} else {
    $skip++
}

# 261. bodyweight standing one arm row (with towel) (id: 3161)
if (-not (Test-Path '$AssetsDir/bodyweight_standing_one_arm_row_with_towel.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3161-O4oIqQD.gif' -OutFile '$AssetsDir/bodyweight_standing_one_arm_row_with_towel.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: bodyweight_standing_one_arm_row_with_towel.gif'
} else {
    $skip++
}

# 262. bodyweight standing row (id: 3166)
if (-not (Test-Path '$AssetsDir/bodyweight_standing_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3166-wd4ds3s.gif' -OutFile '$AssetsDir/bodyweight_standing_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: bodyweight_standing_row.gif'
} else {
    $skip++
}

# 263. bodyweight standing row (with towel) (id: 3165)
if (-not (Test-Path '$AssetsDir/bodyweight_standing_row_with_towel.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3165-uTv34oq.gif' -OutFile '$AssetsDir/bodyweight_standing_row_with_towel.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: bodyweight_standing_row_with_towel.gif'
} else {
    $skip++
}

# 264. bottoms-up (id: 0138)
if (-not (Test-Path '$AssetsDir/bottoms-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0138-CI6baTY.gif' -OutFile '$AssetsDir/bottoms-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: bottoms-up.gif'
} else {
    $skip++
}

# 265. box jump down with one leg stabilization (id: 1374)
if (-not (Test-Path '$AssetsDir/box_jump_down_with_one_leg_stabilization.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1374-iPm26QU.gif' -OutFile '$AssetsDir/box_jump_down_with_one_leg_stabilization.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: box_jump_down_with_one_leg_stabilization.gif'
} else {
    $skip++
}

# 266. bridge - mountain climber (cross body) (id: 2466)
if (-not (Test-Path '$AssetsDir/bridge_-_mountain_climber_cross_body.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2466-9c6T1YX.gif' -OutFile '$AssetsDir/bridge_-_mountain_climber_cross_body.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: bridge_-_mountain_climber_cross_body.gif'
} else {
    $skip++
}

# 267. burpee (id: 1160)
if (-not (Test-Path '$AssetsDir/burpee.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1160-dK9394r.gif' -OutFile '$AssetsDir/burpee.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: burpee.gif'
} else {
    $skip++
}

# 268. butt-ups (id: 0870)
if (-not (Test-Path '$AssetsDir/butt-ups.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0870-qcNN2FN.gif' -OutFile '$AssetsDir/butt-ups.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: butt-ups.gif'
} else {
    $skip++
}

# 269. butterfly yoga pose (id: 1494)
if (-not (Test-Path '$AssetsDir/butterfly_yoga_pose.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1494-bWlZvXh.gif' -OutFile '$AssetsDir/butterfly_yoga_pose.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: butterfly_yoga_pose.gif'
} else {
    $skip++
}

# 270. cable alternate shoulder press (id: 0148)
if (-not (Test-Path '$AssetsDir/cable_alternate_shoulder_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0148-KHPZL0b.gif' -OutFile '$AssetsDir/cable_alternate_shoulder_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_alternate_shoulder_press.gif'
} else {
    $skip++
}

# 271. cable alternate triceps extension (id: 0149)
if (-not (Test-Path '$AssetsDir/cable_alternate_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0149-Gchi5Tr.gif' -OutFile '$AssetsDir/cable_alternate_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_alternate_triceps_extension.gif'
} else {
    $skip++
}

# 272. cable assisted inverse leg curl (id: 3235)
if (-not (Test-Path '$AssetsDir/cable_assisted_inverse_leg_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3235-zHEpuuc.gif' -OutFile '$AssetsDir/cable_assisted_inverse_leg_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_assisted_inverse_leg_curl.gif'
} else {
    $skip++
}

# 273. cable bar lateral pulldown (id: 0150)
if (-not (Test-Path '$AssetsDir/cable_bar_lateral_pulldown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0150-eYnzaCm.gif' -OutFile '$AssetsDir/cable_bar_lateral_pulldown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_bar_lateral_pulldown.gif'
} else {
    $skip++
}

# 274. cable bench press (id: 0151)
if (-not (Test-Path '$AssetsDir/cable_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0151-7xI5MXA.gif' -OutFile '$AssetsDir/cable_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_bench_press.gif'
} else {
    $skip++
}

# 275. cable close grip curl (id: 1630)
if (-not (Test-Path '$AssetsDir/cable_close_grip_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1630-BCGQ6J5.gif' -OutFile '$AssetsDir/cable_close_grip_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_close_grip_curl.gif'
} else {
    $skip++
}

# 276. cable concentration curl (id: 1631)
if (-not (Test-Path '$AssetsDir/cable_concentration_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1631-NvfE43H.gif' -OutFile '$AssetsDir/cable_concentration_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_concentration_curl.gif'
} else {
    $skip++
}

# 277. cable concentration extension (on knee) (id: 0152)
if (-not (Test-Path '$AssetsDir/cable_concentration_extension_on_knee.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0152-Db7eEgw.gif' -OutFile '$AssetsDir/cable_concentration_extension_on_knee.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_concentration_extension_on_knee.gif'
} else {
    $skip++
}

# 278. cable cross-over lateral pulldown (id: 0153)
if (-not (Test-Path '$AssetsDir/cable_cross-over_lateral_pulldown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0153-OQ1otBN.gif' -OutFile '$AssetsDir/cable_cross-over_lateral_pulldown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_cross-over_lateral_pulldown.gif'
} else {
    $skip++
}

# 279. cable cross-over revers fly (id: 0154)
if (-not (Test-Path '$AssetsDir/cable_cross-over_revers_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0154-aqvSOQE.gif' -OutFile '$AssetsDir/cable_cross-over_revers_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_cross-over_revers_fly.gif'
} else {
    $skip++
}

# 280. cable cross-over variation (id: 0155)
if (-not (Test-Path '$AssetsDir/cable_cross-over_variation.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0155-0CXGHya.gif' -OutFile '$AssetsDir/cable_cross-over_variation.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_cross-over_variation.gif'
} else {
    $skip++
}

# 281. cable curl (id: 0868)
if (-not (Test-Path '$AssetsDir/cable_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0868-G08RZcQ.gif' -OutFile '$AssetsDir/cable_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_curl.gif'
} else {
    $skip++
}

# 282. cable deadlift (id: 0157)
if (-not (Test-Path '$AssetsDir/cable_deadlift.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0157-eGDudUV.gif' -OutFile '$AssetsDir/cable_deadlift.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_deadlift.gif'
} else {
    $skip++
}

# 283. cable decline fly (id: 0158)
if (-not (Test-Path '$AssetsDir/cable_decline_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0158-7saC5zz.gif' -OutFile '$AssetsDir/cable_decline_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_decline_fly.gif'
} else {
    $skip++
}

# 284. cable decline one arm press (id: 1260)
if (-not (Test-Path '$AssetsDir/cable_decline_one_arm_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1260-KHGNa16.gif' -OutFile '$AssetsDir/cable_decline_one_arm_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_decline_one_arm_press.gif'
} else {
    $skip++
}

# 285. cable decline press (id: 1261)
if (-not (Test-Path '$AssetsDir/cable_decline_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1261-2Pya1cP.gif' -OutFile '$AssetsDir/cable_decline_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_decline_press.gif'
} else {
    $skip++
}

# 286. cable decline seated wide-grip row (id: 0159)
if (-not (Test-Path '$AssetsDir/cable_decline_seated_wide-grip_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0159-kesXOpB.gif' -OutFile '$AssetsDir/cable_decline_seated_wide-grip_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_decline_seated_wide-grip_row.gif'
} else {
    $skip++
}

# 287. cable drag curl (id: 1632)
if (-not (Test-Path '$AssetsDir/cable_drag_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1632-dXz8zjF.gif' -OutFile '$AssetsDir/cable_drag_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_drag_curl.gif'
} else {
    $skip++
}

# 288. cable floor seated wide-grip row (id: 0160)
if (-not (Test-Path '$AssetsDir/cable_floor_seated_wide-grip_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0160-veXwo0D.gif' -OutFile '$AssetsDir/cable_floor_seated_wide-grip_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_floor_seated_wide-grip_row.gif'
} else {
    $skip++
}

# 289. cable forward raise (id: 0161)
if (-not (Test-Path '$AssetsDir/cable_forward_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0161-hvHhCv8.gif' -OutFile '$AssetsDir/cable_forward_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_forward_raise.gif'
} else {
    $skip++
}

# 290. cable front raise (id: 0162)
if (-not (Test-Path '$AssetsDir/cable_front_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0162-u2X71Np.gif' -OutFile '$AssetsDir/cable_front_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_front_raise.gif'
} else {
    $skip++
}

# 291. cable front shoulder raise (id: 0164)
if (-not (Test-Path '$AssetsDir/cable_front_shoulder_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0164-mTT3KLn.gif' -OutFile '$AssetsDir/cable_front_shoulder_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_front_shoulder_raise.gif'
} else {
    $skip++
}

# 292. cable hammer curl (with rope) (id: 0165)
if (-not (Test-Path '$AssetsDir/cable_hammer_curl_with_rope.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0165-HPlPoQA.gif' -OutFile '$AssetsDir/cable_hammer_curl_with_rope.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_hammer_curl_with_rope.gif'
} else {
    $skip++
}

# 293. cable high pulley overhead tricep extension (id: 1722)
if (-not (Test-Path '$AssetsDir/cable_high_pulley_overhead_tricep_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1722-1xHyxys.gif' -OutFile '$AssetsDir/cable_high_pulley_overhead_tricep_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_high_pulley_overhead_tricep_extension.gif'
} else {
    $skip++
}

# 294. cable high row (kneeling) (id: 0167)
if (-not (Test-Path '$AssetsDir/cable_high_row_kneeling.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0167-ZSJNetl.gif' -OutFile '$AssetsDir/cable_high_row_kneeling.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_high_row_kneeling.gif'
} else {
    $skip++
}

# 295. cable hip adduction (id: 0168)
if (-not (Test-Path '$AssetsDir/cable_hip_adduction.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0168-hBGWILP.gif' -OutFile '$AssetsDir/cable_hip_adduction.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_hip_adduction.gif'
} else {
    $skip++
}

# 296. cable incline bench press (id: 0169)
if (-not (Test-Path '$AssetsDir/cable_incline_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0169-Vh0GsK4.gif' -OutFile '$AssetsDir/cable_incline_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_incline_bench_press.gif'
} else {
    $skip++
}

# 297. cable incline bench row (id: 1318)
if (-not (Test-Path '$AssetsDir/cable_incline_bench_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1318-yaMIo4D.gif' -OutFile '$AssetsDir/cable_incline_bench_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_incline_bench_row.gif'
} else {
    $skip++
}

# 298. cable incline fly (id: 0171)
if (-not (Test-Path '$AssetsDir/cable_incline_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0171-tBWXbIT.gif' -OutFile '$AssetsDir/cable_incline_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_incline_fly.gif'
} else {
    $skip++
}

# 299. cable incline fly (on stability ball) (id: 0170)
if (-not (Test-Path '$AssetsDir/cable_incline_fly_on_stability_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0170-27NNGFr.gif' -OutFile '$AssetsDir/cable_incline_fly_on_stability_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_incline_fly_on_stability_ball.gif'
} else {
    $skip++
}

# 300. cable incline pushdown (id: 0172)
if (-not (Test-Path '$AssetsDir/cable_incline_pushdown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0172-1PK5Uo3.gif' -OutFile '$AssetsDir/cable_incline_pushdown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_incline_pushdown.gif'
} else {
    $skip++
}

# 301. cable incline triceps extension (id: 0173)
if (-not (Test-Path '$AssetsDir/cable_incline_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0173-Hx1WC8I.gif' -OutFile '$AssetsDir/cable_incline_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_incline_triceps_extension.gif'
} else {
    $skip++
}

# 302. cable judo flip (id: 0174)
if (-not (Test-Path '$AssetsDir/cable_judo_flip.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0174-MvQPqVW.gif' -OutFile '$AssetsDir/cable_judo_flip.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_judo_flip.gif'
} else {
    $skip++
}

# 303. cable kickback (id: 0860)
if (-not (Test-Path '$AssetsDir/cable_kickback.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0860-HEJ6DIX.gif' -OutFile '$AssetsDir/cable_kickback.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_kickback.gif'
} else {
    $skip++
}

# 304. cable kneeling crunch (id: 0175)
if (-not (Test-Path '$AssetsDir/cable_kneeling_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0175-WW95auq.gif' -OutFile '$AssetsDir/cable_kneeling_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_kneeling_crunch.gif'
} else {
    $skip++
}

# 305. cable kneeling rear delt row (with rope) (male) (id: 3697)
if (-not (Test-Path '$AssetsDir/cable_kneeling_rear_delt_row_with_rope_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3697-G61cXLk.gif' -OutFile '$AssetsDir/cable_kneeling_rear_delt_row_with_rope_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_kneeling_rear_delt_row_with_rope_male.gif'
} else {
    $skip++
}

# 306. cable kneeling triceps extension (id: 0176)
if (-not (Test-Path '$AssetsDir/cable_kneeling_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0176-KWdF2JI.gif' -OutFile '$AssetsDir/cable_kneeling_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_kneeling_triceps_extension.gif'
} else {
    $skip++
}

# 307. cable lat pulldown full range of motion (id: 2330)
if (-not (Test-Path '$AssetsDir/cable_lat_pulldown_full_range_of_motion.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2330-LEprlgG.gif' -OutFile '$AssetsDir/cable_lat_pulldown_full_range_of_motion.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_lat_pulldown_full_range_of_motion.gif'
} else {
    $skip++
}

# 308. cable lateral pulldown (with rope attachment) (id: 0177)
if (-not (Test-Path '$AssetsDir/cable_lateral_pulldown_with_rope_attachment.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0177-CuaWCmC.gif' -OutFile '$AssetsDir/cable_lateral_pulldown_with_rope_attachment.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_lateral_pulldown_with_rope_attachment.gif'
} else {
    $skip++
}

# 309. cable lateral pulldown with v-bar (id: 2616)
if (-not (Test-Path '$AssetsDir/cable_lateral_pulldown_with_v-bar.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2616-4c9BhzB.gif' -OutFile '$AssetsDir/cable_lateral_pulldown_with_v-bar.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_lateral_pulldown_with_v-bar.gif'
} else {
    $skip++
}

# 310. cable lateral raise (id: 0178)
if (-not (Test-Path '$AssetsDir/cable_lateral_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0178-goJ6ezq.gif' -OutFile '$AssetsDir/cable_lateral_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_lateral_raise.gif'
} else {
    $skip++
}

# 311. cable low fly (id: 0179)
if (-not (Test-Path '$AssetsDir/cable_low_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0179-FVmZVhk.gif' -OutFile '$AssetsDir/cable_low_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_low_fly.gif'
} else {
    $skip++
}

# 312. cable low seated row (id: 0180)
if (-not (Test-Path '$AssetsDir/cable_low_seated_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0180-hvV79Si.gif' -OutFile '$AssetsDir/cable_low_seated_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_low_seated_row.gif'
} else {
    $skip++
}

# 313. cable lying bicep curl (id: 1634)
if (-not (Test-Path '$AssetsDir/cable_lying_bicep_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1634-otqIxU4.gif' -OutFile '$AssetsDir/cable_lying_bicep_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_lying_bicep_curl.gif'
} else {
    $skip++
}

# 314. cable lying close-grip curl (id: 0182)
if (-not (Test-Path '$AssetsDir/cable_lying_close-grip_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0182-61GrD55.gif' -OutFile '$AssetsDir/cable_lying_close-grip_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_lying_close-grip_curl.gif'
} else {
    $skip++
}

# 315. cable lying extension pullover (with rope attachment) (id: 0184)
if (-not (Test-Path '$AssetsDir/cable_lying_extension_pullover_with_rope_attachment.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0184-Q2Eu1Ax.gif' -OutFile '$AssetsDir/cable_lying_extension_pullover_with_rope_attachment.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_lying_extension_pullover_with_rope_attachment.gif'
} else {
    $skip++
}

# 316. cable lying fly (id: 0185)
if (-not (Test-Path '$AssetsDir/cable_lying_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0185-lJJ7Yq8.gif' -OutFile '$AssetsDir/cable_lying_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_lying_fly.gif'
} else {
    $skip++
}

# 317. cable lying triceps extension v. 2 (id: 0186)
if (-not (Test-Path '$AssetsDir/cable_lying_triceps_extension_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0186-uxJcFUU.gif' -OutFile '$AssetsDir/cable_lying_triceps_extension_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_lying_triceps_extension_v_2.gif'
} else {
    $skip++
}

# 318. cable middle fly (id: 0188)
if (-not (Test-Path '$AssetsDir/cable_middle_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0188-xLYSdtg.gif' -OutFile '$AssetsDir/cable_middle_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_middle_fly.gif'
} else {
    $skip++
}

# 319. cable one arm bent over row (id: 0189)
if (-not (Test-Path '$AssetsDir/cable_one_arm_bent_over_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0189-EIsE3u8.gif' -OutFile '$AssetsDir/cable_one_arm_bent_over_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_one_arm_bent_over_row.gif'
} else {
    $skip++
}

# 320. cable one arm curl (id: 0190)
if (-not (Test-Path '$AssetsDir/cable_one_arm_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0190-YTur5nR.gif' -OutFile '$AssetsDir/cable_one_arm_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_one_arm_curl.gif'
} else {
    $skip++
}

# 321. cable one arm decline chest fly (id: 1262)
if (-not (Test-Path '$AssetsDir/cable_one_arm_decline_chest_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1262-w4dLzSx.gif' -OutFile '$AssetsDir/cable_one_arm_decline_chest_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_one_arm_decline_chest_fly.gif'
} else {
    $skip++
}

# 322. cable one arm fly on exercise ball (id: 1263)
if (-not (Test-Path '$AssetsDir/cable_one_arm_fly_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1263-hHy8tQG.gif' -OutFile '$AssetsDir/cable_one_arm_fly_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_one_arm_fly_on_exercise_ball.gif'
} else {
    $skip++
}

# 323. cable one arm incline fly on exercise ball (id: 1264)
if (-not (Test-Path '$AssetsDir/cable_one_arm_incline_fly_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1264-P14Dz9D.gif' -OutFile '$AssetsDir/cable_one_arm_incline_fly_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_one_arm_incline_fly_on_exercise_ball.gif'
} else {
    $skip++
}

# 324. cable one arm incline press (id: 1265)
if (-not (Test-Path '$AssetsDir/cable_one_arm_incline_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1265-GKEH6jj.gif' -OutFile '$AssetsDir/cable_one_arm_incline_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_one_arm_incline_press.gif'
} else {
    $skip++
}

# 325. cable one arm incline press on exercise ball (id: 1266)
if (-not (Test-Path '$AssetsDir/cable_one_arm_incline_press_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1266-6t00BsF.gif' -OutFile '$AssetsDir/cable_one_arm_incline_press_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_one_arm_incline_press_on_exercise_ball.gif'
} else {
    $skip++
}

# 326. cable one arm lateral bent-over (id: 0191)
if (-not (Test-Path '$AssetsDir/cable_one_arm_lateral_bent-over.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0191-dB07vDu.gif' -OutFile '$AssetsDir/cable_one_arm_lateral_bent-over.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_one_arm_lateral_bent-over.gif'
} else {
    $skip++
}

# 327. cable one arm lateral raise (id: 0192)
if (-not (Test-Path '$AssetsDir/cable_one_arm_lateral_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0192-wEulIzp.gif' -OutFile '$AssetsDir/cable_one_arm_lateral_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_one_arm_lateral_raise.gif'
} else {
    $skip++
}

# 328. cable one arm preacher curl (id: 1633)
if (-not (Test-Path '$AssetsDir/cable_one_arm_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1633-eHBlPsa.gif' -OutFile '$AssetsDir/cable_one_arm_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_one_arm_preacher_curl.gif'
} else {
    $skip++
}

# 329. cable one arm press on exercise ball (id: 1267)
if (-not (Test-Path '$AssetsDir/cable_one_arm_press_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1267-MKIelrR.gif' -OutFile '$AssetsDir/cable_one_arm_press_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_one_arm_press_on_exercise_ball.gif'
} else {
    $skip++
}

# 330. cable one arm pulldown (id: 3563)
if (-not (Test-Path '$AssetsDir/cable_one_arm_pulldown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3563-U5INZY6.gif' -OutFile '$AssetsDir/cable_one_arm_pulldown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_one_arm_pulldown.gif'
} else {
    $skip++
}

# 331. cable one arm reverse preacher curl (id: 1635)
if (-not (Test-Path '$AssetsDir/cable_one_arm_reverse_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1635-ZXnjcOQ.gif' -OutFile '$AssetsDir/cable_one_arm_reverse_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_one_arm_reverse_preacher_curl.gif'
} else {
    $skip++
}

# 332. cable one arm straight back high row (kneeling) (id: 0193)
if (-not (Test-Path '$AssetsDir/cable_one_arm_straight_back_high_row_kneeling.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0193-WrYPP2g.gif' -OutFile '$AssetsDir/cable_one_arm_straight_back_high_row_kneeling.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_one_arm_straight_back_high_row_kneeling.gif'
} else {
    $skip++
}

# 333. cable one arm tricep pushdown (id: 1723)
if (-not (Test-Path '$AssetsDir/cable_one_arm_tricep_pushdown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1723-qRZ5S1N.gif' -OutFile '$AssetsDir/cable_one_arm_tricep_pushdown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_one_arm_tricep_pushdown.gif'
} else {
    $skip++
}

# 334. cable overhead curl (id: 1636)
if (-not (Test-Path '$AssetsDir/cable_overhead_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1636-wDUqY2u.gif' -OutFile '$AssetsDir/cable_overhead_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_overhead_curl.gif'
} else {
    $skip++
}

# 335. cable overhead curl on exercise ball (id: 1637)
if (-not (Test-Path '$AssetsDir/cable_overhead_curl_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1637-ioTf098.gif' -OutFile '$AssetsDir/cable_overhead_curl_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_overhead_curl_on_exercise_ball.gif'
} else {
    $skip++
}

# 336. cable overhead triceps extension (rope attachment) (id: 0194)
if (-not (Test-Path '$AssetsDir/cable_overhead_triceps_extension_rope_attachment.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0194-2IxROQ1.gif' -OutFile '$AssetsDir/cable_overhead_triceps_extension_rope_attachment.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_overhead_triceps_extension_rope_attachment.gif'
} else {
    $skip++
}

# 337. cable palm rotational row (id: 1319)
if (-not (Test-Path '$AssetsDir/cable_palm_rotational_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1319-OmQ8w0p.gif' -OutFile '$AssetsDir/cable_palm_rotational_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_palm_rotational_row.gif'
} else {
    $skip++
}

# 338. cable preacher curl (id: 0195)
if (-not (Test-Path '$AssetsDir/cable_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0195-P2lNrGL.gif' -OutFile '$AssetsDir/cable_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_preacher_curl.gif'
} else {
    $skip++
}

# 339. cable press on exercise ball (id: 1268)
if (-not (Test-Path '$AssetsDir/cable_press_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1268-vAwm6rK.gif' -OutFile '$AssetsDir/cable_press_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_press_on_exercise_ball.gif'
} else {
    $skip++
}

# 340. cable pull through (with rope) (id: 0196)
if (-not (Test-Path '$AssetsDir/cable_pull_through_with_rope.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0196-OM46QHm.gif' -OutFile '$AssetsDir/cable_pull_through_with_rope.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_pull_through_with_rope.gif'
} else {
    $skip++
}

# 341. cable pulldown (id: 0198)
if (-not (Test-Path '$AssetsDir/cable_pulldown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0198-RVwzP10.gif' -OutFile '$AssetsDir/cable_pulldown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_pulldown.gif'
} else {
    $skip++
}

# 342. cable pulldown (pro lat bar) (id: 0197)
if (-not (Test-Path '$AssetsDir/cable_pulldown_pro_lat_bar.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0197-qdRxqCj.gif' -OutFile '$AssetsDir/cable_pulldown_pro_lat_bar.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_pulldown_pro_lat_bar.gif'
} else {
    $skip++
}

# 343. cable pulldown bicep curl (id: 1638)
if (-not (Test-Path '$AssetsDir/cable_pulldown_bicep_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1638-QTXKWPh.gif' -OutFile '$AssetsDir/cable_pulldown_bicep_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_pulldown_bicep_curl.gif'
} else {
    $skip++
}

# 344. cable pushdown (id: 0201)
if (-not (Test-Path '$AssetsDir/cable_pushdown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0201-3ZflifB.gif' -OutFile '$AssetsDir/cable_pushdown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_pushdown.gif'
} else {
    $skip++
}

# 345. cable pushdown (straight arm) v. 2 (id: 0199)
if (-not (Test-Path '$AssetsDir/cable_pushdown_straight_arm_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0199-PskORrA.gif' -OutFile '$AssetsDir/cable_pushdown_straight_arm_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_pushdown_straight_arm_v_2.gif'
} else {
    $skip++
}

# 346. cable pushdown (with rope attachment) (id: 0200)
if (-not (Test-Path '$AssetsDir/cable_pushdown_with_rope_attachment.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0200-dU605di.gif' -OutFile '$AssetsDir/cable_pushdown_with_rope_attachment.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_pushdown_with_rope_attachment.gif'
} else {
    $skip++
}

# 347. cable rear delt row (stirrups) (id: 0202)
if (-not (Test-Path '$AssetsDir/cable_rear_delt_row_stirrups.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0202-yUdIGNs.gif' -OutFile '$AssetsDir/cable_rear_delt_row_stirrups.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_rear_delt_row_stirrups.gif'
} else {
    $skip++
}

# 348. cable rear delt row (with rope) (id: 0203)
if (-not (Test-Path '$AssetsDir/cable_rear_delt_row_with_rope.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0203-wqNPGCg.gif' -OutFile '$AssetsDir/cable_rear_delt_row_with_rope.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_rear_delt_row_with_rope.gif'
} else {
    $skip++
}

# 349. cable rear drive (id: 0204)
if (-not (Test-Path '$AssetsDir/cable_rear_drive.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0204-c3QQLPi.gif' -OutFile '$AssetsDir/cable_rear_drive.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_rear_drive.gif'
} else {
    $skip++
}

# 350. cable rear pulldown (id: 0205)
if (-not (Test-Path '$AssetsDir/cable_rear_pulldown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0205-SpsOSXk.gif' -OutFile '$AssetsDir/cable_rear_pulldown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_rear_pulldown.gif'
} else {
    $skip++
}

# 351. cable reverse crunch (id: 0873)
if (-not (Test-Path '$AssetsDir/cable_reverse_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0873-RqOtqD7.gif' -OutFile '$AssetsDir/cable_reverse_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_reverse_crunch.gif'
} else {
    $skip++
}

# 352. cable reverse curl (id: 0206)
if (-not (Test-Path '$AssetsDir/cable_reverse_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0206-eOG0r6v.gif' -OutFile '$AssetsDir/cable_reverse_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_reverse_curl.gif'
} else {
    $skip++
}

# 353. cable reverse grip triceps pushdown (sz-bar) (with arm blaster) (id: 2406)
if (-not (Test-Path '$AssetsDir/cable_reverse_grip_triceps_pushdown_sz-bar_with_arm_blaster.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2406-ThKP69G.gif' -OutFile '$AssetsDir/cable_reverse_grip_triceps_pushdown_sz-bar_with_arm_blaster.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_reverse_grip_triceps_pushdown_sz-bar_with_arm_blaster.gif'
} else {
    $skip++
}

# 354. cable reverse one arm curl (id: 1413)
if (-not (Test-Path '$AssetsDir/cable_reverse_one_arm_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1413-gVlnLIJ.gif' -OutFile '$AssetsDir/cable_reverse_one_arm_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_reverse_one_arm_curl.gif'
} else {
    $skip++
}

# 355. cable reverse preacher curl (id: 0209)
if (-not (Test-Path '$AssetsDir/cable_reverse_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0209-IwX5NqK.gif' -OutFile '$AssetsDir/cable_reverse_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_reverse_preacher_curl.gif'
} else {
    $skip++
}

# 356. cable reverse wrist curl (id: 0210)
if (-not (Test-Path '$AssetsDir/cable_reverse_wrist_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0210-eYmsEPR.gif' -OutFile '$AssetsDir/cable_reverse_wrist_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_reverse_wrist_curl.gif'
} else {
    $skip++
}

# 357. cable reverse-grip pushdown (id: 0207)
if (-not (Test-Path '$AssetsDir/cable_reverse-grip_pushdown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0207-VjYliFZ.gif' -OutFile '$AssetsDir/cable_reverse-grip_pushdown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_reverse-grip_pushdown.gif'
} else {
    $skip++
}

# 358. cable reverse-grip straight back seated high row (id: 0208)
if (-not (Test-Path '$AssetsDir/cable_reverse-grip_straight_back_seated_high_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0208-PNtsX17.gif' -OutFile '$AssetsDir/cable_reverse-grip_straight_back_seated_high_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_reverse-grip_straight_back_seated_high_row.gif'
} else {
    $skip++
}

# 359. cable rope crossover seated row (id: 1320)
if (-not (Test-Path '$AssetsDir/cable_rope_crossover_seated_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1320-UFGF6gk.gif' -OutFile '$AssetsDir/cable_rope_crossover_seated_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_rope_crossover_seated_row.gif'
} else {
    $skip++
}

# 360. cable rope elevated seated row (id: 1321)
if (-not (Test-Path '$AssetsDir/cable_rope_elevated_seated_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1321-c8oybX6.gif' -OutFile '$AssetsDir/cable_rope_elevated_seated_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_rope_elevated_seated_row.gif'
} else {
    $skip++
}

# 361. cable rope extension incline bench row (id: 1322)
if (-not (Test-Path '$AssetsDir/cable_rope_extension_incline_bench_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1322-MgKwAAo.gif' -OutFile '$AssetsDir/cable_rope_extension_incline_bench_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_rope_extension_incline_bench_row.gif'
} else {
    $skip++
}

# 362. cable rope hammer preacher curl (id: 1639)
if (-not (Test-Path '$AssetsDir/cable_rope_hammer_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1639-PcPe0P5.gif' -OutFile '$AssetsDir/cable_rope_hammer_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_rope_hammer_preacher_curl.gif'
} else {
    $skip++
}

# 363. cable rope high pulley overhead tricep extension (id: 1724)
if (-not (Test-Path '$AssetsDir/cable_rope_high_pulley_overhead_tricep_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1724-NN8nSNT.gif' -OutFile '$AssetsDir/cable_rope_high_pulley_overhead_tricep_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_rope_high_pulley_overhead_tricep_extension.gif'
} else {
    $skip++
}

# 364. cable rope incline tricep extension (id: 1725)
if (-not (Test-Path '$AssetsDir/cable_rope_incline_tricep_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1725-ZujAdR9.gif' -OutFile '$AssetsDir/cable_rope_incline_tricep_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_rope_incline_tricep_extension.gif'
} else {
    $skip++
}

# 365. cable rope lying on floor tricep extension (id: 1726)
if (-not (Test-Path '$AssetsDir/cable_rope_lying_on_floor_tricep_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1726-U3ffHlY.gif' -OutFile '$AssetsDir/cable_rope_lying_on_floor_tricep_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_rope_lying_on_floor_tricep_extension.gif'
} else {
    $skip++
}

# 366. cable rope one arm hammer preacher curl (id: 1640)
if (-not (Test-Path '$AssetsDir/cable_rope_one_arm_hammer_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1640-4hATdoB.gif' -OutFile '$AssetsDir/cable_rope_one_arm_hammer_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_rope_one_arm_hammer_preacher_curl.gif'
} else {
    $skip++
}

# 367. cable rope seated row (id: 1323)
if (-not (Test-Path '$AssetsDir/cable_rope_seated_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1323-SJqRxOt.gif' -OutFile '$AssetsDir/cable_rope_seated_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_rope_seated_row.gif'
} else {
    $skip++
}

# 368. cable russian twists (on stability ball) (id: 0211)
if (-not (Test-Path '$AssetsDir/cable_russian_twists_on_stability_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0211-d9Xaxq6.gif' -OutFile '$AssetsDir/cable_russian_twists_on_stability_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_russian_twists_on_stability_ball.gif'
} else {
    $skip++
}

# 369. cable seated chest press (id: 2144)
if (-not (Test-Path '$AssetsDir/cable_seated_chest_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2144-nIR4Rwl.gif' -OutFile '$AssetsDir/cable_seated_chest_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_seated_chest_press.gif'
} else {
    $skip++
}

# 370. cable seated crunch (id: 0212)
if (-not (Test-Path '$AssetsDir/cable_seated_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0212-8xUv4J7.gif' -OutFile '$AssetsDir/cable_seated_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_seated_crunch.gif'
} else {
    $skip++
}

# 371. cable seated curl (id: 1641)
if (-not (Test-Path '$AssetsDir/cable_seated_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1641-8oYqOt9.gif' -OutFile '$AssetsDir/cable_seated_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_seated_curl.gif'
} else {
    $skip++
}

# 372. cable seated high row (v-bar) (id: 0213)
if (-not (Test-Path '$AssetsDir/cable_seated_high_row_v-bar.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0213-pwt0pnM.gif' -OutFile '$AssetsDir/cable_seated_high_row_v-bar.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_seated_high_row_v-bar.gif'
} else {
    $skip++
}

# 373. cable seated one arm alternate row (id: 0214)
if (-not (Test-Path '$AssetsDir/cable_seated_one_arm_alternate_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0214-vpp9Ku2.gif' -OutFile '$AssetsDir/cable_seated_one_arm_alternate_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_seated_one_arm_alternate_row.gif'
} else {
    $skip++
}

# 374. cable seated one arm concentration curl (id: 1642)
if (-not (Test-Path '$AssetsDir/cable_seated_one_arm_concentration_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1642-rZ80Gbp.gif' -OutFile '$AssetsDir/cable_seated_one_arm_concentration_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_seated_one_arm_concentration_curl.gif'
} else {
    $skip++
}

# 375. cable seated overhead curl (id: 1643)
if (-not (Test-Path '$AssetsDir/cable_seated_overhead_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1643-DpWMFP5.gif' -OutFile '$AssetsDir/cable_seated_overhead_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_seated_overhead_curl.gif'
} else {
    $skip++
}

# 376. cable seated rear lateral raise (id: 0215)
if (-not (Test-Path '$AssetsDir/cable_seated_rear_lateral_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0215-x825CZm.gif' -OutFile '$AssetsDir/cable_seated_rear_lateral_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_seated_rear_lateral_raise.gif'
} else {
    $skip++
}

# 377. cable seated row (id: 0861)
if (-not (Test-Path '$AssetsDir/cable_seated_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0861-fUBheHs.gif' -OutFile '$AssetsDir/cable_seated_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_seated_row.gif'
} else {
    $skip++
}

# 378. cable seated shoulder internal rotation (id: 0216)
if (-not (Test-Path '$AssetsDir/cable_seated_shoulder_internal_rotation.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0216-YPoVrBi.gif' -OutFile '$AssetsDir/cable_seated_shoulder_internal_rotation.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_seated_shoulder_internal_rotation.gif'
} else {
    $skip++
}

# 379. cable seated twist (id: 2399)
if (-not (Test-Path '$AssetsDir/cable_seated_twist.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2399-UEjSrKI.gif' -OutFile '$AssetsDir/cable_seated_twist.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_seated_twist.gif'
} else {
    $skip++
}

# 380. cable seated wide-grip row (id: 0218)
if (-not (Test-Path '$AssetsDir/cable_seated_wide-grip_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0218-qcY50ZD.gif' -OutFile '$AssetsDir/cable_seated_wide-grip_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_seated_wide-grip_row.gif'
} else {
    $skip++
}

# 381. cable shoulder press (id: 0219)
if (-not (Test-Path '$AssetsDir/cable_shoulder_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0219-PzQanLE.gif' -OutFile '$AssetsDir/cable_shoulder_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_shoulder_press.gif'
} else {
    $skip++
}

# 382. cable shrug (id: 0220)
if (-not (Test-Path '$AssetsDir/cable_shrug.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0220-Eg98Ft9.gif' -OutFile '$AssetsDir/cable_shrug.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_shrug.gif'
} else {
    $skip++
}

# 383. cable side bend (id: 0222)
if (-not (Test-Path '$AssetsDir/cable_side_bend.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0222-wPypxFY.gif' -OutFile '$AssetsDir/cable_side_bend.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_side_bend.gif'
} else {
    $skip++
}

# 384. cable side bend crunch (bosu ball) (id: 0221)
if (-not (Test-Path '$AssetsDir/cable_side_bend_crunch_bosu_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0221-qatbkEd.gif' -OutFile '$AssetsDir/cable_side_bend_crunch_bosu_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_side_bend_crunch_bosu_ball.gif'
} else {
    $skip++
}

# 385. cable side crunch (id: 0223)
if (-not (Test-Path '$AssetsDir/cable_side_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0223-q2ADGqV.gif' -OutFile '$AssetsDir/cable_side_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_side_crunch.gif'
} else {
    $skip++
}

# 386. cable squat row (with rope attachment) (id: 1717)
if (-not (Test-Path '$AssetsDir/cable_squat_row_with_rope_attachment.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1717-f7fnAIB.gif' -OutFile '$AssetsDir/cable_squat_row_with_rope_attachment.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_squat_row_with_rope_attachment.gif'
} else {
    $skip++
}

# 387. cable squatting curl (id: 1644)
if (-not (Test-Path '$AssetsDir/cable_squatting_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1644-3XFdb1Z.gif' -OutFile '$AssetsDir/cable_squatting_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_squatting_curl.gif'
} else {
    $skip++
}

# 388. cable standing back wrist curl (id: 0224)
if (-not (Test-Path '$AssetsDir/cable_standing_back_wrist_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0224-VhX2JdE.gif' -OutFile '$AssetsDir/cable_standing_back_wrist_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_standing_back_wrist_curl.gif'
} else {
    $skip++
}

# 389. cable standing calf raise (id: 1375)
if (-not (Test-Path '$AssetsDir/cable_standing_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1375-yl2IYyy.gif' -OutFile '$AssetsDir/cable_standing_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_standing_calf_raise.gif'
} else {
    $skip++
}

# 390. cable standing cross-over high reverse fly (id: 0225)
if (-not (Test-Path '$AssetsDir/cable_standing_cross-over_high_reverse_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0225-P5p0j8B.gif' -OutFile '$AssetsDir/cable_standing_cross-over_high_reverse_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_standing_cross-over_high_reverse_fly.gif'
} else {
    $skip++
}

# 391. cable standing crunch (id: 0226)
if (-not (Test-Path '$AssetsDir/cable_standing_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0226-jpgqxiS.gif' -OutFile '$AssetsDir/cable_standing_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_standing_crunch.gif'
} else {
    $skip++
}

# 392. cable standing crunch (with rope attachment) (id: 0874)
if (-not (Test-Path '$AssetsDir/cable_standing_crunch_with_rope_attachment.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0874-XU3ePuv.gif' -OutFile '$AssetsDir/cable_standing_crunch_with_rope_attachment.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_standing_crunch_with_rope_attachment.gif'
} else {
    $skip++
}

# 393. cable standing fly (id: 0227)
if (-not (Test-Path '$AssetsDir/cable_standing_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0227-Pr9Rhf4.gif' -OutFile '$AssetsDir/cable_standing_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_standing_fly.gif'
} else {
    $skip++
}

# 394. cable standing hip extension (id: 0228)
if (-not (Test-Path '$AssetsDir/cable_standing_hip_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0228-Kpajagk.gif' -OutFile '$AssetsDir/cable_standing_hip_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_standing_hip_extension.gif'
} else {
    $skip++
}

# 395. cable standing inner curl (id: 0229)
if (-not (Test-Path '$AssetsDir/cable_standing_inner_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0229-YwnI4ja.gif' -OutFile '$AssetsDir/cable_standing_inner_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_standing_inner_curl.gif'
} else {
    $skip++
}

# 396. cable standing lift (id: 0230)
if (-not (Test-Path '$AssetsDir/cable_standing_lift.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0230-qFpAkpP.gif' -OutFile '$AssetsDir/cable_standing_lift.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_standing_lift.gif'
} else {
    $skip++
}

# 397. cable standing one arm triceps extension (id: 0231)
if (-not (Test-Path '$AssetsDir/cable_standing_one_arm_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0231-sYCcnon.gif' -OutFile '$AssetsDir/cable_standing_one_arm_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_standing_one_arm_triceps_extension.gif'
} else {
    $skip++
}

# 398. cable standing one leg calf raise (id: 1376)
if (-not (Test-Path '$AssetsDir/cable_standing_one_leg_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1376-fgc9Xdl.gif' -OutFile '$AssetsDir/cable_standing_one_leg_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_standing_one_leg_calf_raise.gif'
} else {
    $skip++
}

# 399. cable standing pulldown (with rope) (id: 0232)
if (-not (Test-Path '$AssetsDir/cable_standing_pulldown_with_rope.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0232-CvPn9WV.gif' -OutFile '$AssetsDir/cable_standing_pulldown_with_rope.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_standing_pulldown_with_rope.gif'
} else {
    $skip++
}

# 400. cable standing rear delt row (with rope) (id: 0233)
if (-not (Test-Path '$AssetsDir/cable_standing_rear_delt_row_with_rope.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0233-ZfyAGhK.gif' -OutFile '$AssetsDir/cable_standing_rear_delt_row_with_rope.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_standing_rear_delt_row_with_rope.gif'
} else {
    $skip++
}

# 401. cable standing reverse grip one arm overhead tricep extension (id: 1727)
if (-not (Test-Path '$AssetsDir/cable_standing_reverse_grip_one_arm_overhead_tricep_extensio.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1727-i11JWU7.gif' -OutFile '$AssetsDir/cable_standing_reverse_grip_one_arm_overhead_tricep_extensio.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_standing_reverse_grip_one_arm_overhead_tricep_extensio.gif'
} else {
    $skip++
}

# 402. cable standing row (v-bar) (id: 0234)
if (-not (Test-Path '$AssetsDir/cable_standing_row_v-bar.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0234-4f8RXP8.gif' -OutFile '$AssetsDir/cable_standing_row_v-bar.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_standing_row_v-bar.gif'
} else {
    $skip++
}

# 403. cable standing shoulder external rotation (id: 0235)
if (-not (Test-Path '$AssetsDir/cable_standing_shoulder_external_rotation.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0235-FWdVhcW.gif' -OutFile '$AssetsDir/cable_standing_shoulder_external_rotation.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_standing_shoulder_external_rotation.gif'
} else {
    $skip++
}

# 404. cable standing twist row (v-bar) (id: 0236)
if (-not (Test-Path '$AssetsDir/cable_standing_twist_row_v-bar.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0236-JOZhu2h.gif' -OutFile '$AssetsDir/cable_standing_twist_row_v-bar.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_standing_twist_row_v-bar.gif'
} else {
    $skip++
}

# 405. cable standing up straight crossovers (id: 1269)
if (-not (Test-Path '$AssetsDir/cable_standing_up_straight_crossovers.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1269-UKWTJWR.gif' -OutFile '$AssetsDir/cable_standing_up_straight_crossovers.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_standing_up_straight_crossovers.gif'
} else {
    $skip++
}

# 406. cable straight arm pulldown (id: 0238)
if (-not (Test-Path '$AssetsDir/cable_straight_arm_pulldown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0238-x69MAlq.gif' -OutFile '$AssetsDir/cable_straight_arm_pulldown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_straight_arm_pulldown.gif'
} else {
    $skip++
}

# 407. cable straight arm pulldown (with rope) (id: 0237)
if (-not (Test-Path '$AssetsDir/cable_straight_arm_pulldown_with_rope.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0237-DT14T9T.gif' -OutFile '$AssetsDir/cable_straight_arm_pulldown_with_rope.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_straight_arm_pulldown_with_rope.gif'
} else {
    $skip++
}

# 408. cable straight back seated row (id: 0239)
if (-not (Test-Path '$AssetsDir/cable_straight_back_seated_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0239-Tq6gbK6.gif' -OutFile '$AssetsDir/cable_straight_back_seated_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_straight_back_seated_row.gif'
} else {
    $skip++
}

# 409. cable supine reverse fly (id: 0240)
if (-not (Test-Path '$AssetsDir/cable_supine_reverse_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0240-PQcUlDi.gif' -OutFile '$AssetsDir/cable_supine_reverse_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_supine_reverse_fly.gif'
} else {
    $skip++
}

# 410. cable thibaudeau kayak row (id: 2464)
if (-not (Test-Path '$AssetsDir/cable_thibaudeau_kayak_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2464-ZgwWBoC.gif' -OutFile '$AssetsDir/cable_thibaudeau_kayak_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_thibaudeau_kayak_row.gif'
} else {
    $skip++
}

# 411. cable triceps pushdown (v-bar) (id: 0241)
if (-not (Test-Path '$AssetsDir/cable_triceps_pushdown_v-bar.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0241-gAwDzB3.gif' -OutFile '$AssetsDir/cable_triceps_pushdown_v-bar.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_triceps_pushdown_v-bar.gif'
} else {
    $skip++
}

# 412. cable triceps pushdown (v-bar) (with arm blaster) (id: 2405)
if (-not (Test-Path '$AssetsDir/cable_triceps_pushdown_v-bar_with_arm_blaster.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2405-OxJk1fg.gif' -OutFile '$AssetsDir/cable_triceps_pushdown_v-bar_with_arm_blaster.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_triceps_pushdown_v-bar_with_arm_blaster.gif'
} else {
    $skip++
}

# 413. cable tuck reverse crunch (id: 0242)
if (-not (Test-Path '$AssetsDir/cable_tuck_reverse_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0242-TXtXc84.gif' -OutFile '$AssetsDir/cable_tuck_reverse_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_tuck_reverse_crunch.gif'
} else {
    $skip++
}

# 414. cable twist (id: 0243)
if (-not (Test-Path '$AssetsDir/cable_twist.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0243-aVs3BR3.gif' -OutFile '$AssetsDir/cable_twist.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_twist.gif'
} else {
    $skip++
}

# 415. cable twist (up-down) (id: 0862)
if (-not (Test-Path '$AssetsDir/cable_twist_up-down.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0862-fhZQPlV.gif' -OutFile '$AssetsDir/cable_twist_up-down.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_twist_up-down.gif'
} else {
    $skip++
}

# 416. cable twisting pull (id: 0244)
if (-not (Test-Path '$AssetsDir/cable_twisting_pull.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0244-zCgxPbV.gif' -OutFile '$AssetsDir/cable_twisting_pull.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_twisting_pull.gif'
} else {
    $skip++
}

# 417. cable two arm curl on incline bench (id: 1645)
if (-not (Test-Path '$AssetsDir/cable_two_arm_curl_on_incline_bench.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1645-H9y3Dkr.gif' -OutFile '$AssetsDir/cable_two_arm_curl_on_incline_bench.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_two_arm_curl_on_incline_bench.gif'
} else {
    $skip++
}

# 418. cable two arm tricep kickback (id: 1728)
if (-not (Test-Path '$AssetsDir/cable_two_arm_tricep_kickback.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1728-vvNjDJS.gif' -OutFile '$AssetsDir/cable_two_arm_tricep_kickback.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_two_arm_tricep_kickback.gif'
} else {
    $skip++
}

# 419. cable underhand pulldown (id: 0245)
if (-not (Test-Path '$AssetsDir/cable_underhand_pulldown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0245-xBYcQHj.gif' -OutFile '$AssetsDir/cable_underhand_pulldown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_underhand_pulldown.gif'
} else {
    $skip++
}

# 420. cable upper chest crossovers (id: 1270)
if (-not (Test-Path '$AssetsDir/cable_upper_chest_crossovers.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1270-j7XMAyn.gif' -OutFile '$AssetsDir/cable_upper_chest_crossovers.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_upper_chest_crossovers.gif'
} else {
    $skip++
}

# 421. cable upper row (id: 1324)
if (-not (Test-Path '$AssetsDir/cable_upper_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1324-PQStVXH.gif' -OutFile '$AssetsDir/cable_upper_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_upper_row.gif'
} else {
    $skip++
}

# 422. cable upright row (id: 0246)
if (-not (Test-Path '$AssetsDir/cable_upright_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0246-cALKspW.gif' -OutFile '$AssetsDir/cable_upright_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_upright_row.gif'
} else {
    $skip++
}

# 423. cable wide grip rear pulldown behind neck (id: 1325)
if (-not (Test-Path '$AssetsDir/cable_wide_grip_rear_pulldown_behind_neck.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1325-CmEr4pM.gif' -OutFile '$AssetsDir/cable_wide_grip_rear_pulldown_behind_neck.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_wide_grip_rear_pulldown_behind_neck.gif'
} else {
    $skip++
}

# 424. cable wrist curl (id: 0247)
if (-not (Test-Path '$AssetsDir/cable_wrist_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0247-LrV4s90.gif' -OutFile '$AssetsDir/cable_wrist_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cable_wrist_curl.gif'
} else {
    $skip++
}

# 425. calf push stretch with hands against wall (id: 1407)
if (-not (Test-Path '$AssetsDir/calf_push_stretch_with_hands_against_wall.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1407-PzNxakt.gif' -OutFile '$AssetsDir/calf_push_stretch_with_hands_against_wall.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: calf_push_stretch_with_hands_against_wall.gif'
} else {
    $skip++
}

# 426. calf stretch with hands against wall (id: 1377)
if (-not (Test-Path '$AssetsDir/calf_stretch_with_hands_against_wall.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1377-m0tCHqc.gif' -OutFile '$AssetsDir/calf_stretch_with_hands_against_wall.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: calf_stretch_with_hands_against_wall.gif'
} else {
    $skip++
}

# 427. calf stretch with rope (id: 1378)
if (-not (Test-Path '$AssetsDir/calf_stretch_with_rope.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1378-1LVFcEn.gif' -OutFile '$AssetsDir/calf_stretch_with_rope.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: calf_stretch_with_rope.gif'
} else {
    $skip++
}

# 428. cambered bar lying row (id: 0248)
if (-not (Test-Path '$AssetsDir/cambered_bar_lying_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0248-R5swFnc.gif' -OutFile '$AssetsDir/cambered_bar_lying_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cambered_bar_lying_row.gif'
} else {
    $skip++
}

# 429. captains chair straight leg raise (id: 2963)
if (-not (Test-Path '$AssetsDir/captains_chair_straight_leg_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2963-weoDEpH.gif' -OutFile '$AssetsDir/captains_chair_straight_leg_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: captains_chair_straight_leg_raise.gif'
} else {
    $skip++
}

# 430. chair leg extended stretch (id: 1548)
if (-not (Test-Path '$AssetsDir/chair_leg_extended_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1548-xGgAGPm.gif' -OutFile '$AssetsDir/chair_leg_extended_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: chair_leg_extended_stretch.gif'
} else {
    $skip++
}

# 431. chest and front of shoulder stretch (id: 1271)
if (-not (Test-Path '$AssetsDir/chest_and_front_of_shoulder_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1271-Uto7l43.gif' -OutFile '$AssetsDir/chest_and_front_of_shoulder_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: chest_and_front_of_shoulder_stretch.gif'
} else {
    $skip++
}

# 432. chest dip (id: 0251)
if (-not (Test-Path '$AssetsDir/chest_dip.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0251-9WTm7dq.gif' -OutFile '$AssetsDir/chest_dip.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: chest_dip.gif'
} else {
    $skip++
}

# 433. chest dip (on dip-pull-up cage) (id: 1430)
if (-not (Test-Path '$AssetsDir/chest_dip_on_dip-pull-up_cage.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1430-XgWyAiA.gif' -OutFile '$AssetsDir/chest_dip_on_dip-pull-up_cage.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: chest_dip_on_dip-pull-up_cage.gif'
} else {
    $skip++
}

# 434. chest dip on straight bar (id: 2462)
if (-not (Test-Path '$AssetsDir/chest_dip_on_straight_bar.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2462-LQFOrMn.gif' -OutFile '$AssetsDir/chest_dip_on_straight_bar.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: chest_dip_on_straight_bar.gif'
} else {
    $skip++
}

# 435. chest stretch with exercise ball (id: 1272)
if (-not (Test-Path '$AssetsDir/chest_stretch_with_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1272-ykA5tU7.gif' -OutFile '$AssetsDir/chest_stretch_with_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: chest_stretch_with_exercise_ball.gif'
} else {
    $skip++
}

# 436. chest tap push-up (male) (id: 3216)
if (-not (Test-Path '$AssetsDir/chest_tap_push-up_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3216-7E06s6d.gif' -OutFile '$AssetsDir/chest_tap_push-up_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: chest_tap_push-up_male.gif'
} else {
    $skip++
}

# 437. chin-up (id: 1326)
if (-not (Test-Path '$AssetsDir/chin-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1326-T2mxWqc.gif' -OutFile '$AssetsDir/chin-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: chin-up.gif'
} else {
    $skip++
}

# 438. chin-ups (narrow parallel grip) (id: 0253)
if (-not (Test-Path '$AssetsDir/chin-ups_narrow_parallel_grip.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0253-G70mEAJ.gif' -OutFile '$AssetsDir/chin-ups_narrow_parallel_grip.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: chin-ups_narrow_parallel_grip.gif'
} else {
    $skip++
}

# 439. circles knee stretch (id: 0257)
if (-not (Test-Path '$AssetsDir/circles_knee_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0257-X7jbxra.gif' -OutFile '$AssetsDir/circles_knee_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: circles_knee_stretch.gif'
} else {
    $skip++
}

# 440. clap push up (id: 1273)
if (-not (Test-Path '$AssetsDir/clap_push_up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1273-wigSg76.gif' -OutFile '$AssetsDir/clap_push_up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: clap_push_up.gif'
} else {
    $skip++
}

# 441. clock push-up (id: 0258)
if (-not (Test-Path '$AssetsDir/clock_push-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0258-CMAxnsG.gif' -OutFile '$AssetsDir/clock_push-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: clock_push-up.gif'
} else {
    $skip++
}

# 442. close grip chin-up (id: 1327)
if (-not (Test-Path '$AssetsDir/close_grip_chin-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1327-VnfUNW7.gif' -OutFile '$AssetsDir/close_grip_chin-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: close_grip_chin-up.gif'
} else {
    $skip++
}

# 443. close-grip push-up (id: 0259)
if (-not (Test-Path '$AssetsDir/close-grip_push-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0259-x6KpKpq.gif' -OutFile '$AssetsDir/close-grip_push-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: close-grip_push-up.gif'
} else {
    $skip++
}

# 444. close-grip push-up (on knees) (id: 2398)
if (-not (Test-Path '$AssetsDir/close-grip_push-up_on_knees.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2398-v3vLFW0.gif' -OutFile '$AssetsDir/close-grip_push-up_on_knees.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: close-grip_push-up_on_knees.gif'
} else {
    $skip++
}

# 445. cocoons (id: 0260)
if (-not (Test-Path '$AssetsDir/cocoons.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0260-SLKj2pX.gif' -OutFile '$AssetsDir/cocoons.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cocoons.gif'
} else {
    $skip++
}

# 446. crab twist toe touch (id: 1468)
if (-not (Test-Path '$AssetsDir/crab_twist_toe_touch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1468-xgsGFVM.gif' -OutFile '$AssetsDir/crab_twist_toe_touch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: crab_twist_toe_touch.gif'
} else {
    $skip++
}

# 447. cross body crunch (id: 0262)
if (-not (Test-Path '$AssetsDir/cross_body_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0262-rbu5UUb.gif' -OutFile '$AssetsDir/cross_body_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cross_body_crunch.gif'
} else {
    $skip++
}

# 448. crunch (hands overhead) (id: 0267)
if (-not (Test-Path '$AssetsDir/crunch_hands_overhead.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0267-kjJ3VoQ.gif' -OutFile '$AssetsDir/crunch_hands_overhead.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: crunch_hands_overhead.gif'
} else {
    $skip++
}

# 449. crunch (on stability ball) (id: 0271)
if (-not (Test-Path '$AssetsDir/crunch_on_stability_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0271-MCUhf1F.gif' -OutFile '$AssetsDir/crunch_on_stability_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: crunch_on_stability_ball.gif'
} else {
    $skip++
}

# 450. crunch (on stability ball, arms straight) (id: 0272)
if (-not (Test-Path '$AssetsDir/crunch_on_stability_ball_arms_straight.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0272-Sn8wxAI.gif' -OutFile '$AssetsDir/crunch_on_stability_ball_arms_straight.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: crunch_on_stability_ball_arms_straight.gif'
} else {
    $skip++
}

# 451. crunch floor (id: 0274)
if (-not (Test-Path '$AssetsDir/crunch_floor.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0274-TFqbd8t.gif' -OutFile '$AssetsDir/crunch_floor.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: crunch_floor.gif'
} else {
    $skip++
}

# 452. curl-up (id: 3016)
if (-not (Test-Path '$AssetsDir/curl-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3016-g2oKspu.gif' -OutFile '$AssetsDir/curl-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: curl-up.gif'
} else {
    $skip++
}

# 453. curtsey squat (id: 3769)
if (-not (Test-Path '$AssetsDir/curtsey_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3769-gUjqdei.gif' -OutFile '$AssetsDir/curtsey_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: curtsey_squat.gif'
} else {
    $skip++
}

# 454. cycle cross trainer (id: 2331)
if (-not (Test-Path '$AssetsDir/cycle_cross_trainer.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2331-XSCHmiI.gif' -OutFile '$AssetsDir/cycle_cross_trainer.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: cycle_cross_trainer.gif'
} else {
    $skip++
}

# 455. dead bug (id: 0276)
if (-not (Test-Path '$AssetsDir/dead_bug.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0276-iny3m5y.gif' -OutFile '$AssetsDir/dead_bug.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dead_bug.gif'
} else {
    $skip++
}

# 456. decline crunch (id: 0277)
if (-not (Test-Path '$AssetsDir/decline_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0277-9Ap7miY.gif' -OutFile '$AssetsDir/decline_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: decline_crunch.gif'
} else {
    $skip++
}

# 457. decline push-up (id: 0279)
if (-not (Test-Path '$AssetsDir/decline_push-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0279-i5cEhka.gif' -OutFile '$AssetsDir/decline_push-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: decline_push-up.gif'
} else {
    $skip++
}

# 458. decline sit-up (id: 0282)
if (-not (Test-Path '$AssetsDir/decline_sit-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0282-QLL2gdc.gif' -OutFile '$AssetsDir/decline_sit-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: decline_sit-up.gif'
} else {
    $skip++
}

# 459. deep push up (id: 1274)
if (-not (Test-Path '$AssetsDir/deep_push_up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1274-vptOQ4N.gif' -OutFile '$AssetsDir/deep_push_up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: deep_push_up.gif'
} else {
    $skip++
}

# 460. diamond push-up (id: 0283)
if (-not (Test-Path '$AssetsDir/diamond_push-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0283-soIB2rj.gif' -OutFile '$AssetsDir/diamond_push-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: diamond_push-up.gif'
} else {
    $skip++
}

# 461. donkey calf raise (id: 0284)
if (-not (Test-Path '$AssetsDir/donkey_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0284-u5ESqzH.gif' -OutFile '$AssetsDir/donkey_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: donkey_calf_raise.gif'
} else {
    $skip++
}

# 462. drop push up (id: 1275)
if (-not (Test-Path '$AssetsDir/drop_push_up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1275-Q497lAE.gif' -OutFile '$AssetsDir/drop_push_up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: drop_push_up.gif'
} else {
    $skip++
}

# 463. dumbbell alternate biceps curl (id: 0285)
if (-not (Test-Path '$AssetsDir/dumbbell_alternate_biceps_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0285-BU15nH4.gif' -OutFile '$AssetsDir/dumbbell_alternate_biceps_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_alternate_biceps_curl.gif'
} else {
    $skip++
}

# 464. dumbbell alternate biceps curl (with arm blaster) (id: 2403)
if (-not (Test-Path '$AssetsDir/dumbbell_alternate_biceps_curl_with_arm_blaster.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2403-CfKsRbG.gif' -OutFile '$AssetsDir/dumbbell_alternate_biceps_curl_with_arm_blaster.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_alternate_biceps_curl_with_arm_blaster.gif'
} else {
    $skip++
}

# 465. dumbbell alternate hammer preacher curl (id: 1646)
if (-not (Test-Path '$AssetsDir/dumbbell_alternate_hammer_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1646-fy7Tgy4.gif' -OutFile '$AssetsDir/dumbbell_alternate_hammer_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_alternate_hammer_preacher_curl.gif'
} else {
    $skip++
}

# 466. dumbbell alternate preacher curl (id: 1647)
if (-not (Test-Path '$AssetsDir/dumbbell_alternate_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1647-NlfIbzq.gif' -OutFile '$AssetsDir/dumbbell_alternate_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_alternate_preacher_curl.gif'
} else {
    $skip++
}

# 467. dumbbell alternate seated hammer curl (id: 1648)
if (-not (Test-Path '$AssetsDir/dumbbell_alternate_seated_hammer_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1648-6em2Dxj.gif' -OutFile '$AssetsDir/dumbbell_alternate_seated_hammer_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_alternate_seated_hammer_curl.gif'
} else {
    $skip++
}

# 468. dumbbell alternate side press (id: 0286)
if (-not (Test-Path '$AssetsDir/dumbbell_alternate_side_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0286-izMnLqz.gif' -OutFile '$AssetsDir/dumbbell_alternate_side_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_alternate_side_press.gif'
} else {
    $skip++
}

# 469. dumbbell alternating bicep curl with leg raised on exercise ball (id: 1649)
if (-not (Test-Path '$AssetsDir/dumbbell_alternating_bicep_curl_with_leg_raised_on_exercise_.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1649-Zwiw7XR.gif' -OutFile '$AssetsDir/dumbbell_alternating_bicep_curl_with_leg_raised_on_exercise_.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_alternating_bicep_curl_with_leg_raised_on_exercise_.gif'
} else {
    $skip++
}

# 470. dumbbell alternating seated bicep curl on exercise ball (id: 1650)
if (-not (Test-Path '$AssetsDir/dumbbell_alternating_seated_bicep_curl_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1650-J74XlNf.gif' -OutFile '$AssetsDir/dumbbell_alternating_seated_bicep_curl_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_alternating_seated_bicep_curl_on_exercise_ball.gif'
} else {
    $skip++
}

# 471. dumbbell arnold press (id: 2137)
if (-not (Test-Path '$AssetsDir/dumbbell_arnold_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2137-Xy4jlWA.gif' -OutFile '$AssetsDir/dumbbell_arnold_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_arnold_press.gif'
} else {
    $skip++
}

# 472. dumbbell arnold press v. 2 (id: 0287)
if (-not (Test-Path '$AssetsDir/dumbbell_arnold_press_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0287-eOrFCnx.gif' -OutFile '$AssetsDir/dumbbell_arnold_press_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_arnold_press_v_2.gif'
} else {
    $skip++
}

# 473. dumbbell around pullover (id: 0288)
if (-not (Test-Path '$AssetsDir/dumbbell_around_pullover.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0288-vi8EhoE.gif' -OutFile '$AssetsDir/dumbbell_around_pullover.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_around_pullover.gif'
} else {
    $skip++
}

# 474. dumbbell bench press (id: 0289)
if (-not (Test-Path '$AssetsDir/dumbbell_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0289-SpYC0Kp.gif' -OutFile '$AssetsDir/dumbbell_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_bench_press.gif'
} else {
    $skip++
}

# 475. dumbbell bench seated press (id: 0290)
if (-not (Test-Path '$AssetsDir/dumbbell_bench_seated_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0290-3d7wHyd.gif' -OutFile '$AssetsDir/dumbbell_bench_seated_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_bench_seated_press.gif'
} else {
    $skip++
}

# 476. dumbbell bench squat (id: 0291)
if (-not (Test-Path '$AssetsDir/dumbbell_bench_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0291-mnzcrIB.gif' -OutFile '$AssetsDir/dumbbell_bench_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_bench_squat.gif'
} else {
    $skip++
}

# 477. dumbbell bent over row (id: 0293)
if (-not (Test-Path '$AssetsDir/dumbbell_bent_over_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0293-BJ0Hz5L.gif' -OutFile '$AssetsDir/dumbbell_bent_over_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_bent_over_row.gif'
} else {
    $skip++
}

# 478. dumbbell bicep curl lunge with bowling motion (id: 1651)
if (-not (Test-Path '$AssetsDir/dumbbell_bicep_curl_lunge_with_bowling_motion.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1651-1VpF8db.gif' -OutFile '$AssetsDir/dumbbell_bicep_curl_lunge_with_bowling_motion.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_bicep_curl_lunge_with_bowling_motion.gif'
} else {
    $skip++
}

# 479. dumbbell bicep curl on exercise ball with leg raised (id: 1652)
if (-not (Test-Path '$AssetsDir/dumbbell_bicep_curl_on_exercise_ball_with_leg_raised.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1652-2NImIAG.gif' -OutFile '$AssetsDir/dumbbell_bicep_curl_on_exercise_ball_with_leg_raised.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_bicep_curl_on_exercise_ball_with_leg_raised.gif'
} else {
    $skip++
}

# 480. dumbbell bicep curl with stork stance (id: 1653)
if (-not (Test-Path '$AssetsDir/dumbbell_bicep_curl_with_stork_stance.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1653-uSkDMYl.gif' -OutFile '$AssetsDir/dumbbell_bicep_curl_with_stork_stance.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_bicep_curl_with_stork_stance.gif'
} else {
    $skip++
}

# 481. dumbbell biceps curl (id: 0294)
if (-not (Test-Path '$AssetsDir/dumbbell_biceps_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0294-NbVPDMW.gif' -OutFile '$AssetsDir/dumbbell_biceps_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_biceps_curl.gif'
} else {
    $skip++
}

# 482. dumbbell biceps curl (with arm blaster) (id: 2401)
if (-not (Test-Path '$AssetsDir/dumbbell_biceps_curl_with_arm_blaster.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2401-nlJsbkW.gif' -OutFile '$AssetsDir/dumbbell_biceps_curl_with_arm_blaster.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_biceps_curl_with_arm_blaster.gif'
} else {
    $skip++
}

# 483. dumbbell biceps curl reverse (id: 1654)
if (-not (Test-Path '$AssetsDir/dumbbell_biceps_curl_reverse.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1654-nFc4FyV.gif' -OutFile '$AssetsDir/dumbbell_biceps_curl_reverse.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_biceps_curl_reverse.gif'
} else {
    $skip++
}

# 484. dumbbell biceps curl squat (id: 1655)
if (-not (Test-Path '$AssetsDir/dumbbell_biceps_curl_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1655-niXESDw.gif' -OutFile '$AssetsDir/dumbbell_biceps_curl_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_biceps_curl_squat.gif'
} else {
    $skip++
}

# 485. dumbbell biceps curl v sit on bosu ball (id: 1656)
if (-not (Test-Path '$AssetsDir/dumbbell_biceps_curl_v_sit_on_bosu_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1656-H1XAdpk.gif' -OutFile '$AssetsDir/dumbbell_biceps_curl_v_sit_on_bosu_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_biceps_curl_v_sit_on_bosu_ball.gif'
} else {
    $skip++
}

# 486. dumbbell burpee (id: 1201)
if (-not (Test-Path '$AssetsDir/dumbbell_burpee.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1201-0JtKWum.gif' -OutFile '$AssetsDir/dumbbell_burpee.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_burpee.gif'
} else {
    $skip++
}

# 487. dumbbell clean (id: 0295)
if (-not (Test-Path '$AssetsDir/dumbbell_clean.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0295-7Hg55JG.gif' -OutFile '$AssetsDir/dumbbell_clean.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_clean.gif'
} else {
    $skip++
}

# 488. dumbbell close grip press (id: 1731)
if (-not (Test-Path '$AssetsDir/dumbbell_close_grip_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1731-7jGOBF3.gif' -OutFile '$AssetsDir/dumbbell_close_grip_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_close_grip_press.gif'
} else {
    $skip++
}

# 489. dumbbell close-grip press (id: 0296)
if (-not (Test-Path '$AssetsDir/dumbbell_close-grip_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0296-RxayqAZ.gif' -OutFile '$AssetsDir/dumbbell_close-grip_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_close-grip_press.gif'
} else {
    $skip++
}

# 490. dumbbell concentration curl (id: 0297)
if (-not (Test-Path '$AssetsDir/dumbbell_concentration_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0297-gvsWLQw.gif' -OutFile '$AssetsDir/dumbbell_concentration_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_concentration_curl.gif'
} else {
    $skip++
}

# 491. dumbbell contralateral forward lunge (id: 3635)
if (-not (Test-Path '$AssetsDir/dumbbell_contralateral_forward_lunge.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3635-ecl28tP.gif' -OutFile '$AssetsDir/dumbbell_contralateral_forward_lunge.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_contralateral_forward_lunge.gif'
} else {
    $skip++
}

# 492. dumbbell cross body hammer curl (id: 0298)
if (-not (Test-Path '$AssetsDir/dumbbell_cross_body_hammer_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0298-Qyk5J3p.gif' -OutFile '$AssetsDir/dumbbell_cross_body_hammer_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_cross_body_hammer_curl.gif'
} else {
    $skip++
}

# 493. dumbbell cross body hammer curl v. 2 (id: 1657)
if (-not (Test-Path '$AssetsDir/dumbbell_cross_body_hammer_curl_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1657-HDYiZcY.gif' -OutFile '$AssetsDir/dumbbell_cross_body_hammer_curl_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_cross_body_hammer_curl_v_2.gif'
} else {
    $skip++
}

# 494. dumbbell cuban press (id: 0299)
if (-not (Test-Path '$AssetsDir/dumbbell_cuban_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0299-QfAKy1G.gif' -OutFile '$AssetsDir/dumbbell_cuban_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_cuban_press.gif'
} else {
    $skip++
}

# 495. dumbbell cuban press v. 2 (id: 2136)
if (-not (Test-Path '$AssetsDir/dumbbell_cuban_press_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2136-BqgCRif.gif' -OutFile '$AssetsDir/dumbbell_cuban_press_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_cuban_press_v_2.gif'
} else {
    $skip++
}

# 496. dumbbell deadlift (id: 0300)
if (-not (Test-Path '$AssetsDir/dumbbell_deadlift.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0300-nUwVh7b.gif' -OutFile '$AssetsDir/dumbbell_deadlift.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_deadlift.gif'
} else {
    $skip++
}

# 497. dumbbell decline bench press (id: 0301)
if (-not (Test-Path '$AssetsDir/dumbbell_decline_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0301-DwhEmmE.gif' -OutFile '$AssetsDir/dumbbell_decline_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_decline_bench_press.gif'
} else {
    $skip++
}

# 498. dumbbell decline fly (id: 0302)
if (-not (Test-Path '$AssetsDir/dumbbell_decline_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0302-xXm4nYq.gif' -OutFile '$AssetsDir/dumbbell_decline_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_decline_fly.gif'
} else {
    $skip++
}

# 499. dumbbell decline hammer press (id: 0303)
if (-not (Test-Path '$AssetsDir/dumbbell_decline_hammer_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0303-1qrWgZ2.gif' -OutFile '$AssetsDir/dumbbell_decline_hammer_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_decline_hammer_press.gif'
} else {
    $skip++
}

# 500. dumbbell decline one arm fly (id: 1276)
if (-not (Test-Path '$AssetsDir/dumbbell_decline_one_arm_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1276-NL6YBwN.gif' -OutFile '$AssetsDir/dumbbell_decline_one_arm_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_decline_one_arm_fly.gif'
} else {
    $skip++
}

# 501. dumbbell decline one arm hammer press (id: 1617)
if (-not (Test-Path '$AssetsDir/dumbbell_decline_one_arm_hammer_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1617-SHUMp5H.gif' -OutFile '$AssetsDir/dumbbell_decline_one_arm_hammer_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_decline_one_arm_hammer_press.gif'
} else {
    $skip++
}

# 502. dumbbell decline shrug (id: 0305)
if (-not (Test-Path '$AssetsDir/dumbbell_decline_shrug.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0305-cwsAI4G.gif' -OutFile '$AssetsDir/dumbbell_decline_shrug.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_decline_shrug.gif'
} else {
    $skip++
}

# 503. dumbbell decline shrug v. 2 (id: 0304)
if (-not (Test-Path '$AssetsDir/dumbbell_decline_shrug_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0304-bRlbdjK.gif' -OutFile '$AssetsDir/dumbbell_decline_shrug_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_decline_shrug_v_2.gif'
} else {
    $skip++
}

# 504. dumbbell decline triceps extension (id: 0306)
if (-not (Test-Path '$AssetsDir/dumbbell_decline_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0306-OTgkHwR.gif' -OutFile '$AssetsDir/dumbbell_decline_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_decline_triceps_extension.gif'
} else {
    $skip++
}

# 505. dumbbell decline twist fly (id: 0307)
if (-not (Test-Path '$AssetsDir/dumbbell_decline_twist_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0307-reFHapa.gif' -OutFile '$AssetsDir/dumbbell_decline_twist_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_decline_twist_fly.gif'
} else {
    $skip++
}

# 506. dumbbell finger curls (id: 1437)
if (-not (Test-Path '$AssetsDir/dumbbell_finger_curls.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1437-mtXengz.gif' -OutFile '$AssetsDir/dumbbell_finger_curls.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_finger_curls.gif'
} else {
    $skip++
}

# 507. dumbbell fly (id: 0308)
if (-not (Test-Path '$AssetsDir/dumbbell_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0308-yz9nUhF.gif' -OutFile '$AssetsDir/dumbbell_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_fly.gif'
} else {
    $skip++
}

# 508. dumbbell fly on exercise ball (id: 1277)
if (-not (Test-Path '$AssetsDir/dumbbell_fly_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1277-Lt3iWnf.gif' -OutFile '$AssetsDir/dumbbell_fly_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_fly_on_exercise_ball.gif'
} else {
    $skip++
}

# 509. dumbbell forward lunge triceps extension (id: 1732)
if (-not (Test-Path '$AssetsDir/dumbbell_forward_lunge_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1732-XalXcvM.gif' -OutFile '$AssetsDir/dumbbell_forward_lunge_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_forward_lunge_triceps_extension.gif'
} else {
    $skip++
}

# 510. dumbbell front raise (id: 0310)
if (-not (Test-Path '$AssetsDir/dumbbell_front_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0310-3eGE2JC.gif' -OutFile '$AssetsDir/dumbbell_front_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_front_raise.gif'
} else {
    $skip++
}

# 511. dumbbell front raise v. 2 (id: 0309)
if (-not (Test-Path '$AssetsDir/dumbbell_front_raise_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0309-Rr7S3yg.gif' -OutFile '$AssetsDir/dumbbell_front_raise_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_front_raise_v_2.gif'
} else {
    $skip++
}

# 512. dumbbell full can lateral raise (id: 0311)
if (-not (Test-Path '$AssetsDir/dumbbell_full_can_lateral_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0311-AQ0mC4Y.gif' -OutFile '$AssetsDir/dumbbell_full_can_lateral_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_full_can_lateral_raise.gif'
} else {
    $skip++
}

# 513. dumbbell goblet squat (id: 1760)
if (-not (Test-Path '$AssetsDir/dumbbell_goblet_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1760-yn8yg1r.gif' -OutFile '$AssetsDir/dumbbell_goblet_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_goblet_squat.gif'
} else {
    $skip++
}

# 514. dumbbell hammer curl (id: 0313)
if (-not (Test-Path '$AssetsDir/dumbbell_hammer_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0313-slDvUAU.gif' -OutFile '$AssetsDir/dumbbell_hammer_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_hammer_curl.gif'
} else {
    $skip++
}

# 515. dumbbell hammer curl on exercise ball (id: 1659)
if (-not (Test-Path '$AssetsDir/dumbbell_hammer_curl_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1659-fY68AyX.gif' -OutFile '$AssetsDir/dumbbell_hammer_curl_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_hammer_curl_on_exercise_ball.gif'
} else {
    $skip++
}

# 516. dumbbell hammer curl v. 2 (id: 0312)
if (-not (Test-Path '$AssetsDir/dumbbell_hammer_curl_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0312-2NpxjC1.gif' -OutFile '$AssetsDir/dumbbell_hammer_curl_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_hammer_curl_v_2.gif'
} else {
    $skip++
}

# 517. dumbbell hammer curls (with arm blaster) (id: 2402)
if (-not (Test-Path '$AssetsDir/dumbbell_hammer_curls_with_arm_blaster.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2402-GNhAeJ0.gif' -OutFile '$AssetsDir/dumbbell_hammer_curls_with_arm_blaster.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_hammer_curls_with_arm_blaster.gif'
} else {
    $skip++
}

# 518. dumbbell high curl (id: 1664)
if (-not (Test-Path '$AssetsDir/dumbbell_high_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1664-qAmNMJY.gif' -OutFile '$AssetsDir/dumbbell_high_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_high_curl.gif'
} else {
    $skip++
}

# 519. dumbbell incline alternate press (id: 3545)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_alternate_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3545-TVdivgY.gif' -OutFile '$AssetsDir/dumbbell_incline_alternate_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_alternate_press.gif'
} else {
    $skip++
}

# 520. dumbbell incline bench press (id: 0314)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0314-ns0SIbU.gif' -OutFile '$AssetsDir/dumbbell_incline_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_bench_press.gif'
} else {
    $skip++
}

# 521. dumbbell incline biceps curl (id: 0315)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_biceps_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0315-F3xgbjF.gif' -OutFile '$AssetsDir/dumbbell_incline_biceps_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_biceps_curl.gif'
} else {
    $skip++
}

# 522. dumbbell incline breeding (id: 0316)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_breeding.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0316-B3Rxp6L.gif' -OutFile '$AssetsDir/dumbbell_incline_breeding.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_breeding.gif'
} else {
    $skip++
}

# 523. dumbbell incline curl (id: 0318)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0318-ae9UoXQ.gif' -OutFile '$AssetsDir/dumbbell_incline_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_curl.gif'
} else {
    $skip++
}

# 524. dumbbell incline curl v. 2 (id: 0317)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_curl_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0317-RaflbWD.gif' -OutFile '$AssetsDir/dumbbell_incline_curl_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_curl_v_2.gif'
} else {
    $skip++
}

# 525. dumbbell incline fly (id: 0319)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0319-ESOd5Pl.gif' -OutFile '$AssetsDir/dumbbell_incline_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_fly.gif'
} else {
    $skip++
}

# 526. dumbbell incline fly on exercise ball (id: 1278)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_fly_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1278-HYe1ZqR.gif' -OutFile '$AssetsDir/dumbbell_incline_fly_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_fly_on_exercise_ball.gif'
} else {
    $skip++
}

# 527. dumbbell incline hammer curl (id: 0320)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_hammer_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0320-ByX0WxV.gif' -OutFile '$AssetsDir/dumbbell_incline_hammer_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_hammer_curl.gif'
} else {
    $skip++
}

# 528. dumbbell incline hammer press (id: 0321)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_hammer_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0321-PG1kcIb.gif' -OutFile '$AssetsDir/dumbbell_incline_hammer_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_hammer_press.gif'
} else {
    $skip++
}

# 529. dumbbell incline hammer press on exercise ball (id: 1618)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_hammer_press_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1618-wkgnGfb.gif' -OutFile '$AssetsDir/dumbbell_incline_hammer_press_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_hammer_press_on_exercise_ball.gif'
} else {
    $skip++
}

# 530. dumbbell incline inner biceps curl (id: 0322)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_inner_biceps_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0322-LCtQPn8.gif' -OutFile '$AssetsDir/dumbbell_incline_inner_biceps_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_inner_biceps_curl.gif'
} else {
    $skip++
}

# 531. dumbbell incline one arm fly (id: 1279)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_one_arm_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1279-Gw2HFvW.gif' -OutFile '$AssetsDir/dumbbell_incline_one_arm_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_one_arm_fly.gif'
} else {
    $skip++
}

# 532. dumbbell incline one arm fly on exercise ball (id: 1280)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_one_arm_fly_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1280-LLNh6q5.gif' -OutFile '$AssetsDir/dumbbell_incline_one_arm_fly_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_one_arm_fly_on_exercise_ball.gif'
} else {
    $skip++
}

# 533. dumbbell incline one arm hammer press (id: 1619)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_one_arm_hammer_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1619-LL1UiTX.gif' -OutFile '$AssetsDir/dumbbell_incline_one_arm_hammer_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_one_arm_hammer_press.gif'
} else {
    $skip++
}

# 534. dumbbell incline one arm hammer press on exercise ball (id: 1620)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_one_arm_hammer_press_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1620-jDnrkar.gif' -OutFile '$AssetsDir/dumbbell_incline_one_arm_hammer_press_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_one_arm_hammer_press_on_exercise_ball.gif'
} else {
    $skip++
}

# 535. dumbbell incline one arm lateral raise (id: 0323)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_one_arm_lateral_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0323-aTNKZiC.gif' -OutFile '$AssetsDir/dumbbell_incline_one_arm_lateral_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_one_arm_lateral_raise.gif'
} else {
    $skip++
}

# 536. dumbbell incline one arm press (id: 1281)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_one_arm_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1281-rDAiRf9.gif' -OutFile '$AssetsDir/dumbbell_incline_one_arm_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_one_arm_press.gif'
} else {
    $skip++
}

# 537. dumbbell incline one arm press on exercise ball (id: 1282)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_one_arm_press_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1282-Bg5JKSH.gif' -OutFile '$AssetsDir/dumbbell_incline_one_arm_press_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_one_arm_press_on_exercise_ball.gif'
} else {
    $skip++
}

# 538. dumbbell incline palm-in press (id: 0324)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_palm-in_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0324-OVLmUuL.gif' -OutFile '$AssetsDir/dumbbell_incline_palm-in_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_palm-in_press.gif'
} else {
    $skip++
}

# 539. dumbbell incline press on exercise ball (id: 1283)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_press_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1283-bfiHMpI.gif' -OutFile '$AssetsDir/dumbbell_incline_press_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_press_on_exercise_ball.gif'
} else {
    $skip++
}

# 540. dumbbell incline raise (id: 0325)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0325-nxW6BkN.gif' -OutFile '$AssetsDir/dumbbell_incline_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_raise.gif'
} else {
    $skip++
}

# 541. dumbbell incline rear lateral raise (id: 0326)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_rear_lateral_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0326-vYk8lqw.gif' -OutFile '$AssetsDir/dumbbell_incline_rear_lateral_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_rear_lateral_raise.gif'
} else {
    $skip++
}

# 542. dumbbell incline row (id: 0327)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0327-7vG5o25.gif' -OutFile '$AssetsDir/dumbbell_incline_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_row.gif'
} else {
    $skip++
}

# 543. dumbbell incline shoulder raise (id: 0328)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_shoulder_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0328-6e2DcYX.gif' -OutFile '$AssetsDir/dumbbell_incline_shoulder_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_shoulder_raise.gif'
} else {
    $skip++
}

# 544. dumbbell incline shrug (id: 0329)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_shrug.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0329-JymLInS.gif' -OutFile '$AssetsDir/dumbbell_incline_shrug.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_shrug.gif'
} else {
    $skip++
}

# 545. dumbbell incline t-raise (id: 3542)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_t-raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3542-jgbvVJ0.gif' -OutFile '$AssetsDir/dumbbell_incline_t-raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_t-raise.gif'
} else {
    $skip++
}

# 546. dumbbell incline triceps extension (id: 0330)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0330-OVIKwsd.gif' -OutFile '$AssetsDir/dumbbell_incline_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_triceps_extension.gif'
} else {
    $skip++
}

# 547. dumbbell incline twisted flyes (id: 0331)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_twisted_flyes.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0331-1PLE8e9.gif' -OutFile '$AssetsDir/dumbbell_incline_twisted_flyes.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_twisted_flyes.gif'
} else {
    $skip++
}

# 548. dumbbell incline two arm extension (id: 1733)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_two_arm_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1733-U7D9Fx3.gif' -OutFile '$AssetsDir/dumbbell_incline_two_arm_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_two_arm_extension.gif'
} else {
    $skip++
}

# 549. dumbbell incline y-raise (id: 3541)
if (-not (Test-Path '$AssetsDir/dumbbell_incline_y-raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3541-PbzNu7c.gif' -OutFile '$AssetsDir/dumbbell_incline_y-raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_incline_y-raise.gif'
} else {
    $skip++
}

# 550. dumbbell iron cross (id: 0332)
if (-not (Test-Path '$AssetsDir/dumbbell_iron_cross.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0332-cALkHHX.gif' -OutFile '$AssetsDir/dumbbell_iron_cross.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_iron_cross.gif'
} else {
    $skip++
}

# 551. dumbbell kickback (id: 0333)
if (-not (Test-Path '$AssetsDir/dumbbell_kickback.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0333-W6PxUkg.gif' -OutFile '$AssetsDir/dumbbell_kickback.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_kickback.gif'
} else {
    $skip++
}

# 552. dumbbell kickbacks on exercise ball (id: 1734)
if (-not (Test-Path '$AssetsDir/dumbbell_kickbacks_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1734-cAvTaSg.gif' -OutFile '$AssetsDir/dumbbell_kickbacks_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_kickbacks_on_exercise_ball.gif'
} else {
    $skip++
}

# 553. dumbbell kneeling bicep curl exercise ball (id: 1660)
if (-not (Test-Path '$AssetsDir/dumbbell_kneeling_bicep_curl_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1660-2JCuFTU.gif' -OutFile '$AssetsDir/dumbbell_kneeling_bicep_curl_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_kneeling_bicep_curl_exercise_ball.gif'
} else {
    $skip++
}

# 554. dumbbell lateral raise (id: 0334)
if (-not (Test-Path '$AssetsDir/dumbbell_lateral_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0334-DsgkuIt.gif' -OutFile '$AssetsDir/dumbbell_lateral_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lateral_raise.gif'
} else {
    $skip++
}

# 555. dumbbell lateral to front raise (id: 0335)
if (-not (Test-Path '$AssetsDir/dumbbell_lateral_to_front_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0335-xMjBKwn.gif' -OutFile '$AssetsDir/dumbbell_lateral_to_front_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lateral_to_front_raise.gif'
} else {
    $skip++
}

# 556. dumbbell lunge (id: 0336)
if (-not (Test-Path '$AssetsDir/dumbbell_lunge.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0336-RRWFUcw.gif' -OutFile '$AssetsDir/dumbbell_lunge.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lunge.gif'
} else {
    $skip++
}

# 557. dumbbell lunge with bicep curl (id: 1658)
if (-not (Test-Path '$AssetsDir/dumbbell_lunge_with_bicep_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1658-Mz6lLcW.gif' -OutFile '$AssetsDir/dumbbell_lunge_with_bicep_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lunge_with_bicep_curl.gif'
} else {
    $skip++
}

# 558. dumbbell lying extension (across face) (id: 0337)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_extension_across_face.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0337-L2V5Nan.gif' -OutFile '$AssetsDir/dumbbell_lying_extension_across_face.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_extension_across_face.gif'
} else {
    $skip++
}

# 559. dumbbell lying alternate extension (id: 1729)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_alternate_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1729-NfP83rA.gif' -OutFile '$AssetsDir/dumbbell_lying_alternate_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_alternate_extension.gif'
} else {
    $skip++
}

# 560. dumbbell lying elbow press (id: 0338)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_elbow_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0338-eOCOwIR.gif' -OutFile '$AssetsDir/dumbbell_lying_elbow_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_elbow_press.gif'
} else {
    $skip++
}

# 561. dumbbell lying external shoulder rotation (id: 0863)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_external_shoulder_rotation.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0863-bmBf7LN.gif' -OutFile '$AssetsDir/dumbbell_lying_external_shoulder_rotation.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_external_shoulder_rotation.gif'
} else {
    $skip++
}

# 562. dumbbell lying femoral (id: 0339)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_femoral.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0339-FkBIE6a.gif' -OutFile '$AssetsDir/dumbbell_lying_femoral.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_femoral.gif'
} else {
    $skip++
}

# 563. dumbbell lying hammer press (id: 0340)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_hammer_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0340-7gdLIXa.gif' -OutFile '$AssetsDir/dumbbell_lying_hammer_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_hammer_press.gif'
} else {
    $skip++
}

# 564. dumbbell lying on floor rear delt raise (id: 2470)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_on_floor_rear_delt_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2470-Ion0XWz.gif' -OutFile '$AssetsDir/dumbbell_lying_on_floor_rear_delt_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_on_floor_rear_delt_raise.gif'
} else {
    $skip++
}

# 565. dumbbell lying one arm deltoid rear (id: 0341)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_one_arm_deltoid_rear.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0341-gSw59a4.gif' -OutFile '$AssetsDir/dumbbell_lying_one_arm_deltoid_rear.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_one_arm_deltoid_rear.gif'
} else {
    $skip++
}

# 566. dumbbell lying one arm press (id: 0343)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_one_arm_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0343-zGSIWQi.gif' -OutFile '$AssetsDir/dumbbell_lying_one_arm_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_one_arm_press.gif'
} else {
    $skip++
}

# 567. dumbbell lying one arm press v. 2 (id: 0342)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_one_arm_press_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0342-K3dIO25.gif' -OutFile '$AssetsDir/dumbbell_lying_one_arm_press_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_one_arm_press_v_2.gif'
} else {
    $skip++
}

# 568. dumbbell lying one arm pronated triceps extension (id: 0344)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_one_arm_pronated_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0344-wyaqzOS.gif' -OutFile '$AssetsDir/dumbbell_lying_one_arm_pronated_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_one_arm_pronated_triceps_extension.gif'
} else {
    $skip++
}

# 569. dumbbell lying one arm rear lateral raise (id: 0345)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_one_arm_rear_lateral_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0345-KwFGiEP.gif' -OutFile '$AssetsDir/dumbbell_lying_one_arm_rear_lateral_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_one_arm_rear_lateral_raise.gif'
} else {
    $skip++
}

# 570. dumbbell lying one arm supinated triceps extension (id: 0346)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_one_arm_supinated_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0346-zZlORz6.gif' -OutFile '$AssetsDir/dumbbell_lying_one_arm_supinated_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_one_arm_supinated_triceps_extension.gif'
} else {
    $skip++
}

# 571. dumbbell lying pronation (id: 0347)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_pronation.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0347-mym4hJo.gif' -OutFile '$AssetsDir/dumbbell_lying_pronation.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_pronation.gif'
} else {
    $skip++
}

# 572. dumbbell lying pronation on floor (id: 2705)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_pronation_on_floor.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2705-7RWNjiB.gif' -OutFile '$AssetsDir/dumbbell_lying_pronation_on_floor.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_pronation_on_floor.gif'
} else {
    $skip++
}

# 573. dumbbell lying pullover on exercise ball (id: 1284)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_pullover_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1284-iK59oEA.gif' -OutFile '$AssetsDir/dumbbell_lying_pullover_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_pullover_on_exercise_ball.gif'
} else {
    $skip++
}

# 574. dumbbell lying rear delt row (id: 1328)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_rear_delt_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1328-XUUD0Fs.gif' -OutFile '$AssetsDir/dumbbell_lying_rear_delt_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_rear_delt_row.gif'
} else {
    $skip++
}

# 575. dumbbell lying rear lateral raise (id: 0348)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_rear_lateral_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0348-53Ttlck.gif' -OutFile '$AssetsDir/dumbbell_lying_rear_lateral_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_rear_lateral_raise.gif'
} else {
    $skip++
}

# 576. dumbbell lying single extension (id: 1735)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_single_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1735-6MfS53i.gif' -OutFile '$AssetsDir/dumbbell_lying_single_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_single_extension.gif'
} else {
    $skip++
}

# 577. dumbbell lying supination (id: 0349)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_supination.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0349-M2Pm3zj.gif' -OutFile '$AssetsDir/dumbbell_lying_supination.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_supination.gif'
} else {
    $skip++
}

# 578. dumbbell lying supination on floor (id: 2706)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_supination_on_floor.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2706-rEhi2o5.gif' -OutFile '$AssetsDir/dumbbell_lying_supination_on_floor.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_supination_on_floor.gif'
} else {
    $skip++
}

# 579. dumbbell lying supine biceps curl (id: 1661)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_supine_biceps_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1661-XVzF3iZ.gif' -OutFile '$AssetsDir/dumbbell_lying_supine_biceps_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_supine_biceps_curl.gif'
} else {
    $skip++
}

# 580. dumbbell lying supine curl (id: 0350)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_supine_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0350-KUaZst7.gif' -OutFile '$AssetsDir/dumbbell_lying_supine_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_supine_curl.gif'
} else {
    $skip++
}

# 581. dumbbell lying triceps extension (id: 0351)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0351-mpKZGWz.gif' -OutFile '$AssetsDir/dumbbell_lying_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_triceps_extension.gif'
} else {
    $skip++
}

# 582. dumbbell lying wide curl (id: 1662)
if (-not (Test-Path '$AssetsDir/dumbbell_lying_wide_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1662-qm9veZw.gif' -OutFile '$AssetsDir/dumbbell_lying_wide_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_lying_wide_curl.gif'
} else {
    $skip++
}

# 583. dumbbell neutral grip bench press (id: 0352)
if (-not (Test-Path '$AssetsDir/dumbbell_neutral_grip_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0352-pP8wP2P.gif' -OutFile '$AssetsDir/dumbbell_neutral_grip_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_neutral_grip_bench_press.gif'
} else {
    $skip++
}

# 584. dumbbell one arm bench fly (id: 1285)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_bench_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1285-o5Jsk92.gif' -OutFile '$AssetsDir/dumbbell_one_arm_bench_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_bench_fly.gif'
} else {
    $skip++
}

# 585. dumbbell one arm bent-over row (id: 0292)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_bent-over_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0292-C0MA9bC.gif' -OutFile '$AssetsDir/dumbbell_one_arm_bent-over_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_bent-over_row.gif'
} else {
    $skip++
}

# 586. dumbbell one arm chest fly on exercise ball (id: 1286)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_chest_fly_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1286-Bpkf41o.gif' -OutFile '$AssetsDir/dumbbell_one_arm_chest_fly_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_chest_fly_on_exercise_ball.gif'
} else {
    $skip++
}

# 587. dumbbell one arm concentration curl (on stability ball) (id: 0353)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_concentration_curl_on_stability_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0353-k5IpyHg.gif' -OutFile '$AssetsDir/dumbbell_one_arm_concentration_curl_on_stability_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_concentration_curl_on_stability_ball.gif'
} else {
    $skip++
}

# 588. dumbbell one arm decline chest press (id: 1287)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_decline_chest_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1287-REGM1dE.gif' -OutFile '$AssetsDir/dumbbell_one_arm_decline_chest_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_decline_chest_press.gif'
} else {
    $skip++
}

# 589. dumbbell one arm fly on exercise ball (id: 1288)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_fly_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1288-Am02iPd.gif' -OutFile '$AssetsDir/dumbbell_one_arm_fly_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_fly_on_exercise_ball.gif'
} else {
    $skip++
}

# 590. dumbbell one arm french press on exercise ball (id: 1736)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_french_press_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1736-ziFKQXP.gif' -OutFile '$AssetsDir/dumbbell_one_arm_french_press_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_french_press_on_exercise_ball.gif'
} else {
    $skip++
}

# 591. dumbbell one arm hammer preacher curl (id: 1663)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_hammer_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1663-4dF3maG.gif' -OutFile '$AssetsDir/dumbbell_one_arm_hammer_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_hammer_preacher_curl.gif'
} else {
    $skip++
}

# 592. dumbbell one arm hammer press on exercise ball (id: 1621)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_hammer_press_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1621-VYmYxK5.gif' -OutFile '$AssetsDir/dumbbell_one_arm_hammer_press_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_hammer_press_on_exercise_ball.gif'
} else {
    $skip++
}

# 593. dumbbell one arm incline chest press (id: 1289)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_incline_chest_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1289-PDaMuyV.gif' -OutFile '$AssetsDir/dumbbell_one_arm_incline_chest_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_incline_chest_press.gif'
} else {
    $skip++
}

# 594. dumbbell one arm kickback (id: 0354)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_kickback.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0354-bQy2Eni.gif' -OutFile '$AssetsDir/dumbbell_one_arm_kickback.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_kickback.gif'
} else {
    $skip++
}

# 595. dumbbell one arm lateral raise (id: 0355)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_lateral_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0355-n5cWCsI.gif' -OutFile '$AssetsDir/dumbbell_one_arm_lateral_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_lateral_raise.gif'
} else {
    $skip++
}

# 596. dumbbell one arm lateral raise with support (id: 0356)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_lateral_raise_with_support.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0356-Yg7MJAT.gif' -OutFile '$AssetsDir/dumbbell_one_arm_lateral_raise_with_support.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_lateral_raise_with_support.gif'
} else {
    $skip++
}

# 597. dumbbell one arm press on exercise ball (id: 1290)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_press_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1290-QZFv5ui.gif' -OutFile '$AssetsDir/dumbbell_one_arm_press_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_press_on_exercise_ball.gif'
} else {
    $skip++
}

# 598. dumbbell one arm prone curl (id: 1665)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_prone_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1665-JWjujiY.gif' -OutFile '$AssetsDir/dumbbell_one_arm_prone_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_prone_curl.gif'
} else {
    $skip++
}

# 599. dumbbell one arm prone hammer curl (id: 1666)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_prone_hammer_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1666-LIGZSTA.gif' -OutFile '$AssetsDir/dumbbell_one_arm_prone_hammer_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_prone_hammer_curl.gif'
} else {
    $skip++
}

# 600. dumbbell one arm pullover on exercise ball (id: 1291)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_pullover_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1291-bQHPBU3.gif' -OutFile '$AssetsDir/dumbbell_one_arm_pullover_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_pullover_on_exercise_ball.gif'
} else {
    $skip++
}

# 601. dumbbell one arm reverse wrist curl (id: 0358)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_reverse_wrist_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0358-BwSNDGt.gif' -OutFile '$AssetsDir/dumbbell_one_arm_reverse_wrist_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_reverse_wrist_curl.gif'
} else {
    $skip++
}

# 602. dumbbell one arm reverse fly (with support) (id: 0359)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_reverse_fly_with_support.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0359-e25F58f.gif' -OutFile '$AssetsDir/dumbbell_one_arm_reverse_fly_with_support.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_reverse_fly_with_support.gif'
} else {
    $skip++
}

# 603. dumbbell one arm reverse grip press (id: 1622)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_reverse_grip_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1622-Ze7MoIb.gif' -OutFile '$AssetsDir/dumbbell_one_arm_reverse_grip_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_reverse_grip_press.gif'
} else {
    $skip++
}

# 604. dumbbell one arm reverse preacher curl (id: 1414)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_reverse_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1414-bWxq4op.gif' -OutFile '$AssetsDir/dumbbell_one_arm_reverse_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_reverse_preacher_curl.gif'
} else {
    $skip++
}

# 605. dumbbell one arm reverse spider curl (id: 1667)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_reverse_spider_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1667-VdLZ3nB.gif' -OutFile '$AssetsDir/dumbbell_one_arm_reverse_spider_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_reverse_spider_curl.gif'
} else {
    $skip++
}

# 606. dumbbell one arm seated bicep curl on exercise ball (id: 1668)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_seated_bicep_curl_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1668-s999Hdo.gif' -OutFile '$AssetsDir/dumbbell_one_arm_seated_bicep_curl_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_seated_bicep_curl_on_exercise_ball.gif'
} else {
    $skip++
}

# 607. dumbbell one arm seated hammer curl (id: 1669)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_seated_hammer_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1669-jK2hZ6n.gif' -OutFile '$AssetsDir/dumbbell_one_arm_seated_hammer_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_seated_hammer_curl.gif'
} else {
    $skip++
}

# 608. dumbbell one arm seated neutral wrist curl (id: 1415)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_seated_neutral_wrist_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1415-YtaCTYl.gif' -OutFile '$AssetsDir/dumbbell_one_arm_seated_neutral_wrist_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_seated_neutral_wrist_curl.gif'
} else {
    $skip++
}

# 609. dumbbell one arm shoulder press (id: 0361)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_shoulder_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0361-84RyJf8.gif' -OutFile '$AssetsDir/dumbbell_one_arm_shoulder_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_shoulder_press.gif'
} else {
    $skip++
}

# 610. dumbbell one arm shoulder press v. 2 (id: 0360)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_shoulder_press_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0360-1TkiAFK.gif' -OutFile '$AssetsDir/dumbbell_one_arm_shoulder_press_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_shoulder_press_v_2.gif'
} else {
    $skip++
}

# 611. dumbbell one arm snatch (id: 3888)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_snatch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3888-6pTkI99.gif' -OutFile '$AssetsDir/dumbbell_one_arm_snatch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_snatch.gif'
} else {
    $skip++
}

# 612. dumbbell one arm standing curl (id: 1670)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_standing_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1670-ffQsyBj.gif' -OutFile '$AssetsDir/dumbbell_one_arm_standing_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_standing_curl.gif'
} else {
    $skip++
}

# 613. dumbbell one arm standing hammer curl (id: 1671)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_standing_hammer_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1671-2sQGZ5b.gif' -OutFile '$AssetsDir/dumbbell_one_arm_standing_hammer_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_standing_hammer_curl.gif'
} else {
    $skip++
}

# 614. dumbbell one arm triceps extension (on bench) (id: 0362)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_triceps_extension_on_bench.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0362-nAuHPcD.gif' -OutFile '$AssetsDir/dumbbell_one_arm_triceps_extension_on_bench.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_triceps_extension_on_bench.gif'
} else {
    $skip++
}

# 615. dumbbell one arm upright row (id: 0363)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_upright_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0363-6cKQC5E.gif' -OutFile '$AssetsDir/dumbbell_one_arm_upright_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_upright_row.gif'
} else {
    $skip++
}

# 616. dumbbell one arm wrist curl (id: 0364)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_wrist_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0364-q8aHNoF.gif' -OutFile '$AssetsDir/dumbbell_one_arm_wrist_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_wrist_curl.gif'
} else {
    $skip++
}

# 617. dumbbell one arm zottman preacher curl (id: 1672)
if (-not (Test-Path '$AssetsDir/dumbbell_one_arm_zottman_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1672-sxY5Biu.gif' -OutFile '$AssetsDir/dumbbell_one_arm_zottman_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_arm_zottman_preacher_curl.gif'
} else {
    $skip++
}

# 618. dumbbell one leg fly on exercise ball (id: 1292)
if (-not (Test-Path '$AssetsDir/dumbbell_one_leg_fly_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1292-pH2x2jj.gif' -OutFile '$AssetsDir/dumbbell_one_leg_fly_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_one_leg_fly_on_exercise_ball.gif'
} else {
    $skip++
}

# 619. dumbbell over bench neutral wrist curl (id: 0365)
if (-not (Test-Path '$AssetsDir/dumbbell_over_bench_neutral_wrist_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0365-BKa8dmT.gif' -OutFile '$AssetsDir/dumbbell_over_bench_neutral_wrist_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_over_bench_neutral_wrist_curl.gif'
} else {
    $skip++
}

# 620. dumbbell over bench one arm neutral wrist curl (id: 0366)
if (-not (Test-Path '$AssetsDir/dumbbell_over_bench_one_arm_neutral_wrist_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0366-IvV6C9M.gif' -OutFile '$AssetsDir/dumbbell_over_bench_one_arm_neutral_wrist_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_over_bench_one_arm_neutral_wrist_curl.gif'
} else {
    $skip++
}

# 621. dumbbell over bench one arm reverse wrist curl (id: 1441)
if (-not (Test-Path '$AssetsDir/dumbbell_over_bench_one_arm_reverse_wrist_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1441-4Jc36XM.gif' -OutFile '$AssetsDir/dumbbell_over_bench_one_arm_reverse_wrist_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_over_bench_one_arm_reverse_wrist_curl.gif'
} else {
    $skip++
}

# 622. dumbbell over bench one arm wrist curl (id: 0367)
if (-not (Test-Path '$AssetsDir/dumbbell_over_bench_one_arm_wrist_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0367-KI1DjNN.gif' -OutFile '$AssetsDir/dumbbell_over_bench_one_arm_wrist_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_over_bench_one_arm_wrist_curl.gif'
} else {
    $skip++
}

# 623. dumbbell over bench revers wrist curl (id: 0368)
if (-not (Test-Path '$AssetsDir/dumbbell_over_bench_revers_wrist_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0368-3tAXPQ6.gif' -OutFile '$AssetsDir/dumbbell_over_bench_revers_wrist_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_over_bench_revers_wrist_curl.gif'
} else {
    $skip++
}

# 624. dumbbell over bench wrist curl (id: 0369)
if (-not (Test-Path '$AssetsDir/dumbbell_over_bench_wrist_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0369-D1xYJAU.gif' -OutFile '$AssetsDir/dumbbell_over_bench_wrist_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_over_bench_wrist_curl.gif'
} else {
    $skip++
}

# 625. dumbbell palm rotational bent over row (id: 1329)
if (-not (Test-Path '$AssetsDir/dumbbell_palm_rotational_bent_over_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1329-wt6rwjk.gif' -OutFile '$AssetsDir/dumbbell_palm_rotational_bent_over_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_palm_rotational_bent_over_row.gif'
} else {
    $skip++
}

# 626. dumbbell palms in incline bench press (id: 1623)
if (-not (Test-Path '$AssetsDir/dumbbell_palms_in_incline_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1623-8eqjhOl.gif' -OutFile '$AssetsDir/dumbbell_palms_in_incline_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_palms_in_incline_bench_press.gif'
} else {
    $skip++
}

# 627. dumbbell peacher hammer curl (id: 0370)
if (-not (Test-Path '$AssetsDir/dumbbell_peacher_hammer_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0370-F1KxjBa.gif' -OutFile '$AssetsDir/dumbbell_peacher_hammer_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_peacher_hammer_curl.gif'
} else {
    $skip++
}

# 628. dumbbell plyo squat (id: 0371)
if (-not (Test-Path '$AssetsDir/dumbbell_plyo_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0371-S4pwGlc.gif' -OutFile '$AssetsDir/dumbbell_plyo_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_plyo_squat.gif'
} else {
    $skip++
}

# 629. dumbbell preacher curl (id: 0372)
if (-not (Test-Path '$AssetsDir/dumbbell_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0372-jivWf8n.gif' -OutFile '$AssetsDir/dumbbell_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_preacher_curl.gif'
} else {
    $skip++
}

# 630. dumbbell preacher curl over exercise ball (id: 1673)
if (-not (Test-Path '$AssetsDir/dumbbell_preacher_curl_over_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1673-hwygydB.gif' -OutFile '$AssetsDir/dumbbell_preacher_curl_over_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_preacher_curl_over_exercise_ball.gif'
} else {
    $skip++
}

# 631. dumbbell press on exercise ball (id: 1293)
if (-not (Test-Path '$AssetsDir/dumbbell_press_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1293-O8o7q4d.gif' -OutFile '$AssetsDir/dumbbell_press_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_press_on_exercise_ball.gif'
} else {
    $skip++
}

# 632. dumbbell pronate-grip triceps extension (id: 0373)
if (-not (Test-Path '$AssetsDir/dumbbell_pronate-grip_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0373-bpJL2Qs.gif' -OutFile '$AssetsDir/dumbbell_pronate-grip_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_pronate-grip_triceps_extension.gif'
} else {
    $skip++
}

# 633. dumbbell prone incline curl (id: 0374)
if (-not (Test-Path '$AssetsDir/dumbbell_prone_incline_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0374-mwpPcr1.gif' -OutFile '$AssetsDir/dumbbell_prone_incline_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_prone_incline_curl.gif'
} else {
    $skip++
}

# 634. dumbbell prone incline hammer curl (id: 1674)
if (-not (Test-Path '$AssetsDir/dumbbell_prone_incline_hammer_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1674-cWemPG8.gif' -OutFile '$AssetsDir/dumbbell_prone_incline_hammer_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_prone_incline_hammer_curl.gif'
} else {
    $skip++
}

# 635. dumbbell pullover (id: 0375)
if (-not (Test-Path '$AssetsDir/dumbbell_pullover.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0375-9XjtHvS.gif' -OutFile '$AssetsDir/dumbbell_pullover.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_pullover.gif'
} else {
    $skip++
}

# 636. dumbbell pullover hip extension on exercise ball (id: 1294)
if (-not (Test-Path '$AssetsDir/dumbbell_pullover_hip_extension_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1294-lI7easp.gif' -OutFile '$AssetsDir/dumbbell_pullover_hip_extension_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_pullover_hip_extension_on_exercise_ball.gif'
} else {
    $skip++
}

# 637. dumbbell pullover on exercise ball (id: 1295)
if (-not (Test-Path '$AssetsDir/dumbbell_pullover_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1295-FSD6PGL.gif' -OutFile '$AssetsDir/dumbbell_pullover_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_pullover_on_exercise_ball.gif'
} else {
    $skip++
}

# 638. dumbbell push press (id: 1700)
if (-not (Test-Path '$AssetsDir/dumbbell_push_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1700-FS63wTN.gif' -OutFile '$AssetsDir/dumbbell_push_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_push_press.gif'
} else {
    $skip++
}

# 639. dumbbell raise (id: 0376)
if (-not (Test-Path '$AssetsDir/dumbbell_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0376-c9MnDRp.gif' -OutFile '$AssetsDir/dumbbell_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_raise.gif'
} else {
    $skip++
}

# 640. dumbbell rear delt raise (id: 2292)
if (-not (Test-Path '$AssetsDir/dumbbell_rear_delt_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2292-mu5Guxt.gif' -OutFile '$AssetsDir/dumbbell_rear_delt_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_rear_delt_raise.gif'
} else {
    $skip++
}

# 641. dumbbell rear delt row_shoulder (id: 0377)
if (-not (Test-Path '$AssetsDir/dumbbell_rear_delt_row_shoulder.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0377-EKXOMEh.gif' -OutFile '$AssetsDir/dumbbell_rear_delt_row_shoulder.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_rear_delt_row_shoulder.gif'
} else {
    $skip++
}

# 642. dumbbell rear fly (id: 0378)
if (-not (Test-Path '$AssetsDir/dumbbell_rear_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0378-8DiFDVA.gif' -OutFile '$AssetsDir/dumbbell_rear_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_rear_fly.gif'
} else {
    $skip++
}

# 643. dumbbell rear lateral raise (id: 0380)
if (-not (Test-Path '$AssetsDir/dumbbell_rear_lateral_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0380-v1qBec9.gif' -OutFile '$AssetsDir/dumbbell_rear_lateral_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_rear_lateral_raise.gif'
} else {
    $skip++
}

# 644. dumbbell rear lateral raise (support head) (id: 0379)
if (-not (Test-Path '$AssetsDir/dumbbell_rear_lateral_raise_support_head.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0379-UzkLrem.gif' -OutFile '$AssetsDir/dumbbell_rear_lateral_raise_support_head.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_rear_lateral_raise_support_head.gif'
} else {
    $skip++
}

# 645. dumbbell rear lunge (id: 0381)
if (-not (Test-Path '$AssetsDir/dumbbell_rear_lunge.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0381-SSsBDwB.gif' -OutFile '$AssetsDir/dumbbell_rear_lunge.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_rear_lunge.gif'
} else {
    $skip++
}

# 646. dumbbell revers grip biceps curl (id: 0382)
if (-not (Test-Path '$AssetsDir/dumbbell_revers_grip_biceps_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0382-e4ojVhP.gif' -OutFile '$AssetsDir/dumbbell_revers_grip_biceps_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_revers_grip_biceps_curl.gif'
} else {
    $skip++
}

# 647. dumbbell reverse bench press (id: 1624)
if (-not (Test-Path '$AssetsDir/dumbbell_reverse_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1624-UIbGx6H.gif' -OutFile '$AssetsDir/dumbbell_reverse_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_reverse_bench_press.gif'
} else {
    $skip++
}

# 648. dumbbell reverse fly (id: 0383)
if (-not (Test-Path '$AssetsDir/dumbbell_reverse_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0383-EAs3xL9.gif' -OutFile '$AssetsDir/dumbbell_reverse_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_reverse_fly.gif'
} else {
    $skip++
}

# 649. dumbbell reverse grip incline bench one arm row (id: 1330)
if (-not (Test-Path '$AssetsDir/dumbbell_reverse_grip_incline_bench_one_arm_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1330-ZIViNh1.gif' -OutFile '$AssetsDir/dumbbell_reverse_grip_incline_bench_one_arm_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_reverse_grip_incline_bench_one_arm_row.gif'
} else {
    $skip++
}

# 650. dumbbell reverse grip incline bench two arm row (id: 1331)
if (-not (Test-Path '$AssetsDir/dumbbell_reverse_grip_incline_bench_two_arm_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1331-9pQSkH8.gif' -OutFile '$AssetsDir/dumbbell_reverse_grip_incline_bench_two_arm_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_reverse_grip_incline_bench_two_arm_row.gif'
} else {
    $skip++
}

# 651. dumbbell reverse grip row (female) (id: 2327)
if (-not (Test-Path '$AssetsDir/dumbbell_reverse_grip_row_female.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2327-Nh3mvOO.gif' -OutFile '$AssetsDir/dumbbell_reverse_grip_row_female.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_reverse_grip_row_female.gif'
} else {
    $skip++
}

# 652. dumbbell reverse preacher curl (id: 0384)
if (-not (Test-Path '$AssetsDir/dumbbell_reverse_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0384-O8Aq69u.gif' -OutFile '$AssetsDir/dumbbell_reverse_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_reverse_preacher_curl.gif'
} else {
    $skip++
}

# 653. dumbbell reverse spider curl (id: 1675)
if (-not (Test-Path '$AssetsDir/dumbbell_reverse_spider_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1675-6sMAmNv.gif' -OutFile '$AssetsDir/dumbbell_reverse_spider_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_reverse_spider_curl.gif'
} else {
    $skip++
}

# 654. dumbbell reverse wrist curl (id: 0385)
if (-not (Test-Path '$AssetsDir/dumbbell_reverse_wrist_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0385-BLCvwr2.gif' -OutFile '$AssetsDir/dumbbell_reverse_wrist_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_reverse_wrist_curl.gif'
} else {
    $skip++
}

# 655. dumbbell romanian deadlift (id: 1459)
if (-not (Test-Path '$AssetsDir/dumbbell_romanian_deadlift.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1459-rR0LJzx.gif' -OutFile '$AssetsDir/dumbbell_romanian_deadlift.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_romanian_deadlift.gif'
} else {
    $skip++
}

# 656. dumbbell rotation reverse fly (id: 0386)
if (-not (Test-Path '$AssetsDir/dumbbell_rotation_reverse_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0386-prbWx1D.gif' -OutFile '$AssetsDir/dumbbell_rotation_reverse_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_rotation_reverse_fly.gif'
} else {
    $skip++
}

# 657. dumbbell scott press (id: 2397)
if (-not (Test-Path '$AssetsDir/dumbbell_scott_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2397-5vfAI0I.gif' -OutFile '$AssetsDir/dumbbell_scott_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_scott_press.gif'
} else {
    $skip++
}

# 658. dumbbell seated alternate front raise (id: 0387)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_alternate_front_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0387-gH5fRsC.gif' -OutFile '$AssetsDir/dumbbell_seated_alternate_front_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_alternate_front_raise.gif'
} else {
    $skip++
}

# 659. dumbbell seated alternate hammer curl on exercise ball (id: 1676)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_alternate_hammer_curl_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1676-QLRmNeT.gif' -OutFile '$AssetsDir/dumbbell_seated_alternate_hammer_curl_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_alternate_hammer_curl_on_exercise_ball.gif'
} else {
    $skip++
}

# 660. dumbbell seated alternate press (id: 0388)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_alternate_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0388-QT5Q0nK.gif' -OutFile '$AssetsDir/dumbbell_seated_alternate_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_alternate_press.gif'
} else {
    $skip++
}

# 661. dumbbell seated alternate shoulder (id: 3546)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_alternate_shoulder.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3546-q7qkONO.gif' -OutFile '$AssetsDir/dumbbell_seated_alternate_shoulder.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_alternate_shoulder.gif'
} else {
    $skip++
}

# 662. dumbbell seated bench extension (id: 0389)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_bench_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0389-JhYSVwT.gif' -OutFile '$AssetsDir/dumbbell_seated_bench_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_bench_extension.gif'
} else {
    $skip++
}

# 663. dumbbell seated bent arm lateral raise (id: 2317)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_bent_arm_lateral_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2317-JzQbv7J.gif' -OutFile '$AssetsDir/dumbbell_seated_bent_arm_lateral_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_bent_arm_lateral_raise.gif'
} else {
    $skip++
}

# 664. dumbbell seated bent over alternate kickback (id: 1730)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_bent_over_alternate_kickback.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1730-x0lwvfq.gif' -OutFile '$AssetsDir/dumbbell_seated_bent_over_alternate_kickback.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_bent_over_alternate_kickback.gif'
} else {
    $skip++
}

# 665. dumbbell seated bent over triceps extension (id: 1737)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_bent_over_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1737-4ievMJ9.gif' -OutFile '$AssetsDir/dumbbell_seated_bent_over_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_bent_over_triceps_extension.gif'
} else {
    $skip++
}

# 666. dumbbell seated bicep curl (id: 1677)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_bicep_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1677-xiA6lRr.gif' -OutFile '$AssetsDir/dumbbell_seated_bicep_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_bicep_curl.gif'
} else {
    $skip++
}

# 667. dumbbell seated biceps curl (on stability ball) (id: 0390)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_biceps_curl_on_stability_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0390-WgJnBH5.gif' -OutFile '$AssetsDir/dumbbell_seated_biceps_curl_on_stability_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_biceps_curl_on_stability_ball.gif'
} else {
    $skip++
}

# 668. dumbbell seated biceps curl to shoulder press (id: 3547)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_biceps_curl_to_shoulder_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3547-OeL23VY.gif' -OutFile '$AssetsDir/dumbbell_seated_biceps_curl_to_shoulder_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_biceps_curl_to_shoulder_press.gif'
} else {
    $skip++
}

# 669. dumbbell seated calf raise (id: 1379)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1379-r29jP7S.gif' -OutFile '$AssetsDir/dumbbell_seated_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_calf_raise.gif'
} else {
    $skip++
}

# 670. dumbbell seated curl (id: 0391)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0391-TiaZTxx.gif' -OutFile '$AssetsDir/dumbbell_seated_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_curl.gif'
} else {
    $skip++
}

# 671. dumbbell seated front raise (id: 0392)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_front_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0392-Ys97II0.gif' -OutFile '$AssetsDir/dumbbell_seated_front_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_front_raise.gif'
} else {
    $skip++
}

# 672. dumbbell seated hammer curl (id: 1678)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_hammer_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1678-IGtBdNT.gif' -OutFile '$AssetsDir/dumbbell_seated_hammer_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_hammer_curl.gif'
} else {
    $skip++
}

# 673. dumbbell seated inner biceps curl (id: 0393)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_inner_biceps_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0393-KXyoEtA.gif' -OutFile '$AssetsDir/dumbbell_seated_inner_biceps_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_inner_biceps_curl.gif'
} else {
    $skip++
}

# 674. dumbbell seated kickback (id: 0394)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_kickback.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0394-en550rk.gif' -OutFile '$AssetsDir/dumbbell_seated_kickback.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_kickback.gif'
} else {
    $skip++
}

# 675. dumbbell seated lateral raise (id: 0396)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_lateral_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0396-hxyTtWj.gif' -OutFile '$AssetsDir/dumbbell_seated_lateral_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_lateral_raise.gif'
} else {
    $skip++
}

# 676. dumbbell seated lateral raise v. 2 (id: 0395)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_lateral_raise_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0395-hrrS0Ed.gif' -OutFile '$AssetsDir/dumbbell_seated_lateral_raise_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_lateral_raise_v_2.gif'
} else {
    $skip++
}

# 677. dumbbell seated neutral wrist curl (id: 0397)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_neutral_wrist_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0397-uJmK7Z1.gif' -OutFile '$AssetsDir/dumbbell_seated_neutral_wrist_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_neutral_wrist_curl.gif'
} else {
    $skip++
}

# 678. dumbbell seated one arm bicep curl on exercise ball with leg raised (id: 1679)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_one_arm_bicep_curl_on_exercise_ball_with_leg.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1679-84sESNy.gif' -OutFile '$AssetsDir/dumbbell_seated_one_arm_bicep_curl_on_exercise_ball_with_leg.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_one_arm_bicep_curl_on_exercise_ball_with_leg.gif'
} else {
    $skip++
}

# 679. dumbbell seated one arm kickback (id: 0398)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_one_arm_kickback.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0398-VQ3sNCn.gif' -OutFile '$AssetsDir/dumbbell_seated_one_arm_kickback.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_one_arm_kickback.gif'
} else {
    $skip++
}

# 680. dumbbell seated one arm rotate (id: 0399)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_one_arm_rotate.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0399-7f2jsqP.gif' -OutFile '$AssetsDir/dumbbell_seated_one_arm_rotate.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_one_arm_rotate.gif'
} else {
    $skip++
}

# 681. dumbbell seated one leg calf raise (id: 0400)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_one_leg_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0400-Ia7tumC.gif' -OutFile '$AssetsDir/dumbbell_seated_one_leg_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_one_leg_calf_raise.gif'
} else {
    $skip++
}

# 682. dumbbell seated one leg calf raise - hammer grip (id: 1380)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_one_leg_calf_raise_-_hammer_grip.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1380-FxhcxUW.gif' -OutFile '$AssetsDir/dumbbell_seated_one_leg_calf_raise_-_hammer_grip.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_one_leg_calf_raise_-_hammer_grip.gif'
} else {
    $skip++
}

# 683. dumbbell seated one leg calf raise - palm up (id: 1381)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_one_leg_calf_raise_-_palm_up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1381-VW88JNd.gif' -OutFile '$AssetsDir/dumbbell_seated_one_leg_calf_raise_-_palm_up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_one_leg_calf_raise_-_palm_up.gif'
} else {
    $skip++
}

# 684. dumbbell seated palms up wrist curl (id: 0401)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_palms_up_wrist_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0401-2dImyQ8.gif' -OutFile '$AssetsDir/dumbbell_seated_palms_up_wrist_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_palms_up_wrist_curl.gif'
} else {
    $skip++
}

# 685. dumbbell seated preacher curl (id: 0402)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0402-7D5bgLT.gif' -OutFile '$AssetsDir/dumbbell_seated_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_preacher_curl.gif'
} else {
    $skip++
}

# 686. dumbbell seated revers grip concentration curl (id: 0403)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_revers_grip_concentration_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0403-lyKCLmK.gif' -OutFile '$AssetsDir/dumbbell_seated_revers_grip_concentration_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_revers_grip_concentration_curl.gif'
} else {
    $skip++
}

# 687. dumbbell seated reverse grip one arm overhead tricep extension (id: 1738)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_reverse_grip_one_arm_overhead_tricep_extensi.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1738-5fKX7wi.gif' -OutFile '$AssetsDir/dumbbell_seated_reverse_grip_one_arm_overhead_tricep_extensi.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_reverse_grip_one_arm_overhead_tricep_extensi.gif'
} else {
    $skip++
}

# 688. dumbbell seated shoulder press (id: 0405)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_shoulder_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0405-znQUdHY.gif' -OutFile '$AssetsDir/dumbbell_seated_shoulder_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_shoulder_press.gif'
} else {
    $skip++
}

# 689. dumbbell seated shoulder press (parallel grip) (id: 0404)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_shoulder_press_parallel_grip.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0404-f1jf47L.gif' -OutFile '$AssetsDir/dumbbell_seated_shoulder_press_parallel_grip.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_shoulder_press_parallel_grip.gif'
} else {
    $skip++
}

# 690. dumbbell seated triceps extension (id: 2188)
if (-not (Test-Path '$AssetsDir/dumbbell_seated_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2188-kont8Ut.gif' -OutFile '$AssetsDir/dumbbell_seated_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_seated_triceps_extension.gif'
} else {
    $skip++
}

# 691. dumbbell shrug (id: 0406)
if (-not (Test-Path '$AssetsDir/dumbbell_shrug.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0406-NJzBsGJ.gif' -OutFile '$AssetsDir/dumbbell_shrug.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_shrug.gif'
} else {
    $skip++
}

# 692. dumbbell side bend (id: 0407)
if (-not (Test-Path '$AssetsDir/dumbbell_side_bend.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0407-IpONWYv.gif' -OutFile '$AssetsDir/dumbbell_side_bend.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_side_bend.gif'
} else {
    $skip++
}

# 693. dumbbell side lying one hand raise (id: 0408)
if (-not (Test-Path '$AssetsDir/dumbbell_side_lying_one_hand_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0408-fTlkJop.gif' -OutFile '$AssetsDir/dumbbell_side_lying_one_hand_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_side_lying_one_hand_raise.gif'
} else {
    $skip++
}

# 694. dumbbell side plank with rear fly (id: 3664)
if (-not (Test-Path '$AssetsDir/dumbbell_side_plank_with_rear_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3664-X6ytgYZ.gif' -OutFile '$AssetsDir/dumbbell_side_plank_with_rear_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_side_plank_with_rear_fly.gif'
} else {
    $skip++
}

# 695. dumbbell single arm overhead carry (id: 3548)
if (-not (Test-Path '$AssetsDir/dumbbell_single_arm_overhead_carry.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3548-mWBtgmb.gif' -OutFile '$AssetsDir/dumbbell_single_arm_overhead_carry.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_single_arm_overhead_carry.gif'
} else {
    $skip++
}

# 696. dumbbell single leg calf raise (id: 0409)
if (-not (Test-Path '$AssetsDir/dumbbell_single_leg_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0409-1kB3Wmk.gif' -OutFile '$AssetsDir/dumbbell_single_leg_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_single_leg_calf_raise.gif'
} else {
    $skip++
}

# 697. dumbbell single leg deadlift (id: 1757)
if (-not (Test-Path '$AssetsDir/dumbbell_single_leg_deadlift.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1757-gKozT8X.gif' -OutFile '$AssetsDir/dumbbell_single_leg_deadlift.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_single_leg_deadlift.gif'
} else {
    $skip++
}

# 698. dumbbell single leg deadlift with stepbox support (id: 2805)
if (-not (Test-Path '$AssetsDir/dumbbell_single_leg_deadlift_with_stepbox_support.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2805-daBmy1Y.gif' -OutFile '$AssetsDir/dumbbell_single_leg_deadlift_with_stepbox_support.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_single_leg_deadlift_with_stepbox_support.gif'
} else {
    $skip++
}

# 699. dumbbell single leg split squat (id: 0410)
if (-not (Test-Path '$AssetsDir/dumbbell_single_leg_split_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0410-qx4fgX7.gif' -OutFile '$AssetsDir/dumbbell_single_leg_split_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_single_leg_split_squat.gif'
} else {
    $skip++
}

# 700. dumbbell single leg squat (id: 0411)
if (-not (Test-Path '$AssetsDir/dumbbell_single_leg_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0411-H6ybluc.gif' -OutFile '$AssetsDir/dumbbell_single_leg_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_single_leg_squat.gif'
} else {
    $skip++
}

# 701. dumbbell squat (id: 0413)
if (-not (Test-Path '$AssetsDir/dumbbell_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0413-HsvHqgf.gif' -OutFile '$AssetsDir/dumbbell_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_squat.gif'
} else {
    $skip++
}

# 702. dumbbell standing alternate hammer curl and press (id: 3560)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_alternate_hammer_curl_and_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3560-LeaZOIz.gif' -OutFile '$AssetsDir/dumbbell_standing_alternate_hammer_curl_and_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_alternate_hammer_curl_and_press.gif'
} else {
    $skip++
}

# 703. dumbbell standing alternate overhead press (id: 0414)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_alternate_overhead_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0414-bBi35y3.gif' -OutFile '$AssetsDir/dumbbell_standing_alternate_overhead_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_alternate_overhead_press.gif'
} else {
    $skip++
}

# 704. dumbbell standing alternate raise (id: 0415)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_alternate_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0415-SxHteRW.gif' -OutFile '$AssetsDir/dumbbell_standing_alternate_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_alternate_raise.gif'
} else {
    $skip++
}

# 705. dumbbell standing alternating tricep kickback (id: 1739)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_alternating_tricep_kickback.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1739-Gi2BXfK.gif' -OutFile '$AssetsDir/dumbbell_standing_alternating_tricep_kickback.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_alternating_tricep_kickback.gif'
} else {
    $skip++
}

# 706. dumbbell standing around world (id: 2143)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_around_world.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2143-RSOsp5d.gif' -OutFile '$AssetsDir/dumbbell_standing_around_world.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_around_world.gif'
} else {
    $skip++
}

# 707. dumbbell standing bent over one arm triceps extension (id: 1740)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_bent_over_one_arm_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1740-CJwa0vD.gif' -OutFile '$AssetsDir/dumbbell_standing_bent_over_one_arm_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_bent_over_one_arm_triceps_extension.gif'
} else {
    $skip++
}

# 708. dumbbell standing bent over two arm triceps extension (id: 1741)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_bent_over_two_arm_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1741-3T12T87.gif' -OutFile '$AssetsDir/dumbbell_standing_bent_over_two_arm_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_bent_over_two_arm_triceps_extension.gif'
} else {
    $skip++
}

# 709. dumbbell standing biceps curl (id: 0416)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_biceps_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0416-3s4NnTh.gif' -OutFile '$AssetsDir/dumbbell_standing_biceps_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_biceps_curl.gif'
} else {
    $skip++
}

# 710. dumbbell standing calf raise (id: 0417)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0417-dPmaUaU.gif' -OutFile '$AssetsDir/dumbbell_standing_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_calf_raise.gif'
} else {
    $skip++
}

# 711. dumbbell standing concentration curl (id: 0418)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_concentration_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0418-7inpWch.gif' -OutFile '$AssetsDir/dumbbell_standing_concentration_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_concentration_curl.gif'
} else {
    $skip++
}

# 712. dumbbell standing front raise above head (id: 0419)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_front_raise_above_head.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0419-laVRfDf.gif' -OutFile '$AssetsDir/dumbbell_standing_front_raise_above_head.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_front_raise_above_head.gif'
} else {
    $skip++
}

# 713. dumbbell standing inner biceps curl v. 2 (id: 2321)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_inner_biceps_curl_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2321-vKilzz3.gif' -OutFile '$AssetsDir/dumbbell_standing_inner_biceps_curl_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_inner_biceps_curl_v_2.gif'
} else {
    $skip++
}

# 714. dumbbell standing kickback (id: 0420)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_kickback.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0420-UmpPAAe.gif' -OutFile '$AssetsDir/dumbbell_standing_kickback.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_kickback.gif'
} else {
    $skip++
}

# 715. dumbbell standing one arm concentration curl (id: 0421)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_one_arm_concentration_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0421-8fgqP5a.gif' -OutFile '$AssetsDir/dumbbell_standing_one_arm_concentration_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_one_arm_concentration_curl.gif'
} else {
    $skip++
}

# 716. dumbbell standing one arm curl (over incline bench) (id: 0422)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_one_arm_curl_over_incline_bench.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0422-BIb1tGo.gif' -OutFile '$AssetsDir/dumbbell_standing_one_arm_curl_over_incline_bench.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_one_arm_curl_over_incline_bench.gif'
} else {
    $skip++
}

# 717. dumbbell standing one arm curl over incline bench (id: 1680)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_one_arm_curl_over_incline_bench.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1680-EmlJR2y.gif' -OutFile '$AssetsDir/dumbbell_standing_one_arm_curl_over_incline_bench.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_one_arm_curl_over_incline_bench.gif'
} else {
    $skip++
}

# 718. dumbbell standing one arm extension (id: 0423)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_one_arm_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0423-BCUR88E.gif' -OutFile '$AssetsDir/dumbbell_standing_one_arm_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_one_arm_extension.gif'
} else {
    $skip++
}

# 719. dumbbell standing one arm palm in press (id: 0424)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_one_arm_palm_in_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0424-ocYc6Db.gif' -OutFile '$AssetsDir/dumbbell_standing_one_arm_palm_in_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_one_arm_palm_in_press.gif'
} else {
    $skip++
}

# 720. dumbbell standing one arm reverse curl (id: 0425)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_one_arm_reverse_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0425-DU5Kkj2.gif' -OutFile '$AssetsDir/dumbbell_standing_one_arm_reverse_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_one_arm_reverse_curl.gif'
} else {
    $skip++
}

# 721. dumbbell standing overhead press (id: 0426)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_overhead_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0426-A6wtbuL.gif' -OutFile '$AssetsDir/dumbbell_standing_overhead_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_overhead_press.gif'
} else {
    $skip++
}

# 722. dumbbell standing palms in press (id: 0427)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_palms_in_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0427-UilDHSs.gif' -OutFile '$AssetsDir/dumbbell_standing_palms_in_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_palms_in_press.gif'
} else {
    $skip++
}

# 723. dumbbell standing preacher curl (id: 0428)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0428-hq2hyDH.gif' -OutFile '$AssetsDir/dumbbell_standing_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_preacher_curl.gif'
} else {
    $skip++
}

# 724. dumbbell standing reverse curl (id: 0429)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_reverse_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0429-0IgNjSM.gif' -OutFile '$AssetsDir/dumbbell_standing_reverse_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_reverse_curl.gif'
} else {
    $skip++
}

# 725. dumbbell standing triceps extension (id: 0430)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0430-PdmaD0N.gif' -OutFile '$AssetsDir/dumbbell_standing_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_triceps_extension.gif'
} else {
    $skip++
}

# 726. dumbbell standing zottman preacher curl (id: 2293)
if (-not (Test-Path '$AssetsDir/dumbbell_standing_zottman_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2293-P2nRiUa.gif' -OutFile '$AssetsDir/dumbbell_standing_zottman_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_standing_zottman_preacher_curl.gif'
} else {
    $skip++
}

# 727. dumbbell step up single leg balance with bicep curl (id: 1684)
if (-not (Test-Path '$AssetsDir/dumbbell_step_up_single_leg_balance_with_bicep_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1684-76vfTdU.gif' -OutFile '$AssetsDir/dumbbell_step_up_single_leg_balance_with_bicep_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_step_up_single_leg_balance_with_bicep_curl.gif'
} else {
    $skip++
}

# 728. dumbbell step-up (id: 0431)
if (-not (Test-Path '$AssetsDir/dumbbell_step-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0431-aXtJhlg.gif' -OutFile '$AssetsDir/dumbbell_step-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_step-up.gif'
} else {
    $skip++
}

# 729. dumbbell step-up lunge (id: 2796)
if (-not (Test-Path '$AssetsDir/dumbbell_step-up_lunge.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2796-gFyFj9z.gif' -OutFile '$AssetsDir/dumbbell_step-up_lunge.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_step-up_lunge.gif'
} else {
    $skip++
}

# 730. dumbbell step-up split squat (id: 2812)
if (-not (Test-Path '$AssetsDir/dumbbell_step-up_split_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2812-QjE2DcA.gif' -OutFile '$AssetsDir/dumbbell_step-up_split_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_step-up_split_squat.gif'
} else {
    $skip++
}

# 731. dumbbell stiff leg deadlift (id: 0432)
if (-not (Test-Path '$AssetsDir/dumbbell_stiff_leg_deadlift.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0432-5eLRITT.gif' -OutFile '$AssetsDir/dumbbell_stiff_leg_deadlift.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_stiff_leg_deadlift.gif'
} else {
    $skip++
}

# 732. dumbbell straight arm pullover (id: 0433)
if (-not (Test-Path '$AssetsDir/dumbbell_straight_arm_pullover.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0433-i8BdLTK.gif' -OutFile '$AssetsDir/dumbbell_straight_arm_pullover.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_straight_arm_pullover.gif'
} else {
    $skip++
}

# 733. dumbbell straight leg deadlift (id: 0434)
if (-not (Test-Path '$AssetsDir/dumbbell_straight_leg_deadlift.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0434-oom75KC.gif' -OutFile '$AssetsDir/dumbbell_straight_leg_deadlift.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_straight_leg_deadlift.gif'
} else {
    $skip++
}

# 734. dumbbell sumo pull through (id: 2808)
if (-not (Test-Path '$AssetsDir/dumbbell_sumo_pull_through.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2808-BmrwWzo.gif' -OutFile '$AssetsDir/dumbbell_sumo_pull_through.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_sumo_pull_through.gif'
} else {
    $skip++
}

# 735. dumbbell supported squat (id: 2803)
if (-not (Test-Path '$AssetsDir/dumbbell_supported_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2803-r5DgrW9.gif' -OutFile '$AssetsDir/dumbbell_supported_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_supported_squat.gif'
} else {
    $skip++
}

# 736. dumbbell tate press (id: 0436)
if (-not (Test-Path '$AssetsDir/dumbbell_tate_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0436-s5PdDyY.gif' -OutFile '$AssetsDir/dumbbell_tate_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_tate_press.gif'
} else {
    $skip++
}

# 737. dumbbell tricep kickback with stork stance (id: 1742)
if (-not (Test-Path '$AssetsDir/dumbbell_tricep_kickback_with_stork_stance.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1742-wOLmCXc.gif' -OutFile '$AssetsDir/dumbbell_tricep_kickback_with_stork_stance.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_tricep_kickback_with_stork_stance.gif'
} else {
    $skip++
}

# 738. dumbbell twisting bench press (id: 1743)
if (-not (Test-Path '$AssetsDir/dumbbell_twisting_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1743-z6TAHoT.gif' -OutFile '$AssetsDir/dumbbell_twisting_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_twisting_bench_press.gif'
} else {
    $skip++
}

# 739. dumbbell upright row (id: 0437)
if (-not (Test-Path '$AssetsDir/dumbbell_upright_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0437-ainizkb.gif' -OutFile '$AssetsDir/dumbbell_upright_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_upright_row.gif'
} else {
    $skip++
}

# 740. dumbbell upright row (back pov) (id: 1765)
if (-not (Test-Path '$AssetsDir/dumbbell_upright_row_back_pov.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1765-Iptlv6x.gif' -OutFile '$AssetsDir/dumbbell_upright_row_back_pov.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_upright_row_back_pov.gif'
} else {
    $skip++
}

# 741. dumbbell upright shoulder external rotation (id: 0864)
if (-not (Test-Path '$AssetsDir/dumbbell_upright_shoulder_external_rotation.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0864-x306lCW.gif' -OutFile '$AssetsDir/dumbbell_upright_shoulder_external_rotation.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_upright_shoulder_external_rotation.gif'
} else {
    $skip++
}

# 742. dumbbell waiter biceps curl (id: 5201)
if (-not (Test-Path '$AssetsDir/dumbbell_waiter_biceps_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/5201-KOpzGBL.gif' -OutFile '$AssetsDir/dumbbell_waiter_biceps_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_waiter_biceps_curl.gif'
} else {
    $skip++
}

# 743. dumbbell w-press (id: 0438)
if (-not (Test-Path '$AssetsDir/dumbbell_w-press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0438-vmwLyCg.gif' -OutFile '$AssetsDir/dumbbell_w-press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_w-press.gif'
} else {
    $skip++
}

# 744. dumbbell zottman curl (id: 0439)
if (-not (Test-Path '$AssetsDir/dumbbell_zottman_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0439-kXaIn5A.gif' -OutFile '$AssetsDir/dumbbell_zottman_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_zottman_curl.gif'
} else {
    $skip++
}

# 745. dumbbell zottman preacher curl (id: 2294)
if (-not (Test-Path '$AssetsDir/dumbbell_zottman_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2294-y5U5B9Y.gif' -OutFile '$AssetsDir/dumbbell_zottman_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbell_zottman_preacher_curl.gif'
} else {
    $skip++
}

# 746. dumbbells seated triceps extension (id: 2189)
if (-not (Test-Path '$AssetsDir/dumbbells_seated_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2189-FQXdXzY.gif' -OutFile '$AssetsDir/dumbbells_seated_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dumbbells_seated_triceps_extension.gif'
} else {
    $skip++
}

# 747. dynamic chest stretch (male) (id: 1167)
if (-not (Test-Path '$AssetsDir/dynamic_chest_stretch_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1167-3uj0Ozg.gif' -OutFile '$AssetsDir/dynamic_chest_stretch_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: dynamic_chest_stretch_male.gif'
} else {
    $skip++
}

# 748. elbow dips (id: 3287)
if (-not (Test-Path '$AssetsDir/elbow_dips.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3287-LkoAWAE.gif' -OutFile '$AssetsDir/elbow_dips.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: elbow_dips.gif'
} else {
    $skip++
}

# 749. elbow lift - reverse push-up (id: 1772)
if (-not (Test-Path '$AssetsDir/elbow_lift_-_reverse_push-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1772-wbUYILZ.gif' -OutFile '$AssetsDir/elbow_lift_-_reverse_push-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: elbow_lift_-_reverse_push-up.gif'
} else {
    $skip++
}

# 750. elbow-to-knee (id: 0443)
if (-not (Test-Path '$AssetsDir/elbow-to-knee.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0443-jvp6DiD.gif' -OutFile '$AssetsDir/elbow-to-knee.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: elbow-to-knee.gif'
} else {
    $skip++
}

# 751. elevator (id: 3292)
if (-not (Test-Path '$AssetsDir/elevator.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3292-zYmNaoY.gif' -OutFile '$AssetsDir/elevator.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: elevator.gif'
} else {
    $skip++
}

# 752. exercise ball alternating arm ups (id: 1332)
if (-not (Test-Path '$AssetsDir/exercise_ball_alternating_arm_ups.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1332-EyLrNC2.gif' -OutFile '$AssetsDir/exercise_ball_alternating_arm_ups.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: exercise_ball_alternating_arm_ups.gif'
} else {
    $skip++
}

# 753. exercise ball back extension with arms extended (id: 1333)
if (-not (Test-Path '$AssetsDir/exercise_ball_back_extension_with_arms_extended.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1333-PERjVm8.gif' -OutFile '$AssetsDir/exercise_ball_back_extension_with_arms_extended.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: exercise_ball_back_extension_with_arms_extended.gif'
} else {
    $skip++
}

# 754. exercise ball back extension with hands behind head (id: 1334)
if (-not (Test-Path '$AssetsDir/exercise_ball_back_extension_with_hands_behind_head.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1334-o1HGDSq.gif' -OutFile '$AssetsDir/exercise_ball_back_extension_with_hands_behind_head.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: exercise_ball_back_extension_with_hands_behind_head.gif'
} else {
    $skip++
}

# 755. exercise ball back extension with knees off ground (id: 1335)
if (-not (Test-Path '$AssetsDir/exercise_ball_back_extension_with_knees_off_ground.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1335-WME869U.gif' -OutFile '$AssetsDir/exercise_ball_back_extension_with_knees_off_ground.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: exercise_ball_back_extension_with_knees_off_ground.gif'
} else {
    $skip++
}

# 756. exercise ball back extension with rotation (id: 1336)
if (-not (Test-Path '$AssetsDir/exercise_ball_back_extension_with_rotation.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1336-WVD66ff.gif' -OutFile '$AssetsDir/exercise_ball_back_extension_with_rotation.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: exercise_ball_back_extension_with_rotation.gif'
} else {
    $skip++
}

# 757. exercise ball dip (id: 1744)
if (-not (Test-Path '$AssetsDir/exercise_ball_dip.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1744-kprile3.gif' -OutFile '$AssetsDir/exercise_ball_dip.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: exercise_ball_dip.gif'
} else {
    $skip++
}

# 758. exercise ball hip flexor stretch (id: 1559)
if (-not (Test-Path '$AssetsDir/exercise_ball_hip_flexor_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1559-2LQkNPW.gif' -OutFile '$AssetsDir/exercise_ball_hip_flexor_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: exercise_ball_hip_flexor_stretch.gif'
} else {
    $skip++
}

# 759. exercise ball hug (id: 1338)
if (-not (Test-Path '$AssetsDir/exercise_ball_hug.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1338-d7z1Y7V.gif' -OutFile '$AssetsDir/exercise_ball_hug.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: exercise_ball_hug.gif'
} else {
    $skip++
}

# 760. exercise ball lat stretch (id: 1339)
if (-not (Test-Path '$AssetsDir/exercise_ball_lat_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1339-sM84pE4.gif' -OutFile '$AssetsDir/exercise_ball_lat_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: exercise_ball_lat_stretch.gif'
} else {
    $skip++
}

# 761. exercise ball lower back stretch (pyramid) (id: 1341)
if (-not (Test-Path '$AssetsDir/exercise_ball_lower_back_stretch_pyramid.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1341-yU7w7CA.gif' -OutFile '$AssetsDir/exercise_ball_lower_back_stretch_pyramid.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: exercise_ball_lower_back_stretch_pyramid.gif'
} else {
    $skip++
}

# 762. exercise ball lying side lat stretch (id: 1342)
if (-not (Test-Path '$AssetsDir/exercise_ball_lying_side_lat_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1342-rTbyBYV.gif' -OutFile '$AssetsDir/exercise_ball_lying_side_lat_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: exercise_ball_lying_side_lat_stretch.gif'
} else {
    $skip++
}

# 763. exercise ball on the wall calf raise (id: 1382)
if (-not (Test-Path '$AssetsDir/exercise_ball_on_the_wall_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1382-xo6sENf.gif' -OutFile '$AssetsDir/exercise_ball_on_the_wall_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: exercise_ball_on_the_wall_calf_raise.gif'
} else {
    $skip++
}

# 764. exercise ball on the wall calf raise (tennis ball between ankles) (id: 3241)
if (-not (Test-Path '$AssetsDir/exercise_ball_on_the_wall_calf_raise_tennis_ball_between_ank.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3241-FY3UdNT.gif' -OutFile '$AssetsDir/exercise_ball_on_the_wall_calf_raise_tennis_ball_between_ank.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: exercise_ball_on_the_wall_calf_raise_tennis_ball_between_ank.gif'
} else {
    $skip++
}

# 765. exercise ball on the wall calf raise (tennis ball between knees) (id: 3240)
if (-not (Test-Path '$AssetsDir/exercise_ball_on_the_wall_calf_raise_tennis_ball_between_kne.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3240-j74M6Zn.gif' -OutFile '$AssetsDir/exercise_ball_on_the_wall_calf_raise_tennis_ball_between_kne.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: exercise_ball_on_the_wall_calf_raise_tennis_ball_between_kne.gif'
} else {
    $skip++
}

# 766. exercise ball one leg prone lower body rotation (id: 1416)
if (-not (Test-Path '$AssetsDir/exercise_ball_one_leg_prone_lower_body_rotation.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1416-M72BExt.gif' -OutFile '$AssetsDir/exercise_ball_one_leg_prone_lower_body_rotation.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: exercise_ball_one_leg_prone_lower_body_rotation.gif'
} else {
    $skip++
}

# 767. exercise ball one legged diagonal kick hamstring curl (id: 1417)
if (-not (Test-Path '$AssetsDir/exercise_ball_one_legged_diagonal_kick_hamstring_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1417-GOJKFfO.gif' -OutFile '$AssetsDir/exercise_ball_one_legged_diagonal_kick_hamstring_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: exercise_ball_one_legged_diagonal_kick_hamstring_curl.gif'
} else {
    $skip++
}

# 768. exercise ball pike push up (id: 1296)
if (-not (Test-Path '$AssetsDir/exercise_ball_pike_push_up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1296-sVvXT5J.gif' -OutFile '$AssetsDir/exercise_ball_pike_push_up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: exercise_ball_pike_push_up.gif'
} else {
    $skip++
}

# 769. exercise ball prone leg raise (id: 1343)
if (-not (Test-Path '$AssetsDir/exercise_ball_prone_leg_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1343-lCKm4Rs.gif' -OutFile '$AssetsDir/exercise_ball_prone_leg_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: exercise_ball_prone_leg_raise.gif'
} else {
    $skip++
}

# 770. exercise ball seated hamstring stretch (id: 1560)
if (-not (Test-Path '$AssetsDir/exercise_ball_seated_hamstring_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1560-yRYyfdA.gif' -OutFile '$AssetsDir/exercise_ball_seated_hamstring_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: exercise_ball_seated_hamstring_stretch.gif'
} else {
    $skip++
}

# 771. exercise ball seated triceps stretch (id: 1745)
if (-not (Test-Path '$AssetsDir/exercise_ball_seated_triceps_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1745-7ePTw4B.gif' -OutFile '$AssetsDir/exercise_ball_seated_triceps_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: exercise_ball_seated_triceps_stretch.gif'
} else {
    $skip++
}

# 772. exercise ball supine triceps extension (id: 1746)
if (-not (Test-Path '$AssetsDir/exercise_ball_supine_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1746-Gm2Uv1z.gif' -OutFile '$AssetsDir/exercise_ball_supine_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: exercise_ball_supine_triceps_extension.gif'
} else {
    $skip++
}

# 773. ez bar french press on exercise ball (id: 1747)
if (-not (Test-Path '$AssetsDir/ez_bar_french_press_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1747-CFN9P8G.gif' -OutFile '$AssetsDir/ez_bar_french_press_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez_bar_french_press_on_exercise_ball.gif'
} else {
    $skip++
}

# 774. ez bar lying bent arms pullover (id: 3010)
if (-not (Test-Path '$AssetsDir/ez_bar_lying_bent_arms_pullover.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3010-nDK1HJ0.gif' -OutFile '$AssetsDir/ez_bar_lying_bent_arms_pullover.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez_bar_lying_bent_arms_pullover.gif'
} else {
    $skip++
}

# 775. ez bar lying close grip triceps extension behind head (id: 1748)
if (-not (Test-Path '$AssetsDir/ez_bar_lying_close_grip_triceps_extension_behind_head.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1748-6CKUx7o.gif' -OutFile '$AssetsDir/ez_bar_lying_close_grip_triceps_extension_behind_head.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez_bar_lying_close_grip_triceps_extension_behind_head.gif'
} else {
    $skip++
}

# 776. ez bar reverse grip bent over row (id: 1344)
if (-not (Test-Path '$AssetsDir/ez_bar_reverse_grip_bent_over_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1344-G8dXpNG.gif' -OutFile '$AssetsDir/ez_bar_reverse_grip_bent_over_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez_bar_reverse_grip_bent_over_row.gif'
} else {
    $skip++
}

# 777. ez bar seated close grip concentration curl (id: 1682)
if (-not (Test-Path '$AssetsDir/ez_bar_seated_close_grip_concentration_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1682-Dsfz0Id.gif' -OutFile '$AssetsDir/ez_bar_seated_close_grip_concentration_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez_bar_seated_close_grip_concentration_curl.gif'
} else {
    $skip++
}

# 778. ez bar standing french press (id: 1749)
if (-not (Test-Path '$AssetsDir/ez_bar_standing_french_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1749-1cTf2Ux.gif' -OutFile '$AssetsDir/ez_bar_standing_french_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez_bar_standing_french_press.gif'
} else {
    $skip++
}

# 779. ez barbell anti gravity press (id: 0445)
if (-not (Test-Path '$AssetsDir/ez_barbell_anti_gravity_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0445-fprd84i.gif' -OutFile '$AssetsDir/ez_barbell_anti_gravity_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez_barbell_anti_gravity_press.gif'
} else {
    $skip++
}

# 780. ez barbell close grip preacher curl (id: 1627)
if (-not (Test-Path '$AssetsDir/ez_barbell_close_grip_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1627-hacCyUv.gif' -OutFile '$AssetsDir/ez_barbell_close_grip_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez_barbell_close_grip_preacher_curl.gif'
} else {
    $skip++
}

# 781. ez barbell close-grip curl (id: 0446)
if (-not (Test-Path '$AssetsDir/ez_barbell_close-grip_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0446-V4ryaZa.gif' -OutFile '$AssetsDir/ez_barbell_close-grip_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez_barbell_close-grip_curl.gif'
} else {
    $skip++
}

# 782. ez barbell curl (id: 0447)
if (-not (Test-Path '$AssetsDir/ez_barbell_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0447-6TG6x2w.gif' -OutFile '$AssetsDir/ez_barbell_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez_barbell_curl.gif'
} else {
    $skip++
}

# 783. ez barbell decline close grip face press (id: 0448)
if (-not (Test-Path '$AssetsDir/ez_barbell_decline_close_grip_face_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0448-DgZQ11d.gif' -OutFile '$AssetsDir/ez_barbell_decline_close_grip_face_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez_barbell_decline_close_grip_face_press.gif'
} else {
    $skip++
}

# 784. ez barbell decline triceps extension (id: 2186)
if (-not (Test-Path '$AssetsDir/ez_barbell_decline_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2186-CQHoDm0.gif' -OutFile '$AssetsDir/ez_barbell_decline_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez_barbell_decline_triceps_extension.gif'
} else {
    $skip++
}

# 785. ez barbell incline triceps extension (id: 0449)
if (-not (Test-Path '$AssetsDir/ez_barbell_incline_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0449-KyLtiLT.gif' -OutFile '$AssetsDir/ez_barbell_incline_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez_barbell_incline_triceps_extension.gif'
} else {
    $skip++
}

# 786. ez barbell jm bench press (id: 0450)
if (-not (Test-Path '$AssetsDir/ez_barbell_jm_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0450-hnOYgH3.gif' -OutFile '$AssetsDir/ez_barbell_jm_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez_barbell_jm_bench_press.gif'
} else {
    $skip++
}

# 787. ez barbell reverse grip curl (id: 0451)
if (-not (Test-Path '$AssetsDir/ez_barbell_reverse_grip_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0451-Y5X65IB.gif' -OutFile '$AssetsDir/ez_barbell_reverse_grip_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez_barbell_reverse_grip_curl.gif'
} else {
    $skip++
}

# 788. ez barbell reverse grip preacher curl (id: 0452)
if (-not (Test-Path '$AssetsDir/ez_barbell_reverse_grip_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0452-vBNyir7.gif' -OutFile '$AssetsDir/ez_barbell_reverse_grip_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez_barbell_reverse_grip_preacher_curl.gif'
} else {
    $skip++
}

# 789. ez barbell seated curls (id: 1458)
if (-not (Test-Path '$AssetsDir/ez_barbell_seated_curls.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1458-jtFKbt5.gif' -OutFile '$AssetsDir/ez_barbell_seated_curls.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez_barbell_seated_curls.gif'
} else {
    $skip++
}

# 790. ez barbell seated triceps extension (id: 0453)
if (-not (Test-Path '$AssetsDir/ez_barbell_seated_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0453-iaapw0g.gif' -OutFile '$AssetsDir/ez_barbell_seated_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez_barbell_seated_triceps_extension.gif'
} else {
    $skip++
}

# 791. ez barbell spider curl (id: 0454)
if (-not (Test-Path '$AssetsDir/ez_barbell_spider_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0454-Ye5Qxb0.gif' -OutFile '$AssetsDir/ez_barbell_spider_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez_barbell_spider_curl.gif'
} else {
    $skip++
}

# 792. ez barbell spider curl (id: 1628)
if (-not (Test-Path '$AssetsDir/ez_barbell_spider_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1628-2kattbR.gif' -OutFile '$AssetsDir/ez_barbell_spider_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez_barbell_spider_curl.gif'
} else {
    $skip++
}

# 793. ez-bar biceps curl (with arm blaster) (id: 2404)
if (-not (Test-Path '$AssetsDir/ez-bar_biceps_curl_with_arm_blaster.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2404-tJ5nYqo.gif' -OutFile '$AssetsDir/ez-bar_biceps_curl_with_arm_blaster.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez-bar_biceps_curl_with_arm_blaster.gif'
} else {
    $skip++
}

# 794. ez-bar close-grip bench press (id: 2432)
if (-not (Test-Path '$AssetsDir/ez-bar_close-grip_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2432-da4cXST.gif' -OutFile '$AssetsDir/ez-bar_close-grip_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez-bar_close-grip_bench_press.gif'
} else {
    $skip++
}

# 795. ez-barbell standing wide grip biceps curl (id: 2741)
if (-not (Test-Path '$AssetsDir/ez-barbell_standing_wide_grip_biceps_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2741-OVTZ65k.gif' -OutFile '$AssetsDir/ez-barbell_standing_wide_grip_biceps_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ez-barbell_standing_wide_grip_biceps_curl.gif'
} else {
    $skip++
}

# 796. farmers walk (id: 2133)
if (-not (Test-Path '$AssetsDir/farmers_walk.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2133-qPEzJjA.gif' -OutFile '$AssetsDir/farmers_walk.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: farmers_walk.gif'
} else {
    $skip++
}

# 797. finger curls (id: 0455)
if (-not (Test-Path '$AssetsDir/finger_curls.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0455-awG04cF.gif' -OutFile '$AssetsDir/finger_curls.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: finger_curls.gif'
} else {
    $skip++
}

# 798. flag (id: 3303)
if (-not (Test-Path '$AssetsDir/flag.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3303-pQ0Mx1Z.gif' -OutFile '$AssetsDir/flag.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: flag.gif'
} else {
    $skip++
}

# 799. flexion leg sit up (bent knee) (id: 0456)
if (-not (Test-Path '$AssetsDir/flexion_leg_sit_up_bent_knee.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0456-AR0ig3o.gif' -OutFile '$AssetsDir/flexion_leg_sit_up_bent_knee.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: flexion_leg_sit_up_bent_knee.gif'
} else {
    $skip++
}

# 800. flexion leg sit up (straight arm) (id: 0457)
if (-not (Test-Path '$AssetsDir/flexion_leg_sit_up_straight_arm.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0457-KZn52RC.gif' -OutFile '$AssetsDir/flexion_leg_sit_up_straight_arm.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: flexion_leg_sit_up_straight_arm.gif'
} else {
    $skip++
}

# 801. floor fly (with barbell) (id: 0458)
if (-not (Test-Path '$AssetsDir/floor_fly_with_barbell.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0458-neonEDL.gif' -OutFile '$AssetsDir/floor_fly_with_barbell.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: floor_fly_with_barbell.gif'
} else {
    $skip++
}

# 802. flutter kicks (id: 0459)
if (-not (Test-Path '$AssetsDir/flutter_kicks.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0459-UVo2Qs2.gif' -OutFile '$AssetsDir/flutter_kicks.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: flutter_kicks.gif'
} else {
    $skip++
}

# 803. forward jump (id: 1472)
if (-not (Test-Path '$AssetsDir/forward_jump.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1472-uZKq7lo.gif' -OutFile '$AssetsDir/forward_jump.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: forward_jump.gif'
} else {
    $skip++
}

# 804. forward lunge (male) (id: 3470)
if (-not (Test-Path '$AssetsDir/forward_lunge_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3470-kMzUs9Y.gif' -OutFile '$AssetsDir/forward_lunge_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: forward_lunge_male.gif'
} else {
    $skip++
}

# 805. frankenstein squat (id: 3194)
if (-not (Test-Path '$AssetsDir/frankenstein_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3194-bdWcbaU.gif' -OutFile '$AssetsDir/frankenstein_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: frankenstein_squat.gif'
} else {
    $skip++
}

# 806. frog crunch (id: 2429)
if (-not (Test-Path '$AssetsDir/frog_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2429-FFRP97T.gif' -OutFile '$AssetsDir/frog_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: frog_crunch.gif'
} else {
    $skip++
}

# 807. frog planche (id: 3301)
if (-not (Test-Path '$AssetsDir/frog_planche.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3301-rQhGcin.gif' -OutFile '$AssetsDir/frog_planche.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: frog_planche.gif'
} else {
    $skip++
}

# 808. front lever (id: 3296)
if (-not (Test-Path '$AssetsDir/front_lever.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3296-PkCN2lv.gif' -OutFile '$AssetsDir/front_lever.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: front_lever.gif'
} else {
    $skip++
}

# 809. front lever reps (id: 3295)
if (-not (Test-Path '$AssetsDir/front_lever_reps.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3295-hbY9wqG.gif' -OutFile '$AssetsDir/front_lever_reps.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: front_lever_reps.gif'
} else {
    $skip++
}

# 810. front plank with twist (id: 0464)
if (-not (Test-Path '$AssetsDir/front_plank_with_twist.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0464-CosupLu.gif' -OutFile '$AssetsDir/front_plank_with_twist.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: front_plank_with_twist.gif'
} else {
    $skip++
}

# 811. full maltese (id: 3315)
if (-not (Test-Path '$AssetsDir/full_maltese.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3315-YRaCa5Y.gif' -OutFile '$AssetsDir/full_maltese.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: full_maltese.gif'
} else {
    $skip++
}

# 812. full planche (id: 3299)
if (-not (Test-Path '$AssetsDir/full_planche.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3299-YZ4961r.gif' -OutFile '$AssetsDir/full_planche.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: full_planche.gif'
} else {
    $skip++
}

# 813. full planche push-up (id: 3327)
if (-not (Test-Path '$AssetsDir/full_planche_push-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3327-gw9PqGk.gif' -OutFile '$AssetsDir/full_planche_push-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: full_planche_push-up.gif'
} else {
    $skip++
}

# 814. gironda sternum chin (id: 0466)
if (-not (Test-Path '$AssetsDir/gironda_sternum_chin.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0466-IL0JUxR.gif' -OutFile '$AssetsDir/gironda_sternum_chin.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: gironda_sternum_chin.gif'
} else {
    $skip++
}

# 815. glute bridge march (id: 3561)
if (-not (Test-Path '$AssetsDir/glute_bridge_march.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3561-GibBPPg.gif' -OutFile '$AssetsDir/glute_bridge_march.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: glute_bridge_march.gif'
} else {
    $skip++
}

# 816. glute bridge two legs on bench (male) (id: 3523)
if (-not (Test-Path '$AssetsDir/glute_bridge_two_legs_on_bench_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3523-aWedzZX.gif' -OutFile '$AssetsDir/glute_bridge_two_legs_on_bench_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: glute_bridge_two_legs_on_bench_male.gif'
} else {
    $skip++
}

# 817. glute-ham raise (id: 3193)
if (-not (Test-Path '$AssetsDir/glute-ham_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3193-Vvwjz6N.gif' -OutFile '$AssetsDir/glute-ham_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: glute-ham_raise.gif'
} else {
    $skip++
}

# 818. gorilla chin (id: 0467)
if (-not (Test-Path '$AssetsDir/gorilla_chin.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0467-bmwlYvD.gif' -OutFile '$AssetsDir/gorilla_chin.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: gorilla_chin.gif'
} else {
    $skip++
}

# 819. groin crunch (id: 0469)
if (-not (Test-Path '$AssetsDir/groin_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0469-mWppALS.gif' -OutFile '$AssetsDir/groin_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: groin_crunch.gif'
} else {
    $skip++
}

# 820. hack calf raise (id: 1383)
if (-not (Test-Path '$AssetsDir/hack_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1383-2ORFMoR.gif' -OutFile '$AssetsDir/hack_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: hack_calf_raise.gif'
} else {
    $skip++
}

# 821. hack one leg calf raise (id: 1384)
if (-not (Test-Path '$AssetsDir/hack_one_leg_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1384-AxFoqAD.gif' -OutFile '$AssetsDir/hack_one_leg_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: hack_one_leg_calf_raise.gif'
} else {
    $skip++
}

# 822. half knee bends (male) (id: 3221)
if (-not (Test-Path '$AssetsDir/half_knee_bends_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3221-ia6kIIl.gif' -OutFile '$AssetsDir/half_knee_bends_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: half_knee_bends_male.gif'
} else {
    $skip++
}

# 823. half sit-up (male) (id: 3202)
if (-not (Test-Path '$AssetsDir/half_sit-up_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3202-iQ241UP.gif' -OutFile '$AssetsDir/half_sit-up_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: half_sit-up_male.gif'
} else {
    $skip++
}

# 824. hamstring stretch (id: 1511)
if (-not (Test-Path '$AssetsDir/hamstring_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1511-99rWm7w.gif' -OutFile '$AssetsDir/hamstring_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: hamstring_stretch.gif'
} else {
    $skip++
}

# 825. hands bike (id: 2139)
if (-not (Test-Path '$AssetsDir/hands_bike.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2139-pAIWRGu.gif' -OutFile '$AssetsDir/hands_bike.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: hands_bike.gif'
} else {
    $skip++
}

# 826. hands clasped circular toe touch (male) (id: 3218)
if (-not (Test-Path '$AssetsDir/hands_clasped_circular_toe_touch_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3218-B5xca8s.gif' -OutFile '$AssetsDir/hands_clasped_circular_toe_touch_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: hands_clasped_circular_toe_touch_male.gif'
} else {
    $skip++
}

# 827. hands reversed clasped circular toe touch (male) (id: 3215)
if (-not (Test-Path '$AssetsDir/hands_reversed_clasped_circular_toe_touch_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3215-yq3GAJX.gif' -OutFile '$AssetsDir/hands_reversed_clasped_circular_toe_touch_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: hands_reversed_clasped_circular_toe_touch_male.gif'
} else {
    $skip++
}

# 828. handstand (id: 3302)
if (-not (Test-Path '$AssetsDir/handstand.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3302-XooAdhl.gif' -OutFile '$AssetsDir/handstand.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: handstand.gif'
} else {
    $skip++
}

# 829. handstand push-up (id: 0471)
if (-not (Test-Path '$AssetsDir/handstand_push-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0471-rQxwMxO.gif' -OutFile '$AssetsDir/handstand_push-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: handstand_push-up.gif'
} else {
    $skip++
}

# 830. hanging leg hip raise (id: 1764)
if (-not (Test-Path '$AssetsDir/hanging_leg_hip_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1764-VEcJRo2.gif' -OutFile '$AssetsDir/hanging_leg_hip_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: hanging_leg_hip_raise.gif'
} else {
    $skip++
}

# 831. hanging leg raise (id: 0472)
if (-not (Test-Path '$AssetsDir/hanging_leg_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0472-I3tsCnC.gif' -OutFile '$AssetsDir/hanging_leg_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: hanging_leg_raise.gif'
} else {
    $skip++
}

# 832. hanging oblique knee raise (id: 1761)
if (-not (Test-Path '$AssetsDir/hanging_oblique_knee_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1761-BaE7O6U.gif' -OutFile '$AssetsDir/hanging_oblique_knee_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: hanging_oblique_knee_raise.gif'
} else {
    $skip++
}

# 833. hanging pike (id: 0473)
if (-not (Test-Path '$AssetsDir/hanging_pike.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0473-nuBF9MO.gif' -OutFile '$AssetsDir/hanging_pike.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: hanging_pike.gif'
} else {
    $skip++
}

# 834. hanging straight leg hip raise (id: 0474)
if (-not (Test-Path '$AssetsDir/hanging_straight_leg_hip_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0474-pj0X0tF.gif' -OutFile '$AssetsDir/hanging_straight_leg_hip_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: hanging_straight_leg_hip_raise.gif'
} else {
    $skip++
}

# 835. hanging straight leg raise (id: 0475)
if (-not (Test-Path '$AssetsDir/hanging_straight_leg_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0475-4Ml7QFO.gif' -OutFile '$AssetsDir/hanging_straight_leg_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: hanging_straight_leg_raise.gif'
} else {
    $skip++
}

# 836. hanging straight twisting leg hip raise (id: 0476)
if (-not (Test-Path '$AssetsDir/hanging_straight_twisting_leg_hip_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0476-Q6bvyen.gif' -OutFile '$AssetsDir/hanging_straight_twisting_leg_hip_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: hanging_straight_twisting_leg_hip_raise.gif'
} else {
    $skip++
}

# 837. high knee against wall (id: 3636)
if (-not (Test-Path '$AssetsDir/high_knee_against_wall.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3636-ealLwvX.gif' -OutFile '$AssetsDir/high_knee_against_wall.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: high_knee_against_wall.gif'
} else {
    $skip++
}

# 838. hip raise (bent knee) (id: 0484)
if (-not (Test-Path '$AssetsDir/hip_raise_bent_knee.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0484-196HJGw.gif' -OutFile '$AssetsDir/hip_raise_bent_knee.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: hip_raise_bent_knee.gif'
} else {
    $skip++
}

# 839. hug keens to chest (id: 1418)
if (-not (Test-Path '$AssetsDir/hug_keens_to_chest.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1418-znP9SIh.gif' -OutFile '$AssetsDir/hug_keens_to_chest.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: hug_keens_to_chest.gif'
} else {
    $skip++
}

# 840. hyght dumbbell fly (id: 3234)
if (-not (Test-Path '$AssetsDir/hyght_dumbbell_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3234-P9ZRyLT.gif' -OutFile '$AssetsDir/hyght_dumbbell_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: hyght_dumbbell_fly.gif'
} else {
    $skip++
}

# 841. hyperextension (id: 0489)
if (-not (Test-Path '$AssetsDir/hyperextension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0489-zhMwOwE.gif' -OutFile '$AssetsDir/hyperextension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: hyperextension.gif'
} else {
    $skip++
}

# 842. hyperextension (on bench) (id: 0488)
if (-not (Test-Path '$AssetsDir/hyperextension_on_bench.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0488-zkgRrbK.gif' -OutFile '$AssetsDir/hyperextension_on_bench.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: hyperextension_on_bench.gif'
} else {
    $skip++
}

# 843. impossible dips (id: 3289)
if (-not (Test-Path '$AssetsDir/impossible_dips.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3289-05Cf2v8.gif' -OutFile '$AssetsDir/impossible_dips.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: impossible_dips.gif'
} else {
    $skip++
}

# 844. inchworm (id: 1471)
if (-not (Test-Path '$AssetsDir/inchworm.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1471-ZgsNQ6d.gif' -OutFile '$AssetsDir/inchworm.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: inchworm.gif'
} else {
    $skip++
}

# 845. inchworm v. 2 (id: 3698)
if (-not (Test-Path '$AssetsDir/inchworm_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3698-TV87DNB.gif' -OutFile '$AssetsDir/inchworm_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: inchworm_v_2.gif'
} else {
    $skip++
}

# 846. incline close-grip push-up (id: 0490)
if (-not (Test-Path '$AssetsDir/incline_close-grip_push-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0490-1YB40kg.gif' -OutFile '$AssetsDir/incline_close-grip_push-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: incline_close-grip_push-up.gif'
} else {
    $skip++
}

# 847. incline leg hip raise (leg straight) (id: 0491)
if (-not (Test-Path '$AssetsDir/incline_leg_hip_raise_leg_straight.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0491-eVxAzgz.gif' -OutFile '$AssetsDir/incline_leg_hip_raise_leg_straight.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: incline_leg_hip_raise_leg_straight.gif'
} else {
    $skip++
}

# 848. incline push up depth jump (id: 0492)
if (-not (Test-Path '$AssetsDir/incline_push_up_depth_jump.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0492-CB8WET1.gif' -OutFile '$AssetsDir/incline_push_up_depth_jump.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: incline_push_up_depth_jump.gif'
} else {
    $skip++
}

# 849. incline push-up (id: 0493)
if (-not (Test-Path '$AssetsDir/incline_push-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0493-B1EVP9F.gif' -OutFile '$AssetsDir/incline_push-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: incline_push-up.gif'
} else {
    $skip++
}

# 850. incline push-up (on box) (id: 3785)
if (-not (Test-Path '$AssetsDir/incline_push-up_on_box.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3785-F7vjXqT.gif' -OutFile '$AssetsDir/incline_push-up_on_box.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: incline_push-up_on_box.gif'
} else {
    $skip++
}

# 851. incline reverse grip push-up (id: 0494)
if (-not (Test-Path '$AssetsDir/incline_reverse_grip_push-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0494-XaaRnRn.gif' -OutFile '$AssetsDir/incline_reverse_grip_push-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: incline_reverse_grip_push-up.gif'
} else {
    $skip++
}

# 852. incline scapula push up (id: 3011)
if (-not (Test-Path '$AssetsDir/incline_scapula_push_up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3011-GdMa1ET.gif' -OutFile '$AssetsDir/incline_scapula_push_up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: incline_scapula_push_up.gif'
} else {
    $skip++
}

# 853. incline twisting sit-up (id: 0495)
if (-not (Test-Path '$AssetsDir/incline_twisting_sit-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0495-9ZGZuOD.gif' -OutFile '$AssetsDir/incline_twisting_sit-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: incline_twisting_sit-up.gif'
} else {
    $skip++
}

# 854. intermediate hip flexor and quad stretch (id: 1564)
if (-not (Test-Path '$AssetsDir/intermediate_hip_flexor_and_quad_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1564-tFGKm99.gif' -OutFile '$AssetsDir/intermediate_hip_flexor_and_quad_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: intermediate_hip_flexor_and_quad_stretch.gif'
} else {
    $skip++
}

# 855. inverse leg curl (bench support) (id: 0496)
if (-not (Test-Path '$AssetsDir/inverse_leg_curl_bench_support.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0496-ms7tjSG.gif' -OutFile '$AssetsDir/inverse_leg_curl_bench_support.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: inverse_leg_curl_bench_support.gif'
} else {
    $skip++
}

# 856. inverse leg curl (on pull-up cable machine) (id: 2400)
if (-not (Test-Path '$AssetsDir/inverse_leg_curl_on_pull-up_cable_machine.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2400-0rHfvy9.gif' -OutFile '$AssetsDir/inverse_leg_curl_on_pull-up_cable_machine.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: inverse_leg_curl_on_pull-up_cable_machine.gif'
} else {
    $skip++
}

# 857. inverted row (id: 0499)
if (-not (Test-Path '$AssetsDir/inverted_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0499-bZGHsAZ.gif' -OutFile '$AssetsDir/inverted_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: inverted_row.gif'
} else {
    $skip++
}

# 858. inverted row bent knees (id: 2300)
if (-not (Test-Path '$AssetsDir/inverted_row_bent_knees.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2300-VPPtusI.gif' -OutFile '$AssetsDir/inverted_row_bent_knees.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: inverted_row_bent_knees.gif'
} else {
    $skip++
}

# 859. inverted row on bench (id: 2298)
if (-not (Test-Path '$AssetsDir/inverted_row_on_bench.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2298-Mxa7Cr8.gif' -OutFile '$AssetsDir/inverted_row_on_bench.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: inverted_row_on_bench.gif'
} else {
    $skip++
}

# 860. inverted row v. 2 (id: 0497)
if (-not (Test-Path '$AssetsDir/inverted_row_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0497-uX3sUBz.gif' -OutFile '$AssetsDir/inverted_row_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: inverted_row_v_2.gif'
} else {
    $skip++
}

# 861. inverted row with straps (id: 0498)
if (-not (Test-Path '$AssetsDir/inverted_row_with_straps.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0498-jdiExfW.gif' -OutFile '$AssetsDir/inverted_row_with_straps.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: inverted_row_with_straps.gif'
} else {
    $skip++
}

# 862. iron cross stretch (id: 1419)
if (-not (Test-Path '$AssetsDir/iron_cross_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1419-pZwUsKB.gif' -OutFile '$AssetsDir/iron_cross_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: iron_cross_stretch.gif'
} else {
    $skip++
}

# 863. isometric chest squeeze (id: 1297)
if (-not (Test-Path '$AssetsDir/isometric_chest_squeeze.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1297-HbSG1Pw.gif' -OutFile '$AssetsDir/isometric_chest_squeeze.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: isometric_chest_squeeze.gif'
} else {
    $skip++
}

# 864. isometric wipers (id: 0500)
if (-not (Test-Path '$AssetsDir/isometric_wipers.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0500-11wrviz.gif' -OutFile '$AssetsDir/isometric_wipers.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: isometric_wipers.gif'
} else {
    $skip++
}

# 865. jack burpee (id: 0501)
if (-not (Test-Path '$AssetsDir/jack_burpee.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0501-mr7pkqP.gif' -OutFile '$AssetsDir/jack_burpee.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: jack_burpee.gif'
} else {
    $skip++
}

# 866. jack jump (male) (id: 3224)
if (-not (Test-Path '$AssetsDir/jack_jump_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3224-1g5bPpA.gif' -OutFile '$AssetsDir/jack_jump_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: jack_jump_male.gif'
} else {
    $skip++
}

# 867. jackknife sit-up (id: 0507)
if (-not (Test-Path '$AssetsDir/jackknife_sit-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0507-mbkgB44.gif' -OutFile '$AssetsDir/jackknife_sit-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: jackknife_sit-up.gif'
} else {
    $skip++
}

# 868. janda sit-up (id: 0508)
if (-not (Test-Path '$AssetsDir/janda_sit-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0508-1GPHRyK.gif' -OutFile '$AssetsDir/janda_sit-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: janda_sit-up.gif'
} else {
    $skip++
}

# 869. jump rope (id: 2612)
if (-not (Test-Path '$AssetsDir/jump_rope.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2612-e1e76I2.gif' -OutFile '$AssetsDir/jump_rope.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: jump_rope.gif'
} else {
    $skip++
}

# 870. jump squat (id: 0514)
if (-not (Test-Path '$AssetsDir/jump_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0514-LIlE5Tn.gif' -OutFile '$AssetsDir/jump_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: jump_squat.gif'
} else {
    $skip++
}

# 871. jump squat v. 2 (id: 0513)
if (-not (Test-Path '$AssetsDir/jump_squat_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0513-TDYiji6.gif' -OutFile '$AssetsDir/jump_squat_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: jump_squat_v_2.gif'
} else {
    $skip++
}

# 872. kettlebell advanced windmill (id: 0517)
if (-not (Test-Path '$AssetsDir/kettlebell_advanced_windmill.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0517-Kal9cQQ.gif' -OutFile '$AssetsDir/kettlebell_advanced_windmill.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_advanced_windmill.gif'
} else {
    $skip++
}

# 873. kettlebell alternating hang clean (id: 0518)
if (-not (Test-Path '$AssetsDir/kettlebell_alternating_hang_clean.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0518-I4tibZG.gif' -OutFile '$AssetsDir/kettlebell_alternating_hang_clean.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_alternating_hang_clean.gif'
} else {
    $skip++
}

# 874. kettlebell alternating press (id: 0520)
if (-not (Test-Path '$AssetsDir/kettlebell_alternating_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0520-5KLbZWx.gif' -OutFile '$AssetsDir/kettlebell_alternating_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_alternating_press.gif'
} else {
    $skip++
}

# 875. kettlebell alternating press on floor (id: 0519)
if (-not (Test-Path '$AssetsDir/kettlebell_alternating_press_on_floor.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0519-7w6i0vE.gif' -OutFile '$AssetsDir/kettlebell_alternating_press_on_floor.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_alternating_press_on_floor.gif'
} else {
    $skip++
}

# 876. kettlebell alternating renegade row (id: 0521)
if (-not (Test-Path '$AssetsDir/kettlebell_alternating_renegade_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0521-b9kqlBy.gif' -OutFile '$AssetsDir/kettlebell_alternating_renegade_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_alternating_renegade_row.gif'
} else {
    $skip++
}

# 877. kettlebell alternating row (id: 0522)
if (-not (Test-Path '$AssetsDir/kettlebell_alternating_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0522-Ca76jUE.gif' -OutFile '$AssetsDir/kettlebell_alternating_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_alternating_row.gif'
} else {
    $skip++
}

# 878. kettlebell arnold press (id: 0523)
if (-not (Test-Path '$AssetsDir/kettlebell_arnold_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0523-UM8mgyG.gif' -OutFile '$AssetsDir/kettlebell_arnold_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_arnold_press.gif'
} else {
    $skip++
}

# 879. kettlebell bent press (id: 0524)
if (-not (Test-Path '$AssetsDir/kettlebell_bent_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0524-kjE55n5.gif' -OutFile '$AssetsDir/kettlebell_bent_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_bent_press.gif'
} else {
    $skip++
}

# 880. kettlebell bottoms up clean from the hang position (id: 0525)
if (-not (Test-Path '$AssetsDir/kettlebell_bottoms_up_clean_from_the_hang_position.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0525-4KJEpzb.gif' -OutFile '$AssetsDir/kettlebell_bottoms_up_clean_from_the_hang_position.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_bottoms_up_clean_from_the_hang_position.gif'
} else {
    $skip++
}

# 881. kettlebell double alternating hang clean (id: 0526)
if (-not (Test-Path '$AssetsDir/kettlebell_double_alternating_hang_clean.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0526-a4F9Oyc.gif' -OutFile '$AssetsDir/kettlebell_double_alternating_hang_clean.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_double_alternating_hang_clean.gif'
} else {
    $skip++
}

# 882. kettlebell double jerk (id: 0527)
if (-not (Test-Path '$AssetsDir/kettlebell_double_jerk.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0527-tznL2Ad.gif' -OutFile '$AssetsDir/kettlebell_double_jerk.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_double_jerk.gif'
} else {
    $skip++
}

# 883. kettlebell double push press (id: 0528)
if (-not (Test-Path '$AssetsDir/kettlebell_double_push_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0528-I4KkPdl.gif' -OutFile '$AssetsDir/kettlebell_double_push_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_double_push_press.gif'
} else {
    $skip++
}

# 884. kettlebell double snatch (id: 0529)
if (-not (Test-Path '$AssetsDir/kettlebell_double_snatch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0529-M74kdvm.gif' -OutFile '$AssetsDir/kettlebell_double_snatch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_double_snatch.gif'
} else {
    $skip++
}

# 885. kettlebell double windmill (id: 0530)
if (-not (Test-Path '$AssetsDir/kettlebell_double_windmill.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0530-OaE7CpD.gif' -OutFile '$AssetsDir/kettlebell_double_windmill.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_double_windmill.gif'
} else {
    $skip++
}

# 886. kettlebell extended range one arm press on floor (id: 0531)
if (-not (Test-Path '$AssetsDir/kettlebell_extended_range_one_arm_press_on_floor.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0531-rseLfH3.gif' -OutFile '$AssetsDir/kettlebell_extended_range_one_arm_press_on_floor.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_extended_range_one_arm_press_on_floor.gif'
} else {
    $skip++
}

# 887. kettlebell figure 8 (id: 0532)
if (-not (Test-Path '$AssetsDir/kettlebell_figure_8.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0532-L4ay0PW.gif' -OutFile '$AssetsDir/kettlebell_figure_8.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_figure_8.gif'
} else {
    $skip++
}

# 888. kettlebell front squat (id: 0533)
if (-not (Test-Path '$AssetsDir/kettlebell_front_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0533-DB0n8AG.gif' -OutFile '$AssetsDir/kettlebell_front_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_front_squat.gif'
} else {
    $skip++
}

# 889. kettlebell goblet squat (id: 0534)
if (-not (Test-Path '$AssetsDir/kettlebell_goblet_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0534-ZA8b5hc.gif' -OutFile '$AssetsDir/kettlebell_goblet_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_goblet_squat.gif'
} else {
    $skip++
}

# 890. kettlebell hang clean (id: 0535)
if (-not (Test-Path '$AssetsDir/kettlebell_hang_clean.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0535-LHWF7us.gif' -OutFile '$AssetsDir/kettlebell_hang_clean.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_hang_clean.gif'
} else {
    $skip++
}

# 891. kettlebell lunge pass through (id: 0536)
if (-not (Test-Path '$AssetsDir/kettlebell_lunge_pass_through.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0536-WKMQzCD.gif' -OutFile '$AssetsDir/kettlebell_lunge_pass_through.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_lunge_pass_through.gif'
} else {
    $skip++
}

# 892. kettlebell one arm clean and jerk (id: 0537)
if (-not (Test-Path '$AssetsDir/kettlebell_one_arm_clean_and_jerk.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0537-vzAxBtt.gif' -OutFile '$AssetsDir/kettlebell_one_arm_clean_and_jerk.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_one_arm_clean_and_jerk.gif'
} else {
    $skip++
}

# 893. kettlebell one arm floor press (id: 1298)
if (-not (Test-Path '$AssetsDir/kettlebell_one_arm_floor_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1298-rg59QCH.gif' -OutFile '$AssetsDir/kettlebell_one_arm_floor_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_one_arm_floor_press.gif'
} else {
    $skip++
}

# 894. kettlebell one arm jerk (id: 0538)
if (-not (Test-Path '$AssetsDir/kettlebell_one_arm_jerk.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0538-S37C94C.gif' -OutFile '$AssetsDir/kettlebell_one_arm_jerk.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_one_arm_jerk.gif'
} else {
    $skip++
}

# 895. kettlebell one arm military press to the side (id: 0539)
if (-not (Test-Path '$AssetsDir/kettlebell_one_arm_military_press_to_the_side.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0539-yCvYdi7.gif' -OutFile '$AssetsDir/kettlebell_one_arm_military_press_to_the_side.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_one_arm_military_press_to_the_side.gif'
} else {
    $skip++
}

# 896. kettlebell one arm push press (id: 0540)
if (-not (Test-Path '$AssetsDir/kettlebell_one_arm_push_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0540-osdXT3K.gif' -OutFile '$AssetsDir/kettlebell_one_arm_push_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_one_arm_push_press.gif'
} else {
    $skip++
}

# 897. kettlebell one arm row (id: 0541)
if (-not (Test-Path '$AssetsDir/kettlebell_one_arm_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0541-g9AsZ8P.gif' -OutFile '$AssetsDir/kettlebell_one_arm_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_one_arm_row.gif'
} else {
    $skip++
}

# 898. kettlebell one arm snatch (id: 0542)
if (-not (Test-Path '$AssetsDir/kettlebell_one_arm_snatch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0542-aXcUyKb.gif' -OutFile '$AssetsDir/kettlebell_one_arm_snatch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_one_arm_snatch.gif'
} else {
    $skip++
}

# 899. kettlebell pirate supper legs (id: 0543)
if (-not (Test-Path '$AssetsDir/kettlebell_pirate_supper_legs.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0543-kuXhl0o.gif' -OutFile '$AssetsDir/kettlebell_pirate_supper_legs.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_pirate_supper_legs.gif'
} else {
    $skip++
}

# 900. kettlebell pistol squat (id: 0544)
if (-not (Test-Path '$AssetsDir/kettlebell_pistol_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0544-5bpPTHv.gif' -OutFile '$AssetsDir/kettlebell_pistol_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_pistol_squat.gif'
} else {
    $skip++
}

# 901. kettlebell plyo push-up (id: 0545)
if (-not (Test-Path '$AssetsDir/kettlebell_plyo_push-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0545-ktf3nvW.gif' -OutFile '$AssetsDir/kettlebell_plyo_push-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_plyo_push-up.gif'
} else {
    $skip++
}

# 902. kettlebell seated press (id: 0546)
if (-not (Test-Path '$AssetsDir/kettlebell_seated_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0546-BkxB8LW.gif' -OutFile '$AssetsDir/kettlebell_seated_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_seated_press.gif'
} else {
    $skip++
}

# 903. kettlebell seated two arm military press (id: 1438)
if (-not (Test-Path '$AssetsDir/kettlebell_seated_two_arm_military_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1438-ZEkjZDi.gif' -OutFile '$AssetsDir/kettlebell_seated_two_arm_military_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_seated_two_arm_military_press.gif'
} else {
    $skip++
}

# 904. kettlebell seesaw press (id: 0547)
if (-not (Test-Path '$AssetsDir/kettlebell_seesaw_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0547-UDm6cGl.gif' -OutFile '$AssetsDir/kettlebell_seesaw_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_seesaw_press.gif'
} else {
    $skip++
}

# 905. kettlebell sumo high pull (id: 0548)
if (-not (Test-Path '$AssetsDir/kettlebell_sumo_high_pull.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0548-8ARQ9Hw.gif' -OutFile '$AssetsDir/kettlebell_sumo_high_pull.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_sumo_high_pull.gif'
} else {
    $skip++
}

# 906. kettlebell swing (id: 0549)
if (-not (Test-Path '$AssetsDir/kettlebell_swing.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0549-UHJlbu3.gif' -OutFile '$AssetsDir/kettlebell_swing.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_swing.gif'
} else {
    $skip++
}

# 907. kettlebell thruster (id: 0550)
if (-not (Test-Path '$AssetsDir/kettlebell_thruster.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0550-yWxMvB5.gif' -OutFile '$AssetsDir/kettlebell_thruster.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_thruster.gif'
} else {
    $skip++
}

# 908. kettlebell turkish get up (squat style) (id: 0551)
if (-not (Test-Path '$AssetsDir/kettlebell_turkish_get_up_squat_style.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0551-Ha7SZ3y.gif' -OutFile '$AssetsDir/kettlebell_turkish_get_up_squat_style.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_turkish_get_up_squat_style.gif'
} else {
    $skip++
}

# 909. kettlebell two arm clean (id: 0552)
if (-not (Test-Path '$AssetsDir/kettlebell_two_arm_clean.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0552-7Ba7bQ2.gif' -OutFile '$AssetsDir/kettlebell_two_arm_clean.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_two_arm_clean.gif'
} else {
    $skip++
}

# 910. kettlebell two arm military press (id: 0553)
if (-not (Test-Path '$AssetsDir/kettlebell_two_arm_military_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0553-blBXysN.gif' -OutFile '$AssetsDir/kettlebell_two_arm_military_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_two_arm_military_press.gif'
} else {
    $skip++
}

# 911. kettlebell two arm row (id: 1345)
if (-not (Test-Path '$AssetsDir/kettlebell_two_arm_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1345-wf24o8S.gif' -OutFile '$AssetsDir/kettlebell_two_arm_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_two_arm_row.gif'
} else {
    $skip++
}

# 912. kettlebell windmill (id: 0554)
if (-not (Test-Path '$AssetsDir/kettlebell_windmill.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0554-9Tkqa9O.gif' -OutFile '$AssetsDir/kettlebell_windmill.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kettlebell_windmill.gif'
} else {
    $skip++
}

# 913. kick out sit (id: 0555)
if (-not (Test-Path '$AssetsDir/kick_out_sit.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0555-v7p5bYl.gif' -OutFile '$AssetsDir/kick_out_sit.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kick_out_sit.gif'
} else {
    $skip++
}

# 914. kipping muscle up (id: 0558)
if (-not (Test-Path '$AssetsDir/kipping_muscle_up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0558-pM07UxU.gif' -OutFile '$AssetsDir/kipping_muscle_up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kipping_muscle_up.gif'
} else {
    $skip++
}

# 915. knee touch crunch (id: 3640)
if (-not (Test-Path '$AssetsDir/knee_touch_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3640-dTg95eZ.gif' -OutFile '$AssetsDir/knee_touch_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: knee_touch_crunch.gif'
} else {
    $skip++
}

# 916. kneeling jump squat (id: 1420)
if (-not (Test-Path '$AssetsDir/kneeling_jump_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1420-UgDm3oy.gif' -OutFile '$AssetsDir/kneeling_jump_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kneeling_jump_squat.gif'
} else {
    $skip++
}

# 917. kneeling lat stretch (id: 1346)
if (-not (Test-Path '$AssetsDir/kneeling_lat_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1346-f38OEuO.gif' -OutFile '$AssetsDir/kneeling_lat_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kneeling_lat_stretch.gif'
} else {
    $skip++
}

# 918. kneeling plank tap shoulder (male) (id: 3239)
if (-not (Test-Path '$AssetsDir/kneeling_plank_tap_shoulder_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3239-h1ezqSu.gif' -OutFile '$AssetsDir/kneeling_plank_tap_shoulder_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kneeling_plank_tap_shoulder_male.gif'
} else {
    $skip++
}

# 919. kneeling push-up (male) (id: 3211)
if (-not (Test-Path '$AssetsDir/kneeling_push-up_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3211-ZOuKWir.gif' -OutFile '$AssetsDir/kneeling_push-up_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: kneeling_push-up_male.gif'
} else {
    $skip++
}

# 920. korean dips (id: 3288)
if (-not (Test-Path '$AssetsDir/korean_dips.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3288-rWoBmi5.gif' -OutFile '$AssetsDir/korean_dips.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: korean_dips.gif'
} else {
    $skip++
}

# 921. l-pull-up (id: 3418)
if (-not (Test-Path '$AssetsDir/l-pull-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3418-d1GgzTU.gif' -OutFile '$AssetsDir/l-pull-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: l-pull-up.gif'
} else {
    $skip++
}

# 922. l-sit on floor (id: 3419)
if (-not (Test-Path '$AssetsDir/l-sit_on_floor.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3419-UpWmA5E.gif' -OutFile '$AssetsDir/l-sit_on_floor.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: l-sit_on_floor.gif'
} else {
    $skip++
}

# 923. landmine 180 (id: 0562)
if (-not (Test-Path '$AssetsDir/landmine_180.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0562-QYysSLV.gif' -OutFile '$AssetsDir/landmine_180.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: landmine_180.gif'
} else {
    $skip++
}

# 924. landmine lateral raise (id: 3237)
if (-not (Test-Path '$AssetsDir/landmine_lateral_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3237-eXMFHww.gif' -OutFile '$AssetsDir/landmine_lateral_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: landmine_lateral_raise.gif'
} else {
    $skip++
}

# 925. lean planche (id: 3300)
if (-not (Test-Path '$AssetsDir/lean_planche.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3300-LYJodFS.gif' -OutFile '$AssetsDir/lean_planche.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lean_planche.gif'
} else {
    $skip++
}

# 926. left hook. boxing (id: 2271)
if (-not (Test-Path '$AssetsDir/left_hook_boxing.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2271-hoXt6wv.gif' -OutFile '$AssetsDir/left_hook_boxing.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: left_hook_boxing.gif'
} else {
    $skip++
}

# 927. leg pull in flat bench (id: 0570)
if (-not (Test-Path '$AssetsDir/leg_pull_in_flat_bench.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0570-OyoZ3Pu.gif' -OutFile '$AssetsDir/leg_pull_in_flat_bench.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: leg_pull_in_flat_bench.gif'
} else {
    $skip++
}

# 928. leg up hamstring stretch (id: 1576)
if (-not (Test-Path '$AssetsDir/leg_up_hamstring_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1576-sU5BrfP.gif' -OutFile '$AssetsDir/leg_up_hamstring_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: leg_up_hamstring_stretch.gif'
} else {
    $skip++
}

# 929. lever alternate leg press (id: 2287)
if (-not (Test-Path '$AssetsDir/lever_alternate_leg_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2287-V07qpXy.gif' -OutFile '$AssetsDir/lever_alternate_leg_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_alternate_leg_press.gif'
} else {
    $skip++
}

# 930. lever alternating narrow grip seated row (id: 0571)
if (-not (Test-Path '$AssetsDir/lever_alternating_narrow_grip_seated_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0571-w2oRpuH.gif' -OutFile '$AssetsDir/lever_alternating_narrow_grip_seated_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_alternating_narrow_grip_seated_row.gif'
} else {
    $skip++
}

# 931. lever assisted chin-up (id: 0572)
if (-not (Test-Path '$AssetsDir/lever_assisted_chin-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0572-MaMuGH6.gif' -OutFile '$AssetsDir/lever_assisted_chin-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_assisted_chin-up.gif'
} else {
    $skip++
}

# 932. lever back extension (id: 0573)
if (-not (Test-Path '$AssetsDir/lever_back_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0573-rUXfn3R.gif' -OutFile '$AssetsDir/lever_back_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_back_extension.gif'
} else {
    $skip++
}

# 933. lever bent over row (id: 0574)
if (-not (Test-Path '$AssetsDir/lever_bent_over_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0574-X3cqyXz.gif' -OutFile '$AssetsDir/lever_bent_over_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_bent_over_row.gif'
} else {
    $skip++
}

# 934. lever bent-over row with v-bar (id: 3200)
if (-not (Test-Path '$AssetsDir/lever_bent-over_row_with_v-bar.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3200-LuBEORI.gif' -OutFile '$AssetsDir/lever_bent-over_row_with_v-bar.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_bent-over_row_with_v-bar.gif'
} else {
    $skip++
}

# 935. lever bicep curl (id: 0575)
if (-not (Test-Path '$AssetsDir/lever_bicep_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0575-q6y3OhV.gif' -OutFile '$AssetsDir/lever_bicep_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_bicep_curl.gif'
} else {
    $skip++
}

# 936. lever calf press (id: 2289)
if (-not (Test-Path '$AssetsDir/lever_calf_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2289-7B4F5nZ.gif' -OutFile '$AssetsDir/lever_calf_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_calf_press.gif'
} else {
    $skip++
}

# 937. lever chest press (id: 0577)
if (-not (Test-Path '$AssetsDir/lever_chest_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0577-T0yTjgW.gif' -OutFile '$AssetsDir/lever_chest_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_chest_press.gif'
} else {
    $skip++
}

# 938. lever chest press (id: 0576)
if (-not (Test-Path '$AssetsDir/lever_chest_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0576-DOoWcnA.gif' -OutFile '$AssetsDir/lever_chest_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_chest_press.gif'
} else {
    $skip++
}

# 939. lever deadlift (id: 0578)
if (-not (Test-Path '$AssetsDir/lever_deadlift.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0578-GUT8I22.gif' -OutFile '$AssetsDir/lever_deadlift.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_deadlift.gif'
} else {
    $skip++
}

# 940. lever decline chest press (id: 1300)
if (-not (Test-Path '$AssetsDir/lever_decline_chest_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1300-vsVoPHt.gif' -OutFile '$AssetsDir/lever_decline_chest_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_decline_chest_press.gif'
} else {
    $skip++
}

# 941. lever donkey calf raise (id: 1253)
if (-not (Test-Path '$AssetsDir/lever_donkey_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1253-C9LuR4A.gif' -OutFile '$AssetsDir/lever_donkey_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_donkey_calf_raise.gif'
} else {
    $skip++
}

# 942. lever front pulldown (id: 0579)
if (-not (Test-Path '$AssetsDir/lever_front_pulldown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0579-7F1DVzn.gif' -OutFile '$AssetsDir/lever_front_pulldown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_front_pulldown.gif'
} else {
    $skip++
}

# 943. lever gripless shrug (id: 0580)
if (-not (Test-Path '$AssetsDir/lever_gripless_shrug.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0580-f91FwXG.gif' -OutFile '$AssetsDir/lever_gripless_shrug.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_gripless_shrug.gif'
} else {
    $skip++
}

# 944. lever gripless shrug v. 2 (id: 1439)
if (-not (Test-Path '$AssetsDir/lever_gripless_shrug_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1439-cbuFJrn.gif' -OutFile '$AssetsDir/lever_gripless_shrug_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_gripless_shrug_v_2.gif'
} else {
    $skip++
}

# 945. lever gripper hands (id: 2288)
if (-not (Test-Path '$AssetsDir/lever_gripper_hands.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2288-mKwcrHn.gif' -OutFile '$AssetsDir/lever_gripper_hands.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_gripper_hands.gif'
} else {
    $skip++
}

# 946. lever hammer grip preacher curl (id: 1615)
if (-not (Test-Path '$AssetsDir/lever_hammer_grip_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1615-OAguZoG.gif' -OutFile '$AssetsDir/lever_hammer_grip_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_hammer_grip_preacher_curl.gif'
} else {
    $skip++
}

# 947. lever high row (id: 0581)
if (-not (Test-Path '$AssetsDir/lever_high_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0581-nZZZy9m.gif' -OutFile '$AssetsDir/lever_high_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_high_row.gif'
} else {
    $skip++
}

# 948. lever hip extension v. 2 (id: 2286)
if (-not (Test-Path '$AssetsDir/lever_hip_extension_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2286-OPqShYN.gif' -OutFile '$AssetsDir/lever_hip_extension_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_hip_extension_v_2.gif'
} else {
    $skip++
}

# 949. lever horizontal one leg press (id: 2611)
if (-not (Test-Path '$AssetsDir/lever_horizontal_one_leg_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2611-9KU9TYF.gif' -OutFile '$AssetsDir/lever_horizontal_one_leg_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_horizontal_one_leg_press.gif'
} else {
    $skip++
}

# 950. lever incline chest press (id: 1299)
if (-not (Test-Path '$AssetsDir/lever_incline_chest_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1299-jHAnWmT.gif' -OutFile '$AssetsDir/lever_incline_chest_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_incline_chest_press.gif'
} else {
    $skip++
}

# 951. lever incline chest press v. 2 (id: 1479)
if (-not (Test-Path '$AssetsDir/lever_incline_chest_press_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1479-o17Jfkt.gif' -OutFile '$AssetsDir/lever_incline_chest_press_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_incline_chest_press_v_2.gif'
} else {
    $skip++
}

# 952. lever kneeling leg curl (id: 0582)
if (-not (Test-Path '$AssetsDir/lever_kneeling_leg_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0582-nnmCTLN.gif' -OutFile '$AssetsDir/lever_kneeling_leg_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_kneeling_leg_curl.gif'
} else {
    $skip++
}

# 953. lever kneeling twist (id: 0583)
if (-not (Test-Path '$AssetsDir/lever_kneeling_twist.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0583-sZOR9EV.gif' -OutFile '$AssetsDir/lever_kneeling_twist.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_kneeling_twist.gif'
} else {
    $skip++
}

# 954. lever lateral raise (id: 0584)
if (-not (Test-Path '$AssetsDir/lever_lateral_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0584-dRTfGZT.gif' -OutFile '$AssetsDir/lever_lateral_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_lateral_raise.gif'
} else {
    $skip++
}

# 955. lever leg extension (id: 0585)
if (-not (Test-Path '$AssetsDir/lever_leg_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0585-my33uHU.gif' -OutFile '$AssetsDir/lever_leg_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_leg_extension.gif'
} else {
    $skip++
}

# 956. lever lying leg curl (id: 0586)
if (-not (Test-Path '$AssetsDir/lever_lying_leg_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0586-17lJ1kr.gif' -OutFile '$AssetsDir/lever_lying_leg_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_lying_leg_curl.gif'
} else {
    $skip++
}

# 957. lever lying two-one leg curl (id: 3195)
if (-not (Test-Path '$AssetsDir/lever_lying_two-one_leg_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3195-UXpKJoq.gif' -OutFile '$AssetsDir/lever_lying_two-one_leg_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_lying_two-one_leg_curl.gif'
} else {
    $skip++
}

# 958. lever military press (id: 0587)
if (-not (Test-Path '$AssetsDir/lever_military_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0587-CggQhII.gif' -OutFile '$AssetsDir/lever_military_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_military_press.gif'
} else {
    $skip++
}

# 959. lever narrow grip seated row (id: 0588)
if (-not (Test-Path '$AssetsDir/lever_narrow_grip_seated_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0588-IGjKj1v.gif' -OutFile '$AssetsDir/lever_narrow_grip_seated_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_narrow_grip_seated_row.gif'
} else {
    $skip++
}

# 960. lever one arm bent over row (id: 0589)
if (-not (Test-Path '$AssetsDir/lever_one_arm_bent_over_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0589-Fhdtwf3.gif' -OutFile '$AssetsDir/lever_one_arm_bent_over_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_one_arm_bent_over_row.gif'
} else {
    $skip++
}

# 961. lever one arm lateral high row (id: 1356)
if (-not (Test-Path '$AssetsDir/lever_one_arm_lateral_high_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1356-OIFMAp1.gif' -OutFile '$AssetsDir/lever_one_arm_lateral_high_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_one_arm_lateral_high_row.gif'
} else {
    $skip++
}

# 962. lever one arm lateral wide pulldown (id: 1347)
if (-not (Test-Path '$AssetsDir/lever_one_arm_lateral_wide_pulldown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1347-tTuZSDT.gif' -OutFile '$AssetsDir/lever_one_arm_lateral_wide_pulldown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_one_arm_lateral_wide_pulldown.gif'
} else {
    $skip++
}

# 963. lever one arm shoulder press (id: 0590)
if (-not (Test-Path '$AssetsDir/lever_one_arm_shoulder_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0590-2KGnL6M.gif' -OutFile '$AssetsDir/lever_one_arm_shoulder_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_one_arm_shoulder_press.gif'
} else {
    $skip++
}

# 964. lever overhand triceps dip (id: 0591)
if (-not (Test-Path '$AssetsDir/lever_overhand_triceps_dip.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0591-D5yqP2p.gif' -OutFile '$AssetsDir/lever_overhand_triceps_dip.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_overhand_triceps_dip.gif'
} else {
    $skip++
}

# 965. lever preacher curl (id: 0592)
if (-not (Test-Path '$AssetsDir/lever_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0592-b6hQYMb.gif' -OutFile '$AssetsDir/lever_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_preacher_curl.gif'
} else {
    $skip++
}

# 966. lever preacher curl v. 2 (id: 1614)
if (-not (Test-Path '$AssetsDir/lever_preacher_curl_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1614-ye84CTU.gif' -OutFile '$AssetsDir/lever_preacher_curl_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_preacher_curl_v_2.gif'
} else {
    $skip++
}

# 967. lever pullover (id: 2285)
if (-not (Test-Path '$AssetsDir/lever_pullover.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2285-4U7iLb5.gif' -OutFile '$AssetsDir/lever_pullover.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_pullover.gif'
} else {
    $skip++
}

# 968. lever reverse grip lateral pulldown (id: 2736)
if (-not (Test-Path '$AssetsDir/lever_reverse_grip_lateral_pulldown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2736-ky8FLU8.gif' -OutFile '$AssetsDir/lever_reverse_grip_lateral_pulldown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_reverse_grip_lateral_pulldown.gif'
} else {
    $skip++
}

# 969. lever reverse grip preacher curl (id: 1616)
if (-not (Test-Path '$AssetsDir/lever_reverse_grip_preacher_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1616-kj3hy6W.gif' -OutFile '$AssetsDir/lever_reverse_grip_preacher_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_reverse_grip_preacher_curl.gif'
} else {
    $skip++
}

# 970. lever reverse grip vertical row (id: 1348)
if (-not (Test-Path '$AssetsDir/lever_reverse_grip_vertical_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1348-ZqNOWQ6.gif' -OutFile '$AssetsDir/lever_reverse_grip_vertical_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_reverse_grip_vertical_row.gif'
} else {
    $skip++
}

# 971. lever reverse hyperextension (id: 0593)
if (-not (Test-Path '$AssetsDir/lever_reverse_hyperextension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0593-Krmb3cB.gif' -OutFile '$AssetsDir/lever_reverse_hyperextension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_reverse_hyperextension.gif'
} else {
    $skip++
}

# 972. lever reverse t-bar row (id: 1349)
if (-not (Test-Path '$AssetsDir/lever_reverse_t-bar_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1349-BgljGjd.gif' -OutFile '$AssetsDir/lever_reverse_t-bar_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_reverse_t-bar_row.gif'
} else {
    $skip++
}

# 973. lever rotary calf (id: 2315)
if (-not (Test-Path '$AssetsDir/lever_rotary_calf.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2315-MrgP9L6.gif' -OutFile '$AssetsDir/lever_rotary_calf.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_rotary_calf.gif'
} else {
    $skip++
}

# 974. lever seated calf press (id: 2335)
if (-not (Test-Path '$AssetsDir/lever_seated_calf_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2335-Ie9UGty.gif' -OutFile '$AssetsDir/lever_seated_calf_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_seated_calf_press.gif'
} else {
    $skip++
}

# 975. lever seated calf raise (id: 0594)
if (-not (Test-Path '$AssetsDir/lever_seated_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0594-bOOdeyc.gif' -OutFile '$AssetsDir/lever_seated_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_seated_calf_raise.gif'
} else {
    $skip++
}

# 976. lever seated crunch (id: 1452)
if (-not (Test-Path '$AssetsDir/lever_seated_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1452-Wgaz7pm.gif' -OutFile '$AssetsDir/lever_seated_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_seated_crunch.gif'
} else {
    $skip++
}

# 977. lever seated crunch (chest pad) (id: 0595)
if (-not (Test-Path '$AssetsDir/lever_seated_crunch_chest_pad.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0595-ZnJHhMk.gif' -OutFile '$AssetsDir/lever_seated_crunch_chest_pad.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_seated_crunch_chest_pad.gif'
} else {
    $skip++
}

# 978. lever seated crunch v. 2 (id: 3760)
if (-not (Test-Path '$AssetsDir/lever_seated_crunch_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3760-eXFXCY0.gif' -OutFile '$AssetsDir/lever_seated_crunch_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_seated_crunch_v_2.gif'
} else {
    $skip++
}

# 979. lever seated dip (id: 1451)
if (-not (Test-Path '$AssetsDir/lever_seated_dip.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1451-BRImeP8.gif' -OutFile '$AssetsDir/lever_seated_dip.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_seated_dip.gif'
} else {
    $skip++
}

# 980. lever seated fly (id: 0596)
if (-not (Test-Path '$AssetsDir/lever_seated_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0596-v3xmPAR.gif' -OutFile '$AssetsDir/lever_seated_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_seated_fly.gif'
} else {
    $skip++
}

# 981. lever seated good morning (id: 3759)
if (-not (Test-Path '$AssetsDir/lever_seated_good_morning.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3759-XsCcxCC.gif' -OutFile '$AssetsDir/lever_seated_good_morning.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_seated_good_morning.gif'
} else {
    $skip++
}

# 982. lever seated hip abduction (id: 0597)
if (-not (Test-Path '$AssetsDir/lever_seated_hip_abduction.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0597-CHpahtl.gif' -OutFile '$AssetsDir/lever_seated_hip_abduction.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_seated_hip_abduction.gif'
} else {
    $skip++
}

# 983. lever seated hip adduction (id: 0598)
if (-not (Test-Path '$AssetsDir/lever_seated_hip_adduction.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0598-oHsrypV.gif' -OutFile '$AssetsDir/lever_seated_hip_adduction.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_seated_hip_adduction.gif'
} else {
    $skip++
}

# 984. lever seated leg curl (id: 0599)
if (-not (Test-Path '$AssetsDir/lever_seated_leg_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0599-Zg3XY7P.gif' -OutFile '$AssetsDir/lever_seated_leg_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_seated_leg_curl.gif'
} else {
    $skip++
}

# 985. lever seated leg raise crunch (id: 0600)
if (-not (Test-Path '$AssetsDir/lever_seated_leg_raise_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0600-PQ2AtC3.gif' -OutFile '$AssetsDir/lever_seated_leg_raise_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_seated_leg_raise_crunch.gif'
} else {
    $skip++
}

# 986. lever seated reverse fly (id: 0602)
if (-not (Test-Path '$AssetsDir/lever_seated_reverse_fly.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0602-myfUsKf.gif' -OutFile '$AssetsDir/lever_seated_reverse_fly.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_seated_reverse_fly.gif'
} else {
    $skip++
}

# 987. lever seated reverse fly (parallel grip) (id: 0601)
if (-not (Test-Path '$AssetsDir/lever_seated_reverse_fly_parallel_grip.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0601-xiHiJcA.gif' -OutFile '$AssetsDir/lever_seated_reverse_fly_parallel_grip.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_seated_reverse_fly_parallel_grip.gif'
} else {
    $skip++
}

# 988. lever seated row (id: 1350)
if (-not (Test-Path '$AssetsDir/lever_seated_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1350-7I6LNUG.gif' -OutFile '$AssetsDir/lever_seated_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_seated_row.gif'
} else {
    $skip++
}

# 989. lever seated squat calf raise on leg press machine (id: 1385)
if (-not (Test-Path '$AssetsDir/lever_seated_squat_calf_raise_on_leg_press_machine.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1385-IeDEXTe.gif' -OutFile '$AssetsDir/lever_seated_squat_calf_raise_on_leg_press_machine.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_seated_squat_calf_raise_on_leg_press_machine.gif'
} else {
    $skip++
}

# 990. lever shoulder press (id: 0603)
if (-not (Test-Path '$AssetsDir/lever_shoulder_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0603-67n3r98.gif' -OutFile '$AssetsDir/lever_shoulder_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_shoulder_press.gif'
} else {
    $skip++
}

# 991. lever shoulder press v. 2 (id: 0869)
if (-not (Test-Path '$AssetsDir/lever_shoulder_press_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0869-vqsbmL0.gif' -OutFile '$AssetsDir/lever_shoulder_press_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_shoulder_press_v_2.gif'
} else {
    $skip++
}

# 992. lever shoulder press v. 3 (id: 2318)
if (-not (Test-Path '$AssetsDir/lever_shoulder_press_v_3.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2318-dNFYIU1.gif' -OutFile '$AssetsDir/lever_shoulder_press_v_3.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_shoulder_press_v_3.gif'
} else {
    $skip++
}

# 993. lever shrug (id: 0604)
if (-not (Test-Path '$AssetsDir/lever_shrug.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0604-ZZKbeMw.gif' -OutFile '$AssetsDir/lever_shrug.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_shrug.gif'
} else {
    $skip++
}

# 994. lever standing calf raise (id: 0605)
if (-not (Test-Path '$AssetsDir/lever_standing_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0605-ykUOVze.gif' -OutFile '$AssetsDir/lever_standing_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_standing_calf_raise.gif'
} else {
    $skip++
}

# 995. lever standing chest press (id: 3758)
if (-not (Test-Path '$AssetsDir/lever_standing_chest_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3758-WbNq5Xu.gif' -OutFile '$AssetsDir/lever_standing_chest_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_standing_chest_press.gif'
} else {
    $skip++
}

# 996. lever t bar row (id: 0606)
if (-not (Test-Path '$AssetsDir/lever_t_bar_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0606-aaXr7ld.gif' -OutFile '$AssetsDir/lever_t_bar_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_t_bar_row.gif'
} else {
    $skip++
}

# 997. lever t-bar reverse grip row (id: 1351)
if (-not (Test-Path '$AssetsDir/lever_t-bar_reverse_grip_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1351-FVM1AUZ.gif' -OutFile '$AssetsDir/lever_t-bar_reverse_grip_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_t-bar_reverse_grip_row.gif'
} else {
    $skip++
}

# 998. lever triceps extension (id: 0607)
if (-not (Test-Path '$AssetsDir/lever_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0607-Ser9eQp.gif' -OutFile '$AssetsDir/lever_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_triceps_extension.gif'
} else {
    $skip++
}

# 999. lever unilateral row (id: 1313)
if (-not (Test-Path '$AssetsDir/lever_unilateral_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1313-oROuvrX.gif' -OutFile '$AssetsDir/lever_unilateral_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lever_unilateral_row.gif'
} else {
    $skip++
}

# 1000. london bridge (id: 0609)
if (-not (Test-Path '$AssetsDir/london_bridge.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0609-bLyQokI.gif' -OutFile '$AssetsDir/london_bridge.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: london_bridge.gif'
} else {
    $skip++
}

# 1001. low glute bridge on floor (id: 3013)
if (-not (Test-Path '$AssetsDir/low_glute_bridge_on_floor.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3013-u0cNiij.gif' -OutFile '$AssetsDir/low_glute_bridge_on_floor.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: low_glute_bridge_on_floor.gif'
} else {
    $skip++
}

# 1002. lower back curl (id: 1352)
if (-not (Test-Path '$AssetsDir/lower_back_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1352-ANbbry2.gif' -OutFile '$AssetsDir/lower_back_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lower_back_curl.gif'
} else {
    $skip++
}

# 1003. lunge with jump (id: 3582)
if (-not (Test-Path '$AssetsDir/lunge_with_jump.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3582-PM1PZjg.gif' -OutFile '$AssetsDir/lunge_with_jump.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lunge_with_jump.gif'
} else {
    $skip++
}

# 1004. lunge with twist (id: 1688)
if (-not (Test-Path '$AssetsDir/lunge_with_twist.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1688-K9VL0Jq.gif' -OutFile '$AssetsDir/lunge_with_twist.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lunge_with_twist.gif'
} else {
    $skip++
}

# 1005. lying (side) quads stretch (id: 0613)
if (-not (Test-Path '$AssetsDir/lying_side_quads_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0613-BWnJR72.gif' -OutFile '$AssetsDir/lying_side_quads_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lying_side_quads_stretch.gif'
} else {
    $skip++
}

# 1006. lying elbow to knee (id: 2312)
if (-not (Test-Path '$AssetsDir/lying_elbow_to_knee.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2312-AQIhRjM.gif' -OutFile '$AssetsDir/lying_elbow_to_knee.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lying_elbow_to_knee.gif'
} else {
    $skip++
}

# 1007. lying leg raise flat bench (id: 0620)
if (-not (Test-Path '$AssetsDir/lying_leg_raise_flat_bench.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0620-WhuFnR7.gif' -OutFile '$AssetsDir/lying_leg_raise_flat_bench.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lying_leg_raise_flat_bench.gif'
} else {
    $skip++
}

# 1008. lying leg-hip raise (id: 0865)
if (-not (Test-Path '$AssetsDir/lying_leg-hip_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0865-9IxJdtC.gif' -OutFile '$AssetsDir/lying_leg-hip_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: lying_leg-hip_raise.gif'
} else {
    $skip++
}

# 1009. machine inner chest press (id: 1301)
if (-not (Test-Path '$AssetsDir/machine_inner_chest_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1301-wDN97Ca.gif' -OutFile '$AssetsDir/machine_inner_chest_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: machine_inner_chest_press.gif'
} else {
    $skip++
}

# 1010. march sit (wall) (id: 0624)
if (-not (Test-Path '$AssetsDir/march_sit_wall.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0624-sVQCCeG.gif' -OutFile '$AssetsDir/march_sit_wall.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: march_sit_wall.gif'
} else {
    $skip++
}

# 1011. medicine ball catch and overhead throw (id: 1353)
if (-not (Test-Path '$AssetsDir/medicine_ball_catch_and_overhead_throw.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1353-PsVS1QP.gif' -OutFile '$AssetsDir/medicine_ball_catch_and_overhead_throw.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: medicine_ball_catch_and_overhead_throw.gif'
} else {
    $skip++
}

# 1012. medicine ball chest pass (id: 1302)
if (-not (Test-Path '$AssetsDir/medicine_ball_chest_pass.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1302-aDoFKrE.gif' -OutFile '$AssetsDir/medicine_ball_chest_pass.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: medicine_ball_chest_pass.gif'
} else {
    $skip++
}

# 1013. medicine ball chest push from 3 point stance (id: 1303)
if (-not (Test-Path '$AssetsDir/medicine_ball_chest_push_from_3_point_stance.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1303-dCJnuVq.gif' -OutFile '$AssetsDir/medicine_ball_chest_push_from_3_point_stance.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: medicine_ball_chest_push_from_3_point_stance.gif'
} else {
    $skip++
}

# 1014. medicine ball chest push multiple response (id: 1304)
if (-not (Test-Path '$AssetsDir/medicine_ball_chest_push_multiple_response.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1304-7aolH9D.gif' -OutFile '$AssetsDir/medicine_ball_chest_push_multiple_response.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: medicine_ball_chest_push_multiple_response.gif'
} else {
    $skip++
}

# 1015. medicine ball chest push single response (id: 1305)
if (-not (Test-Path '$AssetsDir/medicine_ball_chest_push_single_response.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1305-jeHtrlO.gif' -OutFile '$AssetsDir/medicine_ball_chest_push_single_response.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: medicine_ball_chest_push_single_response.gif'
} else {
    $skip++
}

# 1016. medicine ball chest push with run release (id: 1312)
if (-not (Test-Path '$AssetsDir/medicine_ball_chest_push_with_run_release.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1312-pX9Elbe.gif' -OutFile '$AssetsDir/medicine_ball_chest_push_with_run_release.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: medicine_ball_chest_push_with_run_release.gif'
} else {
    $skip++
}

# 1017. medicine ball close grip push up (id: 1701)
if (-not (Test-Path '$AssetsDir/medicine_ball_close_grip_push_up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1701-8K7m2SS.gif' -OutFile '$AssetsDir/medicine_ball_close_grip_push_up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: medicine_ball_close_grip_push_up.gif'
} else {
    $skip++
}

# 1018. medicine ball overhead slam (id: 1354)
if (-not (Test-Path '$AssetsDir/medicine_ball_overhead_slam.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1354-oHg8eop.gif' -OutFile '$AssetsDir/medicine_ball_overhead_slam.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: medicine_ball_overhead_slam.gif'
} else {
    $skip++
}

# 1019. medicine ball supine chest throw (id: 1750)
if (-not (Test-Path '$AssetsDir/medicine_ball_supine_chest_throw.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1750-Al3tP0D.gif' -OutFile '$AssetsDir/medicine_ball_supine_chest_throw.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: medicine_ball_supine_chest_throw.gif'
} else {
    $skip++
}

# 1020. mixed grip chin-up (id: 0627)
if (-not (Test-Path '$AssetsDir/mixed_grip_chin-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0627-T8UpLkb.gif' -OutFile '$AssetsDir/mixed_grip_chin-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: mixed_grip_chin-up.gif'
} else {
    $skip++
}

# 1021. modified hindu push-up (male) (id: 3217)
if (-not (Test-Path '$AssetsDir/modified_hindu_push-up_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3217-epOSYUZ.gif' -OutFile '$AssetsDir/modified_hindu_push-up_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: modified_hindu_push-up_male.gif'
} else {
    $skip++
}

# 1022. modified push up to lower arms (id: 1421)
if (-not (Test-Path '$AssetsDir/modified_push_up_to_lower_arms.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1421-arvaszz.gif' -OutFile '$AssetsDir/modified_push_up_to_lower_arms.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: modified_push_up_to_lower_arms.gif'
} else {
    $skip++
}

# 1023. monster walk (id: 0628)
if (-not (Test-Path '$AssetsDir/monster_walk.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0628-O95afRA.gif' -OutFile '$AssetsDir/monster_walk.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: monster_walk.gif'
} else {
    $skip++
}

# 1024. mountain climber (id: 0630)
if (-not (Test-Path '$AssetsDir/mountain_climber.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0630-RJgzwny.gif' -OutFile '$AssetsDir/mountain_climber.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: mountain_climber.gif'
} else {
    $skip++
}

# 1025. muscle up (id: 0631)
if (-not (Test-Path '$AssetsDir/muscle_up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0631-yJUHKTn.gif' -OutFile '$AssetsDir/muscle_up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: muscle_up.gif'
} else {
    $skip++
}

# 1026. muscle-up (on vertical bar) (id: 1401)
if (-not (Test-Path '$AssetsDir/muscle-up_on_vertical_bar.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1401-Af0EW2I.gif' -OutFile '$AssetsDir/muscle-up_on_vertical_bar.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: muscle-up_on_vertical_bar.gif'
} else {
    $skip++
}

# 1027. narrow push-up on exercise ball (id: 2328)
if (-not (Test-Path '$AssetsDir/narrow_push-up_on_exercise_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2328-4cWjYEN.gif' -OutFile '$AssetsDir/narrow_push-up_on_exercise_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: narrow_push-up_on_exercise_ball.gif'
} else {
    $skip++
}

# 1028. neck side stretch (id: 1403)
if (-not (Test-Path '$AssetsDir/neck_side_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1403-x2chWLO.gif' -OutFile '$AssetsDir/neck_side_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: neck_side_stretch.gif'
} else {
    $skip++
}

# 1029. negative crunch (id: 0634)
if (-not (Test-Path '$AssetsDir/negative_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0634-szIn2UK.gif' -OutFile '$AssetsDir/negative_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: negative_crunch.gif'
} else {
    $skip++
}

# 1030. oblique crunch v. 2 (id: 1495)
if (-not (Test-Path '$AssetsDir/oblique_crunch_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1495-cJgSTmh.gif' -OutFile '$AssetsDir/oblique_crunch_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: oblique_crunch_v_2.gif'
} else {
    $skip++
}

# 1031. oblique crunches floor (id: 0635)
if (-not (Test-Path '$AssetsDir/oblique_crunches_floor.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0635-QUDd8WS.gif' -OutFile '$AssetsDir/oblique_crunches_floor.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: oblique_crunches_floor.gif'
} else {
    $skip++
}

# 1032. olympic barbell hammer curl (id: 0636)
if (-not (Test-Path '$AssetsDir/olympic_barbell_hammer_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0636-o1ntciW.gif' -OutFile '$AssetsDir/olympic_barbell_hammer_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: olympic_barbell_hammer_curl.gif'
} else {
    $skip++
}

# 1033. olympic barbell triceps extension (id: 0637)
if (-not (Test-Path '$AssetsDir/olympic_barbell_triceps_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0637-wu5LXwz.gif' -OutFile '$AssetsDir/olympic_barbell_triceps_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: olympic_barbell_triceps_extension.gif'
} else {
    $skip++
}

# 1034. one arm against wall (id: 1355)
if (-not (Test-Path '$AssetsDir/one_arm_against_wall.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1355-ZZTGMKh.gif' -OutFile '$AssetsDir/one_arm_against_wall.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: one_arm_against_wall.gif'
} else {
    $skip++
}

# 1035. one arm chin-up (id: 0638)
if (-not (Test-Path '$AssetsDir/one_arm_chin-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0638-HjdqmZa.gif' -OutFile '$AssetsDir/one_arm_chin-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: one_arm_chin-up.gif'
} else {
    $skip++
}

# 1036. one arm dip (id: 0639)
if (-not (Test-Path '$AssetsDir/one_arm_dip.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0639-FAoIFMw.gif' -OutFile '$AssetsDir/one_arm_dip.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: one_arm_dip.gif'
} else {
    $skip++
}

# 1037. one arm slam (with medicine ball) (id: 0640)
if (-not (Test-Path '$AssetsDir/one_arm_slam_with_medicine_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0640-jCrtE9b.gif' -OutFile '$AssetsDir/one_arm_slam_with_medicine_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: one_arm_slam_with_medicine_ball.gif'
} else {
    $skip++
}

# 1038. one arm towel row (id: 1773)
if (-not (Test-Path '$AssetsDir/one_arm_towel_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1773-bKWbrTA.gif' -OutFile '$AssetsDir/one_arm_towel_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: one_arm_towel_row.gif'
} else {
    $skip++
}

# 1039. one leg donkey calf raise (id: 1386)
if (-not (Test-Path '$AssetsDir/one_leg_donkey_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1386-A2upspL.gif' -OutFile '$AssetsDir/one_leg_donkey_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: one_leg_donkey_calf_raise.gif'
} else {
    $skip++
}

# 1040. one leg floor calf raise (id: 1387)
if (-not (Test-Path '$AssetsDir/one_leg_floor_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1387-0jp9Rlz.gif' -OutFile '$AssetsDir/one_leg_floor_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: one_leg_floor_calf_raise.gif'
} else {
    $skip++
}

# 1041. one leg squat (id: 1476)
if (-not (Test-Path '$AssetsDir/one_leg_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1476-C31LMnP.gif' -OutFile '$AssetsDir/one_leg_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: one_leg_squat.gif'
} else {
    $skip++
}

# 1042. otis up (id: 0641)
if (-not (Test-Path '$AssetsDir/otis_up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0641-UVL20oz.gif' -OutFile '$AssetsDir/otis_up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: otis_up.gif'
} else {
    $skip++
}

# 1043. outside leg kick push-up (id: 0642)
if (-not (Test-Path '$AssetsDir/outside_leg_kick_push-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0642-jNU1gFQ.gif' -OutFile '$AssetsDir/outside_leg_kick_push-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: outside_leg_kick_push-up.gif'
} else {
    $skip++
}

# 1044. overhead triceps stretch (id: 0643)
if (-not (Test-Path '$AssetsDir/overhead_triceps_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0643-Z5YStHW.gif' -OutFile '$AssetsDir/overhead_triceps_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: overhead_triceps_stretch.gif'
} else {
    $skip++
}

# 1045. pelvic tilt (id: 3147)
if (-not (Test-Path '$AssetsDir/pelvic_tilt.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3147-NKJ8o6x.gif' -OutFile '$AssetsDir/pelvic_tilt.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: pelvic_tilt.gif'
} else {
    $skip++
}

# 1046. pelvic tilt into bridge (id: 1422)
if (-not (Test-Path '$AssetsDir/pelvic_tilt_into_bridge.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1422-D9qe7CM.gif' -OutFile '$AssetsDir/pelvic_tilt_into_bridge.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: pelvic_tilt_into_bridge.gif'
} else {
    $skip++
}

# 1047. peroneals stretch (id: 1388)
if (-not (Test-Path '$AssetsDir/peroneals_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1388-XhfS1DZ.gif' -OutFile '$AssetsDir/peroneals_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: peroneals_stretch.gif'
} else {
    $skip++
}

# 1048. pike-to-cobra push-up (id: 3662)
if (-not (Test-Path '$AssetsDir/pike-to-cobra_push-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3662-XPUDTt7.gif' -OutFile '$AssetsDir/pike-to-cobra_push-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: pike-to-cobra_push-up.gif'
} else {
    $skip++
}

# 1049. plyo push up (id: 1306)
if (-not (Test-Path '$AssetsDir/plyo_push_up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1306-Snj1wSv.gif' -OutFile '$AssetsDir/plyo_push_up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: plyo_push_up.gif'
} else {
    $skip++
}

# 1050. posterior step to overhead reach (id: 1687)
if (-not (Test-Path '$AssetsDir/posterior_step_to_overhead_reach.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1687-ErqK3UL.gif' -OutFile '$AssetsDir/posterior_step_to_overhead_reach.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: posterior_step_to_overhead_reach.gif'
} else {
    $skip++
}

# 1051. posterior tibialis stretch (id: 1389)
if (-not (Test-Path '$AssetsDir/posterior_tibialis_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1389-DEEqoI2.gif' -OutFile '$AssetsDir/posterior_tibialis_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: posterior_tibialis_stretch.gif'
} else {
    $skip++
}

# 1052. potty squat (id: 3119)
if (-not (Test-Path '$AssetsDir/potty_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3119-75Bgtjy.gif' -OutFile '$AssetsDir/potty_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: potty_squat.gif'
} else {
    $skip++
}

# 1053. potty squat with support (id: 3132)
if (-not (Test-Path '$AssetsDir/potty_squat_with_support.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3132-b63ZzGe.gif' -OutFile '$AssetsDir/potty_squat_with_support.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: potty_squat_with_support.gif'
} else {
    $skip++
}

# 1054. power clean (id: 0648)
if (-not (Test-Path '$AssetsDir/power_clean.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0648-SiWCcTN.gif' -OutFile '$AssetsDir/power_clean.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: power_clean.gif'
} else {
    $skip++
}

# 1055. power point plank (id: 3665)
if (-not (Test-Path '$AssetsDir/power_point_plank.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3665-hCjGsRQ.gif' -OutFile '$AssetsDir/power_point_plank.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: power_point_plank.gif'
} else {
    $skip++
}

# 1056. prisoner half sit-up (male) (id: 3203)
if (-not (Test-Path '$AssetsDir/prisoner_half_sit-up_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3203-mgejmGP.gif' -OutFile '$AssetsDir/prisoner_half_sit-up_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: prisoner_half_sit-up_male.gif'
} else {
    $skip++
}

# 1057. prone twist on stability ball (id: 1707)
if (-not (Test-Path '$AssetsDir/prone_twist_on_stability_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1707-1IG6gVF.gif' -OutFile '$AssetsDir/prone_twist_on_stability_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: prone_twist_on_stability_ball.gif'
} else {
    $skip++
}

# 1058. pull up (neutral grip) (id: 0651)
if (-not (Test-Path '$AssetsDir/pull_up_neutral_grip.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0651-0V2YQjW.gif' -OutFile '$AssetsDir/pull_up_neutral_grip.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: pull_up_neutral_grip.gif'
} else {
    $skip++
}

# 1059. pull-in (on stability ball) (id: 0650)
if (-not (Test-Path '$AssetsDir/pull-in_on_stability_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0650-UQr48Oi.gif' -OutFile '$AssetsDir/pull-in_on_stability_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: pull-in_on_stability_ball.gif'
} else {
    $skip++
}

# 1060. pull-up (id: 0652)
if (-not (Test-Path '$AssetsDir/pull-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0652-lBDjFxJ.gif' -OutFile '$AssetsDir/pull-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: pull-up.gif'
} else {
    $skip++
}

# 1061. push and pull bodyweight (id: 1689)
if (-not (Test-Path '$AssetsDir/push_and_pull_bodyweight.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1689-wXvUZC8.gif' -OutFile '$AssetsDir/push_and_pull_bodyweight.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: push_and_pull_bodyweight.gif'
} else {
    $skip++
}

# 1062. push to run (id: 3638)
if (-not (Test-Path '$AssetsDir/push_to_run.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3638-PrQbjvB.gif' -OutFile '$AssetsDir/push_to_run.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: push_to_run.gif'
} else {
    $skip++
}

# 1063. push up on bosu ball (id: 1307)
if (-not (Test-Path '$AssetsDir/push_up_on_bosu_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1307-wVompEp.gif' -OutFile '$AssetsDir/push_up_on_bosu_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: push_up_on_bosu_ball.gif'
} else {
    $skip++
}

# 1064. push-up (id: 0662)
if (-not (Test-Path '$AssetsDir/push-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0662-I4hDWkc.gif' -OutFile '$AssetsDir/push-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: push-up.gif'
} else {
    $skip++
}

# 1065. push-up (bosu ball) (id: 0653)
if (-not (Test-Path '$AssetsDir/push-up_bosu_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0653-2kr2lWy.gif' -OutFile '$AssetsDir/push-up_bosu_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: push-up_bosu_ball.gif'
} else {
    $skip++
}

# 1066. push-up (on stability ball) (id: 0655)
if (-not (Test-Path '$AssetsDir/push-up_on_stability_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0655-Y4BRNQF.gif' -OutFile '$AssetsDir/push-up_on_stability_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: push-up_on_stability_ball.gif'
} else {
    $skip++
}

# 1067. push-up (on stability ball) (id: 0656)
if (-not (Test-Path '$AssetsDir/push-up_on_stability_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0656-tgryw5Y.gif' -OutFile '$AssetsDir/push-up_on_stability_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: push-up_on_stability_ball.gif'
} else {
    $skip++
}

# 1068. push-up (wall) (id: 0659)
if (-not (Test-Path '$AssetsDir/push-up_wall.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0659-LEH9jxP.gif' -OutFile '$AssetsDir/push-up_wall.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: push-up_wall.gif'
} else {
    $skip++
}

# 1069. push-up (wall) v. 2 (id: 0658)
if (-not (Test-Path '$AssetsDir/push-up_wall_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0658-NCmbLCw.gif' -OutFile '$AssetsDir/push-up_wall_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: push-up_wall_v_2.gif'
} else {
    $skip++
}

# 1070. push-up close-grip off dumbbell (id: 0660)
if (-not (Test-Path '$AssetsDir/push-up_close-grip_off_dumbbell.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0660-KZXAtKQ.gif' -OutFile '$AssetsDir/push-up_close-grip_off_dumbbell.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: push-up_close-grip_off_dumbbell.gif'
} else {
    $skip++
}

# 1071. push-up inside leg kick (id: 0661)
if (-not (Test-Path '$AssetsDir/push-up_inside_leg_kick.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0661-0br45wL.gif' -OutFile '$AssetsDir/push-up_inside_leg_kick.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: push-up_inside_leg_kick.gif'
} else {
    $skip++
}

# 1072. push-up medicine ball (id: 0663)
if (-not (Test-Path '$AssetsDir/push-up_medicine_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0663-W8KAlkI.gif' -OutFile '$AssetsDir/push-up_medicine_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: push-up_medicine_ball.gif'
} else {
    $skip++
}

# 1073. push-up on lower arms (id: 1467)
if (-not (Test-Path '$AssetsDir/push-up_on_lower_arms.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1467-4Jt8QsQ.gif' -OutFile '$AssetsDir/push-up_on_lower_arms.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: push-up_on_lower_arms.gif'
} else {
    $skip++
}

# 1074. push-up plus (id: 3145)
if (-not (Test-Path '$AssetsDir/push-up_plus.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3145-pvBMLHA.gif' -OutFile '$AssetsDir/push-up_plus.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: push-up_plus.gif'
} else {
    $skip++
}

# 1075. push-up to side plank (id: 0664)
if (-not (Test-Path '$AssetsDir/push-up_to_side_plank.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0664-KhHJ338.gif' -OutFile '$AssetsDir/push-up_to_side_plank.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: push-up_to_side_plank.gif'
} else {
    $skip++
}

# 1076. quads (id: 3533)
if (-not (Test-Path '$AssetsDir/quads.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3533-6YUfHPL.gif' -OutFile '$AssetsDir/quads.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: quads.gif'
} else {
    $skip++
}

# 1077. quarter sit-up (id: 3201)
if (-not (Test-Path '$AssetsDir/quarter_sit-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3201-enxnJcM.gif' -OutFile '$AssetsDir/quarter_sit-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: quarter_sit-up.gif'
} else {
    $skip++
}

# 1078. quick feet v. 2 (id: 3552)
if (-not (Test-Path '$AssetsDir/quick_feet_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3552-mweqJin.gif' -OutFile '$AssetsDir/quick_feet_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: quick_feet_v_2.gif'
} else {
    $skip++
}

# 1079. raise single arm push-up (id: 0666)
if (-not (Test-Path '$AssetsDir/raise_single_arm_push-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0666-13TpY4H.gif' -OutFile '$AssetsDir/raise_single_arm_push-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: raise_single_arm_push-up.gif'
} else {
    $skip++
}

# 1080. rear decline bridge (id: 0668)
if (-not (Test-Path '$AssetsDir/rear_decline_bridge.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0668-UpAlold.gif' -OutFile '$AssetsDir/rear_decline_bridge.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: rear_decline_bridge.gif'
} else {
    $skip++
}

# 1081. rear deltoid stretch (id: 0669)
if (-not (Test-Path '$AssetsDir/rear_deltoid_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0669-xifhB5W.gif' -OutFile '$AssetsDir/rear_deltoid_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: rear_deltoid_stretch.gif'
} else {
    $skip++
}

# 1082. rear pull-up (id: 0670)
if (-not (Test-Path '$AssetsDir/rear_pull-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0670-CbFSYC1.gif' -OutFile '$AssetsDir/rear_pull-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: rear_pull-up.gif'
} else {
    $skip++
}

# 1083. reclining big toe pose with rope (id: 1582)
if (-not (Test-Path '$AssetsDir/reclining_big_toe_pose_with_rope.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1582-K5xgdvI.gif' -OutFile '$AssetsDir/reclining_big_toe_pose_with_rope.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: reclining_big_toe_pose_with_rope.gif'
} else {
    $skip++
}

# 1084. resistance band hip thrusts on knees (female) (id: 3236)
if (-not (Test-Path '$AssetsDir/resistance_band_hip_thrusts_on_knees_female.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3236-Pjbc0Kt.gif' -OutFile '$AssetsDir/resistance_band_hip_thrusts_on_knees_female.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: resistance_band_hip_thrusts_on_knees_female.gif'
} else {
    $skip++
}

# 1085. resistance band leg extension (id: 3007)
if (-not (Test-Path '$AssetsDir/resistance_band_leg_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3007-Y1MsI1l.gif' -OutFile '$AssetsDir/resistance_band_leg_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: resistance_band_leg_extension.gif'
} else {
    $skip++
}

# 1086. resistance band seated biceps curl (id: 3123)
if (-not (Test-Path '$AssetsDir/resistance_band_seated_biceps_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3123-XFc3vpY.gif' -OutFile '$AssetsDir/resistance_band_seated_biceps_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: resistance_band_seated_biceps_curl.gif'
} else {
    $skip++
}

# 1087. resistance band seated chest press (id: 3124)
if (-not (Test-Path '$AssetsDir/resistance_band_seated_chest_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3124-4x5Okof.gif' -OutFile '$AssetsDir/resistance_band_seated_chest_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: resistance_band_seated_chest_press.gif'
} else {
    $skip++
}

# 1088. resistance band seated hip abduction (id: 3006)
if (-not (Test-Path '$AssetsDir/resistance_band_seated_hip_abduction.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3006-0xDpB4L.gif' -OutFile '$AssetsDir/resistance_band_seated_hip_abduction.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: resistance_band_seated_hip_abduction.gif'
} else {
    $skip++
}

# 1089. resistance band seated shoulder press (id: 3122)
if (-not (Test-Path '$AssetsDir/resistance_band_seated_shoulder_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3122-S93zLTG.gif' -OutFile '$AssetsDir/resistance_band_seated_shoulder_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: resistance_band_seated_shoulder_press.gif'
} else {
    $skip++
}

# 1090. resistance band seated straight back row (id: 3144)
if (-not (Test-Path '$AssetsDir/resistance_band_seated_straight_back_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3144-Nu7jqFE.gif' -OutFile '$AssetsDir/resistance_band_seated_straight_back_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: resistance_band_seated_straight_back_row.gif'
} else {
    $skip++
}

# 1091. reverse crunch (id: 0872)
if (-not (Test-Path '$AssetsDir/reverse_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0872-nCU1Ekp.gif' -OutFile '$AssetsDir/reverse_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: reverse_crunch.gif'
} else {
    $skip++
}

# 1092. reverse dip (id: 0672)
if (-not (Test-Path '$AssetsDir/reverse_dip.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0672-NZ5Qqkz.gif' -OutFile '$AssetsDir/reverse_dip.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: reverse_dip.gif'
} else {
    $skip++
}

# 1093. reverse grip machine lat pulldown (id: 0673)
if (-not (Test-Path '$AssetsDir/reverse_grip_machine_lat_pulldown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0673-ecpY0rH.gif' -OutFile '$AssetsDir/reverse_grip_machine_lat_pulldown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: reverse_grip_machine_lat_pulldown.gif'
} else {
    $skip++
}

# 1094. reverse grip pull-up (id: 0674)
if (-not (Test-Path '$AssetsDir/reverse_grip_pull-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0674-YAk5dIw.gif' -OutFile '$AssetsDir/reverse_grip_pull-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: reverse_grip_pull-up.gif'
} else {
    $skip++
}

# 1095. reverse hyper extension (on stability ball) (id: 0675)
if (-not (Test-Path '$AssetsDir/reverse_hyper_extension_on_stability_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0675-vM5YS2g.gif' -OutFile '$AssetsDir/reverse_hyper_extension_on_stability_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: reverse_hyper_extension_on_stability_ball.gif'
} else {
    $skip++
}

# 1096. reverse hyper on flat bench (id: 1423)
if (-not (Test-Path '$AssetsDir/reverse_hyper_on_flat_bench.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1423-OrETs32.gif' -OutFile '$AssetsDir/reverse_hyper_on_flat_bench.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: reverse_hyper_on_flat_bench.gif'
} else {
    $skip++
}

# 1097. reverse plank with leg lift (id: 3663)
if (-not (Test-Path '$AssetsDir/reverse_plank_with_leg_lift.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3663-tFToB7l.gif' -OutFile '$AssetsDir/reverse_plank_with_leg_lift.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: reverse_plank_with_leg_lift.gif'
} else {
    $skip++
}

# 1098. ring dips (id: 0677)
if (-not (Test-Path '$AssetsDir/ring_dips.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0677-ezTvXcr.gif' -OutFile '$AssetsDir/ring_dips.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ring_dips.gif'
} else {
    $skip++
}

# 1099. rocking frog stretch (id: 2571)
if (-not (Test-Path '$AssetsDir/rocking_frog_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2571-2Dk4xQV.gif' -OutFile '$AssetsDir/rocking_frog_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: rocking_frog_stretch.gif'
} else {
    $skip++
}

# 1100. rocky pull-up pulldown (id: 0678)
if (-not (Test-Path '$AssetsDir/rocky_pull-up_pulldown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0678-cQ19bBP.gif' -OutFile '$AssetsDir/rocky_pull-up_pulldown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: rocky_pull-up_pulldown.gif'
} else {
    $skip++
}

# 1101. roller back stretch (id: 2208)
if (-not (Test-Path '$AssetsDir/roller_back_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2208-isofgzg.gif' -OutFile '$AssetsDir/roller_back_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: roller_back_stretch.gif'
} else {
    $skip++
}

# 1102. roller body saw (id: 2204)
if (-not (Test-Path '$AssetsDir/roller_body_saw.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2204-XeMvLgE.gif' -OutFile '$AssetsDir/roller_body_saw.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: roller_body_saw.gif'
} else {
    $skip++
}

# 1103. roller hip lat stretch (id: 2205)
if (-not (Test-Path '$AssetsDir/roller_hip_lat_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2205-0L2KwtI.gif' -OutFile '$AssetsDir/roller_hip_lat_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: roller_hip_lat_stretch.gif'
} else {
    $skip++
}

# 1104. roller hip stretch (id: 2202)
if (-not (Test-Path '$AssetsDir/roller_hip_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2202-oMypNrz.gif' -OutFile '$AssetsDir/roller_hip_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: roller_hip_stretch.gif'
} else {
    $skip++
}

# 1105. roller reverse crunch (id: 2206)
if (-not (Test-Path '$AssetsDir/roller_reverse_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2206-SKXQAx3.gif' -OutFile '$AssetsDir/roller_reverse_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: roller_reverse_crunch.gif'
} else {
    $skip++
}

# 1106. roller seated shoulder flexor depresor retractor (id: 2203)
if (-not (Test-Path '$AssetsDir/roller_seated_shoulder_flexor_depresor_retractor.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2203-8coXSYU.gif' -OutFile '$AssetsDir/roller_seated_shoulder_flexor_depresor_retractor.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: roller_seated_shoulder_flexor_depresor_retractor.gif'
} else {
    $skip++
}

# 1107. roller seated single leg shoulder flexor depresor retractor (id: 2209)
if (-not (Test-Path '$AssetsDir/roller_seated_single_leg_shoulder_flexor_depresor_retractor.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2209-CjETvlw.gif' -OutFile '$AssetsDir/roller_seated_single_leg_shoulder_flexor_depresor_retractor.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: roller_seated_single_leg_shoulder_flexor_depresor_retractor.gif'
} else {
    $skip++
}

# 1108. roller side lat stretch (id: 2207)
if (-not (Test-Path '$AssetsDir/roller_side_lat_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2207-c3Pfhti.gif' -OutFile '$AssetsDir/roller_side_lat_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: roller_side_lat_stretch.gif'
} else {
    $skip++
}

# 1109. rope climb (id: 0680)
if (-not (Test-Path '$AssetsDir/rope_climb.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0680-yaAxcQr.gif' -OutFile '$AssetsDir/rope_climb.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: rope_climb.gif'
} else {
    $skip++
}

# 1110. run (id: 0685)
if (-not (Test-Path '$AssetsDir/run.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0685-oLrKqDH.gif' -OutFile '$AssetsDir/run.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: run.gif'
} else {
    $skip++
}

# 1111. run (equipment) (id: 0684)
if (-not (Test-Path '$AssetsDir/run_equipment.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0684-y5p0H8a.gif' -OutFile '$AssetsDir/run_equipment.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: run_equipment.gif'
} else {
    $skip++
}

# 1112. runners stretch (id: 1585)
if (-not (Test-Path '$AssetsDir/runners_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1585-0mB6wHO.gif' -OutFile '$AssetsDir/runners_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: runners_stretch.gif'
} else {
    $skip++
}

# 1113. russian twist (id: 0687)
if (-not (Test-Path '$AssetsDir/russian_twist.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0687-XVDdcoj.gif' -OutFile '$AssetsDir/russian_twist.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: russian_twist.gif'
} else {
    $skip++
}

# 1114. scapula dips (id: 3012)
if (-not (Test-Path '$AssetsDir/scapula_dips.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3012-7xeukSt.gif' -OutFile '$AssetsDir/scapula_dips.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: scapula_dips.gif'
} else {
    $skip++
}

# 1115. scapula push-up (id: 3021)
if (-not (Test-Path '$AssetsDir/scapula_push-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3021-jV65tKx.gif' -OutFile '$AssetsDir/scapula_push-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: scapula_push-up.gif'
} else {
    $skip++
}

# 1116. scapular pull-up (id: 0688)
if (-not (Test-Path '$AssetsDir/scapular_pull-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0688-uTBt1HV.gif' -OutFile '$AssetsDir/scapular_pull-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: scapular_pull-up.gif'
} else {
    $skip++
}

# 1117. scissor jumps (male) (id: 3219)
if (-not (Test-Path '$AssetsDir/scissor_jumps_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3219-Eh2v5Iu.gif' -OutFile '$AssetsDir/scissor_jumps_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: scissor_jumps_male.gif'
} else {
    $skip++
}

# 1118. seated calf stretch (male) (id: 1390)
if (-not (Test-Path '$AssetsDir/seated_calf_stretch_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1390-17bqEXD.gif' -OutFile '$AssetsDir/seated_calf_stretch_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: seated_calf_stretch_male.gif'
} else {
    $skip++
}

# 1119. seated glute stretch (id: 1424)
if (-not (Test-Path '$AssetsDir/seated_glute_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1424-DeDThfG.gif' -OutFile '$AssetsDir/seated_glute_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: seated_glute_stretch.gif'
} else {
    $skip++
}

# 1120. seated leg raise (id: 0689)
if (-not (Test-Path '$AssetsDir/seated_leg_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0689-Hgs6Nl1.gif' -OutFile '$AssetsDir/seated_leg_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: seated_leg_raise.gif'
} else {
    $skip++
}

# 1121. seated lower back stretch (id: 0690)
if (-not (Test-Path '$AssetsDir/seated_lower_back_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0690-QFmz6ch.gif' -OutFile '$AssetsDir/seated_lower_back_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: seated_lower_back_stretch.gif'
} else {
    $skip++
}

# 1122. seated piriformis stretch (id: 2567)
if (-not (Test-Path '$AssetsDir/seated_piriformis_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2567-QY39eBr.gif' -OutFile '$AssetsDir/seated_piriformis_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: seated_piriformis_stretch.gif'
} else {
    $skip++
}

# 1123. seated side crunch (wall) (id: 0691)
if (-not (Test-Path '$AssetsDir/seated_side_crunch_wall.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0691-Y9hNPcN.gif' -OutFile '$AssetsDir/seated_side_crunch_wall.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: seated_side_crunch_wall.gif'
} else {
    $skip++
}

# 1124. seated wide angle pose sequence (id: 1587)
if (-not (Test-Path '$AssetsDir/seated_wide_angle_pose_sequence.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1587-HIgYKAB.gif' -OutFile '$AssetsDir/seated_wide_angle_pose_sequence.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: seated_wide_angle_pose_sequence.gif'
} else {
    $skip++
}

# 1125. self assisted inverse leg curl (id: 0697)
if (-not (Test-Path '$AssetsDir/self_assisted_inverse_leg_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0697-GwYwElT.gif' -OutFile '$AssetsDir/self_assisted_inverse_leg_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: self_assisted_inverse_leg_curl.gif'
} else {
    $skip++
}

# 1126. self assisted inverse leg curl (id: 1766)
if (-not (Test-Path '$AssetsDir/self_assisted_inverse_leg_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1766-ZSY3MsL.gif' -OutFile '$AssetsDir/self_assisted_inverse_leg_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: self_assisted_inverse_leg_curl.gif'
} else {
    $skip++
}

# 1127. self assisted inverse leg curl (on floor) (id: 0696)
if (-not (Test-Path '$AssetsDir/self_assisted_inverse_leg_curl_on_floor.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0696-E4PwJqI.gif' -OutFile '$AssetsDir/self_assisted_inverse_leg_curl_on_floor.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: self_assisted_inverse_leg_curl_on_floor.gif'
} else {
    $skip++
}

# 1128. semi squat jump (male) (id: 3222)
if (-not (Test-Path '$AssetsDir/semi_squat_jump_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3222-6FMU51h.gif' -OutFile '$AssetsDir/semi_squat_jump_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: semi_squat_jump_male.gif'
} else {
    $skip++
}

# 1129. short stride run (id: 3656)
if (-not (Test-Path '$AssetsDir/short_stride_run.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3656-CcWEoWV.gif' -OutFile '$AssetsDir/short_stride_run.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: short_stride_run.gif'
} else {
    $skip++
}

# 1130. shoulder grip pull-up (id: 1763)
if (-not (Test-Path '$AssetsDir/shoulder_grip_pull-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1763-YtgD7Xq.gif' -OutFile '$AssetsDir/shoulder_grip_pull-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: shoulder_grip_pull-up.gif'
} else {
    $skip++
}

# 1131. shoulder tap (id: 3699)
if (-not (Test-Path '$AssetsDir/shoulder_tap.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3699-yRpV5TC.gif' -OutFile '$AssetsDir/shoulder_tap.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: shoulder_tap.gif'
} else {
    $skip++
}

# 1132. shoulder tap push-up (id: 0699)
if (-not (Test-Path '$AssetsDir/shoulder_tap_push-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0699-qEse6fe.gif' -OutFile '$AssetsDir/shoulder_tap_push-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: shoulder_tap_push-up.gif'
} else {
    $skip++
}

# 1133. side bridge hip abduction (id: 1774)
if (-not (Test-Path '$AssetsDir/side_bridge_hip_abduction.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1774-WL4EmxJ.gif' -OutFile '$AssetsDir/side_bridge_hip_abduction.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: side_bridge_hip_abduction.gif'
} else {
    $skip++
}

# 1134. side bridge v. 2 (id: 0705)
if (-not (Test-Path '$AssetsDir/side_bridge_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0705-RKjH6Lt.gif' -OutFile '$AssetsDir/side_bridge_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: side_bridge_v_2.gif'
} else {
    $skip++
}

# 1135. side hip (on parallel bars) (id: 0709)
if (-not (Test-Path '$AssetsDir/side_hip_on_parallel_bars.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0709-jTkSc6o.gif' -OutFile '$AssetsDir/side_hip_on_parallel_bars.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: side_hip_on_parallel_bars.gif'
} else {
    $skip++
}

# 1136. side hip abduction (id: 0710)
if (-not (Test-Path '$AssetsDir/side_hip_abduction.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0710-7WaDzyL.gif' -OutFile '$AssetsDir/side_hip_abduction.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: side_hip_abduction.gif'
} else {
    $skip++
}

# 1137. side lying floor stretch (id: 1358)
if (-not (Test-Path '$AssetsDir/side_lying_floor_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1358-jDOKRM5.gif' -OutFile '$AssetsDir/side_lying_floor_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: side_lying_floor_stretch.gif'
} else {
    $skip++
}

# 1138. side lying hip adduction (male) (id: 3667)
if (-not (Test-Path '$AssetsDir/side_lying_hip_adduction_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3667-c8f5cSY.gif' -OutFile '$AssetsDir/side_lying_hip_adduction_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: side_lying_hip_adduction_male.gif'
} else {
    $skip++
}

# 1139. side plank hip adduction (id: 1775)
if (-not (Test-Path '$AssetsDir/side_plank_hip_adduction.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1775-VO2qeJg.gif' -OutFile '$AssetsDir/side_plank_hip_adduction.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: side_plank_hip_adduction.gif'
} else {
    $skip++
}

# 1140. side push neck stretch (id: 0716)
if (-not (Test-Path '$AssetsDir/side_push_neck_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0716-oQRJYkC.gif' -OutFile '$AssetsDir/side_push_neck_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: side_push_neck_stretch.gif'
} else {
    $skip++
}

# 1141. side push-up (id: 0717)
if (-not (Test-Path '$AssetsDir/side_push-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0717-wpbD28t.gif' -OutFile '$AssetsDir/side_push-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: side_push-up.gif'
} else {
    $skip++
}

# 1142. side wrist pull stretch (id: 0721)
if (-not (Test-Path '$AssetsDir/side_wrist_pull_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0721-UtmIqcI.gif' -OutFile '$AssetsDir/side_wrist_pull_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: side_wrist_pull_stretch.gif'
} else {
    $skip++
}

# 1143. side-to-side chin (id: 0720)
if (-not (Test-Path '$AssetsDir/side-to-side_chin.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0720-isAAZWA.gif' -OutFile '$AssetsDir/side-to-side_chin.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: side-to-side_chin.gif'
} else {
    $skip++
}

# 1144. side-to-side toe touch (male) (id: 3213)
if (-not (Test-Path '$AssetsDir/side-to-side_toe_touch_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3213-WCAvOfC.gif' -OutFile '$AssetsDir/side-to-side_toe_touch_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: side-to-side_toe_touch_male.gif'
} else {
    $skip++
}

# 1145. single arm push-up (id: 0725)
if (-not (Test-Path '$AssetsDir/single_arm_push-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0725-MUic5zN.gif' -OutFile '$AssetsDir/single_arm_push-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: single_arm_push-up.gif'
} else {
    $skip++
}

# 1146. single leg bridge with outstretched leg (id: 3645)
if (-not (Test-Path '$AssetsDir/single_leg_bridge_with_outstretched_leg.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3645-rmEukuS.gif' -OutFile '$AssetsDir/single_leg_bridge_with_outstretched_leg.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: single_leg_bridge_with_outstretched_leg.gif'
} else {
    $skip++
}

# 1147. single leg calf raise (on a dumbbell) (id: 0727)
if (-not (Test-Path '$AssetsDir/single_leg_calf_raise_on_a_dumbbell.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0727-fKZgDEO.gif' -OutFile '$AssetsDir/single_leg_calf_raise_on_a_dumbbell.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: single_leg_calf_raise_on_a_dumbbell.gif'
} else {
    $skip++
}

# 1148. single leg platform slide (id: 0730)
if (-not (Test-Path '$AssetsDir/single_leg_platform_slide.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0730-LNE3wfo.gif' -OutFile '$AssetsDir/single_leg_platform_slide.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: single_leg_platform_slide.gif'
} else {
    $skip++
}

# 1149. single leg squat (pistol) male (id: 1759)
if (-not (Test-Path '$AssetsDir/single_leg_squat_pistol_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1759-nqs5HGV.gif' -OutFile '$AssetsDir/single_leg_squat_pistol_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: single_leg_squat_pistol_male.gif'
} else {
    $skip++
}

# 1150. sissy squat (id: 1489)
if (-not (Test-Path '$AssetsDir/sissy_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1489-xdYPUtE.gif' -OutFile '$AssetsDir/sissy_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: sissy_squat.gif'
} else {
    $skip++
}

# 1151. sit-up v. 2 (id: 0735)
if (-not (Test-Path '$AssetsDir/sit-up_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0735-Bn6TXyO.gif' -OutFile '$AssetsDir/sit-up_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: sit-up_v_2.gif'
} else {
    $skip++
}

# 1152. sit-up with arms on chest (id: 3679)
if (-not (Test-Path '$AssetsDir/sit-up_with_arms_on_chest.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3679-6ZCiYWQ.gif' -OutFile '$AssetsDir/sit-up_with_arms_on_chest.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: sit-up_with_arms_on_chest.gif'
} else {
    $skip++
}

# 1153. skater hops (id: 3361)
if (-not (Test-Path '$AssetsDir/skater_hops.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3361-zfNHMN9.gif' -OutFile '$AssetsDir/skater_hops.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: skater_hops.gif'
} else {
    $skip++
}

# 1154. ski ergometer (id: 2142)
if (-not (Test-Path '$AssetsDir/ski_ergometer.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2142-vpQaQkH.gif' -OutFile '$AssetsDir/ski_ergometer.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ski_ergometer.gif'
} else {
    $skip++
}

# 1155. ski step (id: 3671)
if (-not (Test-Path '$AssetsDir/ski_step.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3671-5MRH8H2.gif' -OutFile '$AssetsDir/ski_step.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: ski_step.gif'
} else {
    $skip++
}

# 1156. skin the cat (id: 3304)
if (-not (Test-Path '$AssetsDir/skin_the_cat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3304-MSfvriJ.gif' -OutFile '$AssetsDir/skin_the_cat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: skin_the_cat.gif'
} else {
    $skip++
}

# 1157. sled 45 degrees one leg press (id: 1425)
if (-not (Test-Path '$AssetsDir/sled_45_degrees_one_leg_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1425-WWD6FzI.gif' -OutFile '$AssetsDir/sled_45_degrees_one_leg_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: sled_45_degrees_one_leg_press.gif'
} else {
    $skip++
}

# 1158. sled 45в° calf press (id: 0738)
if (-not (Test-Path '$AssetsDir/sled_45в_calf_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0738-qCNVnaU.gif' -OutFile '$AssetsDir/sled_45в_calf_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: sled_45в_calf_press.gif'
} else {
    $skip++
}

# 1159. sled 45в° leg press (id: 0739)
if (-not (Test-Path '$AssetsDir/sled_45в_leg_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0739-10Z2DXU.gif' -OutFile '$AssetsDir/sled_45в_leg_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: sled_45в_leg_press.gif'
} else {
    $skip++
}

# 1160. sled 45в° leg press (back pov) (id: 1464)
if (-not (Test-Path '$AssetsDir/sled_45в_leg_press_back_pov.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1464-yn2lLSI.gif' -OutFile '$AssetsDir/sled_45в_leg_press_back_pov.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: sled_45в_leg_press_back_pov.gif'
} else {
    $skip++
}

# 1161. sled 45° leg press (side pov) (id: 1463)
if (-not (Test-Path '$AssetsDir/sled_45_leg_press_side_pov.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1463-2Qh2J1e.gif' -OutFile '$AssetsDir/sled_45_leg_press_side_pov.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: sled_45_leg_press_side_pov.gif'
} else {
    $skip++
}

# 1162. sled 45в° leg wide press (id: 0740)
if (-not (Test-Path '$AssetsDir/sled_45в_leg_wide_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0740-tj41Nu6.gif' -OutFile '$AssetsDir/sled_45в_leg_wide_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: sled_45в_leg_wide_press.gif'
} else {
    $skip++
}

# 1163. sled calf press on leg press (id: 1391)
if (-not (Test-Path '$AssetsDir/sled_calf_press_on_leg_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1391-ykHcWme.gif' -OutFile '$AssetsDir/sled_calf_press_on_leg_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: sled_calf_press_on_leg_press.gif'
} else {
    $skip++
}

# 1164. sled closer hack squat (id: 0741)
if (-not (Test-Path '$AssetsDir/sled_closer_hack_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0741-gf3ZjB9.gif' -OutFile '$AssetsDir/sled_closer_hack_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: sled_closer_hack_squat.gif'
} else {
    $skip++
}

# 1165. sled forward angled calf raise (id: 0742)
if (-not (Test-Path '$AssetsDir/sled_forward_angled_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0742-XDOiFns.gif' -OutFile '$AssetsDir/sled_forward_angled_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: sled_forward_angled_calf_raise.gif'
} else {
    $skip++
}

# 1166. sled hack squat (id: 0743)
if (-not (Test-Path '$AssetsDir/sled_hack_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0743-Qa55kX1.gif' -OutFile '$AssetsDir/sled_hack_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: sled_hack_squat.gif'
} else {
    $skip++
}

# 1167. sled lying calf press (id: 2334)
if (-not (Test-Path '$AssetsDir/sled_lying_calf_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2334-g376LuL.gif' -OutFile '$AssetsDir/sled_lying_calf_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: sled_lying_calf_press.gif'
} else {
    $skip++
}

# 1168. sled lying squat (id: 0744)
if (-not (Test-Path '$AssetsDir/sled_lying_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0744-9n2149Z.gif' -OutFile '$AssetsDir/sled_lying_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: sled_lying_squat.gif'
} else {
    $skip++
}

# 1169. sled one leg calf press on leg press (id: 1392)
if (-not (Test-Path '$AssetsDir/sled_one_leg_calf_press_on_leg_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1392-u0pLNgz.gif' -OutFile '$AssetsDir/sled_one_leg_calf_press_on_leg_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: sled_one_leg_calf_press_on_leg_press.gif'
} else {
    $skip++
}

# 1170. sledge hammer (id: 1496)
if (-not (Test-Path '$AssetsDir/sledge_hammer.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1496-REXmfVC.gif' -OutFile '$AssetsDir/sledge_hammer.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: sledge_hammer.gif'
} else {
    $skip++
}

# 1171. smith back shrug (id: 0746)
if (-not (Test-Path '$AssetsDir/smith_back_shrug.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0746-MzNnwx9.gif' -OutFile '$AssetsDir/smith_back_shrug.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_back_shrug.gif'
} else {
    $skip++
}

# 1172. smith behind neck press (id: 0747)
if (-not (Test-Path '$AssetsDir/smith_behind_neck_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0747-Gpn4ADc.gif' -OutFile '$AssetsDir/smith_behind_neck_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_behind_neck_press.gif'
} else {
    $skip++
}

# 1173. smith bench press (id: 0748)
if (-not (Test-Path '$AssetsDir/smith_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0748-trqKQv2.gif' -OutFile '$AssetsDir/smith_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_bench_press.gif'
} else {
    $skip++
}

# 1174. smith bent knee good morning (id: 0749)
if (-not (Test-Path '$AssetsDir/smith_bent_knee_good_morning.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0749-1bQkKZK.gif' -OutFile '$AssetsDir/smith_bent_knee_good_morning.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_bent_knee_good_morning.gif'
} else {
    $skip++
}

# 1175. smith bent over row (id: 1359)
if (-not (Test-Path '$AssetsDir/smith_bent_over_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1359-ZX9UZmj.gif' -OutFile '$AssetsDir/smith_bent_over_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_bent_over_row.gif'
} else {
    $skip++
}

# 1176. smith chair squat (id: 0750)
if (-not (Test-Path '$AssetsDir/smith_chair_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0750-Gu2rNJd.gif' -OutFile '$AssetsDir/smith_chair_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_chair_squat.gif'
} else {
    $skip++
}

# 1177. smith close-grip bench press (id: 0751)
if (-not (Test-Path '$AssetsDir/smith_close-grip_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0751-WcHl7ru.gif' -OutFile '$AssetsDir/smith_close-grip_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_close-grip_bench_press.gif'
} else {
    $skip++
}

# 1178. smith deadlift (id: 0752)
if (-not (Test-Path '$AssetsDir/smith_deadlift.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0752-UfePqpx.gif' -OutFile '$AssetsDir/smith_deadlift.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_deadlift.gif'
} else {
    $skip++
}

# 1179. smith decline bench press (id: 0753)
if (-not (Test-Path '$AssetsDir/smith_decline_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0753-ETZfAbZ.gif' -OutFile '$AssetsDir/smith_decline_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_decline_bench_press.gif'
} else {
    $skip++
}

# 1180. smith decline reverse-grip press (id: 0754)
if (-not (Test-Path '$AssetsDir/smith_decline_reverse-grip_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0754-MY9P1WA.gif' -OutFile '$AssetsDir/smith_decline_reverse-grip_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_decline_reverse-grip_press.gif'
} else {
    $skip++
}

# 1181. smith front squat (clean grip) (id: 1433)
if (-not (Test-Path '$AssetsDir/smith_front_squat_clean_grip.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1433-lFhb2Rw.gif' -OutFile '$AssetsDir/smith_front_squat_clean_grip.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_front_squat_clean_grip.gif'
} else {
    $skip++
}

# 1182. smith full squat (id: 3281)
if (-not (Test-Path '$AssetsDir/smith_full_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3281-NNoHCEA.gif' -OutFile '$AssetsDir/smith_full_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_full_squat.gif'
} else {
    $skip++
}

# 1183. smith hack squat (id: 0755)
if (-not (Test-Path '$AssetsDir/smith_hack_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0755-ZuPXtCK.gif' -OutFile '$AssetsDir/smith_hack_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_hack_squat.gif'
} else {
    $skip++
}

# 1184. smith hip raise (id: 0756)
if (-not (Test-Path '$AssetsDir/smith_hip_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0756-CqhoytW.gif' -OutFile '$AssetsDir/smith_hip_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_hip_raise.gif'
} else {
    $skip++
}

# 1185. smith incline bench press (id: 0757)
if (-not (Test-Path '$AssetsDir/smith_incline_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0757-5v7KYld.gif' -OutFile '$AssetsDir/smith_incline_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_incline_bench_press.gif'
} else {
    $skip++
}

# 1186. smith incline reverse-grip press (id: 0758)
if (-not (Test-Path '$AssetsDir/smith_incline_reverse-grip_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0758-78VqWQK.gif' -OutFile '$AssetsDir/smith_incline_reverse-grip_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_incline_reverse-grip_press.gif'
} else {
    $skip++
}

# 1187. smith incline shoulder raises (id: 0759)
if (-not (Test-Path '$AssetsDir/smith_incline_shoulder_raises.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0759-ayAHcEm.gif' -OutFile '$AssetsDir/smith_incline_shoulder_raises.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_incline_shoulder_raises.gif'
} else {
    $skip++
}

# 1188. smith leg press (id: 0760)
if (-not (Test-Path '$AssetsDir/smith_leg_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0760-7zdxRTl.gif' -OutFile '$AssetsDir/smith_leg_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_leg_press.gif'
} else {
    $skip++
}

# 1189. smith low bar squat (id: 1434)
if (-not (Test-Path '$AssetsDir/smith_low_bar_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1434-RGLscZM.gif' -OutFile '$AssetsDir/smith_low_bar_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_low_bar_squat.gif'
} else {
    $skip++
}

# 1190. smith machine bicep curl (id: 1683)
if (-not (Test-Path '$AssetsDir/smith_machine_bicep_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1683-zILLZ98.gif' -OutFile '$AssetsDir/smith_machine_bicep_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_machine_bicep_curl.gif'
} else {
    $skip++
}

# 1191. smith machine decline close grip bench press (id: 1625)
if (-not (Test-Path '$AssetsDir/smith_machine_decline_close_grip_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1625-yB9SvIF.gif' -OutFile '$AssetsDir/smith_machine_decline_close_grip_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_machine_decline_close_grip_bench_press.gif'
} else {
    $skip++
}

# 1192. smith machine incline tricep extension (id: 1752)
if (-not (Test-Path '$AssetsDir/smith_machine_incline_tricep_extension.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1752-o8aOcrz.gif' -OutFile '$AssetsDir/smith_machine_incline_tricep_extension.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_machine_incline_tricep_extension.gif'
} else {
    $skip++
}

# 1193. smith machine reverse decline close grip bench press (id: 1626)
if (-not (Test-Path '$AssetsDir/smith_machine_reverse_decline_close_grip_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1626-QyO6Uma.gif' -OutFile '$AssetsDir/smith_machine_reverse_decline_close_grip_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_machine_reverse_decline_close_grip_bench_press.gif'
} else {
    $skip++
}

# 1194. smith narrow row (id: 0761)
if (-not (Test-Path '$AssetsDir/smith_narrow_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0761-JGKowMS.gif' -OutFile '$AssetsDir/smith_narrow_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_narrow_row.gif'
} else {
    $skip++
}

# 1195. smith one arm row (id: 1360)
if (-not (Test-Path '$AssetsDir/smith_one_arm_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1360-Q4DSJPC.gif' -OutFile '$AssetsDir/smith_one_arm_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_one_arm_row.gif'
} else {
    $skip++
}

# 1196. smith one leg floor calf raise (id: 1393)
if (-not (Test-Path '$AssetsDir/smith_one_leg_floor_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1393-9GXrTE6.gif' -OutFile '$AssetsDir/smith_one_leg_floor_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_one_leg_floor_calf_raise.gif'
} else {
    $skip++
}

# 1197. smith rear delt row (id: 0762)
if (-not (Test-Path '$AssetsDir/smith_rear_delt_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0762-nFUwqG6.gif' -OutFile '$AssetsDir/smith_rear_delt_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_rear_delt_row.gif'
} else {
    $skip++
}

# 1198. smith reverse calf raises (id: 0763)
if (-not (Test-Path '$AssetsDir/smith_reverse_calf_raises.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0763-ywaNfuh.gif' -OutFile '$AssetsDir/smith_reverse_calf_raises.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_reverse_calf_raises.gif'
} else {
    $skip++
}

# 1199. smith reverse calf raises (id: 1394)
if (-not (Test-Path '$AssetsDir/smith_reverse_calf_raises.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1394-Lsqrgh4.gif' -OutFile '$AssetsDir/smith_reverse_calf_raises.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_reverse_calf_raises.gif'
} else {
    $skip++
}

# 1200. smith reverse grip bent over row (id: 1361)
if (-not (Test-Path '$AssetsDir/smith_reverse_grip_bent_over_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1361-aaxA3cm.gif' -OutFile '$AssetsDir/smith_reverse_grip_bent_over_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_reverse_grip_bent_over_row.gif'
} else {
    $skip++
}

# 1201. smith reverse-grip press (id: 0764)
if (-not (Test-Path '$AssetsDir/smith_reverse-grip_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0764-zK8Fu1W.gif' -OutFile '$AssetsDir/smith_reverse-grip_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_reverse-grip_press.gif'
} else {
    $skip++
}

# 1202. smith seated one leg calf raise (id: 1395)
if (-not (Test-Path '$AssetsDir/smith_seated_one_leg_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1395-0S75mYG.gif' -OutFile '$AssetsDir/smith_seated_one_leg_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_seated_one_leg_calf_raise.gif'
} else {
    $skip++
}

# 1203. smith seated shoulder press (id: 0765)
if (-not (Test-Path '$AssetsDir/smith_seated_shoulder_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0765-xUwnBMT.gif' -OutFile '$AssetsDir/smith_seated_shoulder_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_seated_shoulder_press.gif'
} else {
    $skip++
}

# 1204. smith seated wrist curl (id: 1426)
if (-not (Test-Path '$AssetsDir/smith_seated_wrist_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1426-B6dAO1t.gif' -OutFile '$AssetsDir/smith_seated_wrist_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_seated_wrist_curl.gif'
} else {
    $skip++
}

# 1205. smith shoulder press (id: 0766)
if (-not (Test-Path '$AssetsDir/smith_shoulder_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0766-903mzG8.gif' -OutFile '$AssetsDir/smith_shoulder_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_shoulder_press.gif'
} else {
    $skip++
}

# 1206. smith shrug (id: 0767)
if (-not (Test-Path '$AssetsDir/smith_shrug.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0767-OUQ0ZyW.gif' -OutFile '$AssetsDir/smith_shrug.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_shrug.gif'
} else {
    $skip++
}

# 1207. smith single leg split squat (id: 0768)
if (-not (Test-Path '$AssetsDir/smith_single_leg_split_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0768-wWFspEi.gif' -OutFile '$AssetsDir/smith_single_leg_split_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_single_leg_split_squat.gif'
} else {
    $skip++
}

# 1208. smith sprint lunge (id: 0769)
if (-not (Test-Path '$AssetsDir/smith_sprint_lunge.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0769-HsjbB1z.gif' -OutFile '$AssetsDir/smith_sprint_lunge.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_sprint_lunge.gif'
} else {
    $skip++
}

# 1209. smith squat (id: 0770)
if (-not (Test-Path '$AssetsDir/smith_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0770-jFtipLl.gif' -OutFile '$AssetsDir/smith_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_squat.gif'
} else {
    $skip++
}

# 1210. smith standing back wrist curl (id: 0771)
if (-not (Test-Path '$AssetsDir/smith_standing_back_wrist_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0771-hfmQ0Tz.gif' -OutFile '$AssetsDir/smith_standing_back_wrist_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_standing_back_wrist_curl.gif'
} else {
    $skip++
}

# 1211. smith standing behind head military press (id: 0772)
if (-not (Test-Path '$AssetsDir/smith_standing_behind_head_military_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0772-ht8xDrP.gif' -OutFile '$AssetsDir/smith_standing_behind_head_military_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_standing_behind_head_military_press.gif'
} else {
    $skip++
}

# 1212. smith standing leg calf raise (id: 0773)
if (-not (Test-Path '$AssetsDir/smith_standing_leg_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0773-6MaEjVA.gif' -OutFile '$AssetsDir/smith_standing_leg_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_standing_leg_calf_raise.gif'
} else {
    $skip++
}

# 1213. smith standing military press (id: 0774)
if (-not (Test-Path '$AssetsDir/smith_standing_military_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0774-jjUPrze.gif' -OutFile '$AssetsDir/smith_standing_military_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_standing_military_press.gif'
} else {
    $skip++
}

# 1214. smith sumo squat (id: 3142)
if (-not (Test-Path '$AssetsDir/smith_sumo_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3142-dzz6BiV.gif' -OutFile '$AssetsDir/smith_sumo_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_sumo_squat.gif'
} else {
    $skip++
}

# 1215. smith toe raise (id: 1396)
if (-not (Test-Path '$AssetsDir/smith_toe_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1396-Y4QlY8z.gif' -OutFile '$AssetsDir/smith_toe_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_toe_raise.gif'
} else {
    $skip++
}

# 1216. smith upright row (id: 0775)
if (-not (Test-Path '$AssetsDir/smith_upright_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0775-1DN3iz4.gif' -OutFile '$AssetsDir/smith_upright_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_upright_row.gif'
} else {
    $skip++
}

# 1217. smith wide grip bench press (id: 1308)
if (-not (Test-Path '$AssetsDir/smith_wide_grip_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1308-zoOvPcx.gif' -OutFile '$AssetsDir/smith_wide_grip_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_wide_grip_bench_press.gif'
} else {
    $skip++
}

# 1218. smith wide grip decline bench press (id: 1309)
if (-not (Test-Path '$AssetsDir/smith_wide_grip_decline_bench_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1309-wi2H9QX.gif' -OutFile '$AssetsDir/smith_wide_grip_decline_bench_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: smith_wide_grip_decline_bench_press.gif'
} else {
    $skip++
}

# 1219. snatch pull (id: 0776)
if (-not (Test-Path '$AssetsDir/snatch_pull.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0776-dG5Smob.gif' -OutFile '$AssetsDir/snatch_pull.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: snatch_pull.gif'
} else {
    $skip++
}

# 1220. spell caster (id: 0777)
if (-not (Test-Path '$AssetsDir/spell_caster.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0777-p9cCe2r.gif' -OutFile '$AssetsDir/spell_caster.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: spell_caster.gif'
} else {
    $skip++
}

# 1221. sphinx (id: 1362)
if (-not (Test-Path '$AssetsDir/sphinx.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1362-DIVyqrU.gif' -OutFile '$AssetsDir/sphinx.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: sphinx.gif'
} else {
    $skip++
}

# 1222. spider crawl push up (id: 0778)
if (-not (Test-Path '$AssetsDir/spider_crawl_push_up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0778-P9GFBME.gif' -OutFile '$AssetsDir/spider_crawl_push_up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: spider_crawl_push_up.gif'
} else {
    $skip++
}

# 1223. spine stretch (id: 1363)
if (-not (Test-Path '$AssetsDir/spine_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1363-JbC2iaV.gif' -OutFile '$AssetsDir/spine_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: spine_stretch.gif'
} else {
    $skip++
}

# 1224. spine twist (id: 2329)
if (-not (Test-Path '$AssetsDir/spine_twist.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2329-2jl9K55.gif' -OutFile '$AssetsDir/spine_twist.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: spine_twist.gif'
} else {
    $skip++
}

# 1225. split squats (id: 2368)
if (-not (Test-Path '$AssetsDir/split_squats.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2368-9E25EOx.gif' -OutFile '$AssetsDir/split_squats.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: split_squats.gif'
} else {
    $skip++
}

# 1226. squat jerk (id: 0786)
if (-not (Test-Path '$AssetsDir/squat_jerk.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0786-IMRsOCn.gif' -OutFile '$AssetsDir/squat_jerk.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: squat_jerk.gif'
} else {
    $skip++
}

# 1227. squat on bosu ball (id: 1705)
if (-not (Test-Path '$AssetsDir/squat_on_bosu_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1705-T2fA5Ir.gif' -OutFile '$AssetsDir/squat_on_bosu_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: squat_on_bosu_ball.gif'
} else {
    $skip++
}

# 1228. squat to overhead reach (id: 1685)
if (-not (Test-Path '$AssetsDir/squat_to_overhead_reach.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1685-QChZi3x.gif' -OutFile '$AssetsDir/squat_to_overhead_reach.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: squat_to_overhead_reach.gif'
} else {
    $skip++
}

# 1229. squat to overhead reach with twist (id: 1686)
if (-not (Test-Path '$AssetsDir/squat_to_overhead_reach_with_twist.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1686-5BZHW9s.gif' -OutFile '$AssetsDir/squat_to_overhead_reach_with_twist.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: squat_to_overhead_reach_with_twist.gif'
} else {
    $skip++
}

# 1230. stability ball crunch (full range hands behind head) (id: 2297)
if (-not (Test-Path '$AssetsDir/stability_ball_crunch_full_range_hands_behind_head.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2297-Gn5FwYT.gif' -OutFile '$AssetsDir/stability_ball_crunch_full_range_hands_behind_head.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: stability_ball_crunch_full_range_hands_behind_head.gif'
} else {
    $skip++
}

# 1231. stalder press (id: 3291)
if (-not (Test-Path '$AssetsDir/stalder_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3291-zd4P4B2.gif' -OutFile '$AssetsDir/stalder_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: stalder_press.gif'
} else {
    $skip++
}

# 1232. standing archer (id: 3669)
if (-not (Test-Path '$AssetsDir/standing_archer.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3669-JF8AkMX.gif' -OutFile '$AssetsDir/standing_archer.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: standing_archer.gif'
} else {
    $skip++
}

# 1233. standing behind neck press (id: 0788)
if (-not (Test-Path '$AssetsDir/standing_behind_neck_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0788-xDh0lJr.gif' -OutFile '$AssetsDir/standing_behind_neck_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: standing_behind_neck_press.gif'
} else {
    $skip++
}

# 1234. standing calf raise (on a staircase) (id: 1490)
if (-not (Test-Path '$AssetsDir/standing_calf_raise_on_a_staircase.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1490-6HmFgmx.gif' -OutFile '$AssetsDir/standing_calf_raise_on_a_staircase.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: standing_calf_raise_on_a_staircase.gif'
} else {
    $skip++
}

# 1235. standing calves (id: 1397)
if (-not (Test-Path '$AssetsDir/standing_calves.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1397-XIHEoCG.gif' -OutFile '$AssetsDir/standing_calves.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: standing_calves.gif'
} else {
    $skip++
}

# 1236. standing calves calf stretch (id: 1398)
if (-not (Test-Path '$AssetsDir/standing_calves_calf_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1398-qOKcgVP.gif' -OutFile '$AssetsDir/standing_calves_calf_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: standing_calves_calf_stretch.gif'
} else {
    $skip++
}

# 1237. standing hamstring and calf stretch with strap (id: 1599)
if (-not (Test-Path '$AssetsDir/standing_hamstring_and_calf_stretch_with_strap.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1599-xTjr103.gif' -OutFile '$AssetsDir/standing_hamstring_and_calf_stretch_with_strap.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: standing_hamstring_and_calf_stretch_with_strap.gif'
} else {
    $skip++
}

# 1238. standing lateral stretch (id: 0794)
if (-not (Test-Path '$AssetsDir/standing_lateral_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0794-1jXLYEw.gif' -OutFile '$AssetsDir/standing_lateral_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: standing_lateral_stretch.gif'
} else {
    $skip++
}

# 1239. standing pelvic tilt (id: 1364)
if (-not (Test-Path '$AssetsDir/standing_pelvic_tilt.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1364-cuKYxhu.gif' -OutFile '$AssetsDir/standing_pelvic_tilt.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: standing_pelvic_tilt.gif'
} else {
    $skip++
}

# 1240. standing single leg curl (id: 0795)
if (-not (Test-Path '$AssetsDir/standing_single_leg_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0795-C5jncD2.gif' -OutFile '$AssetsDir/standing_single_leg_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: standing_single_leg_curl.gif'
} else {
    $skip++
}

# 1241. standing wheel rollerout (id: 0796)
if (-not (Test-Path '$AssetsDir/standing_wheel_rollerout.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0796-KtRomty.gif' -OutFile '$AssetsDir/standing_wheel_rollerout.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: standing_wheel_rollerout.gif'
} else {
    $skip++
}

# 1242. star jump (male) (id: 3223)
if (-not (Test-Path '$AssetsDir/star_jump_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3223-HtfCpfi.gif' -OutFile '$AssetsDir/star_jump_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: star_jump_male.gif'
} else {
    $skip++
}

# 1243. stationary bike run v. 3 (id: 2138)
if (-not (Test-Path '$AssetsDir/stationary_bike_run_v_3.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2138-H1PESYI.gif' -OutFile '$AssetsDir/stationary_bike_run_v_3.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: stationary_bike_run_v_3.gif'
} else {
    $skip++
}

# 1244. stationary bike walk (id: 0798)
if (-not (Test-Path '$AssetsDir/stationary_bike_walk.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0798-a8VDgLw.gif' -OutFile '$AssetsDir/stationary_bike_walk.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: stationary_bike_walk.gif'
} else {
    $skip++
}

# 1245. straddle maltese (id: 3314)
if (-not (Test-Path '$AssetsDir/straddle_maltese.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3314-HfqciZF.gif' -OutFile '$AssetsDir/straddle_maltese.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: straddle_maltese.gif'
} else {
    $skip++
}

# 1246. straddle planche (id: 3298)
if (-not (Test-Path '$AssetsDir/straddle_planche.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3298-BL3GHeY.gif' -OutFile '$AssetsDir/straddle_planche.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: straddle_planche.gif'
} else {
    $skip++
}

# 1247. straight leg outer hip abductor (id: 1427)
if (-not (Test-Path '$AssetsDir/straight_leg_outer_hip_abductor.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1427-mQ1tBXn.gif' -OutFile '$AssetsDir/straight_leg_outer_hip_abductor.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: straight_leg_outer_hip_abductor.gif'
} else {
    $skip++
}

# 1248. superman push-up (id: 0803)
if (-not (Test-Path '$AssetsDir/superman_push-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0803-4GqRrAk.gif' -OutFile '$AssetsDir/superman_push-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: superman_push-up.gif'
} else {
    $skip++
}

# 1249. suspended abdominal fallout (id: 0805)
if (-not (Test-Path '$AssetsDir/suspended_abdominal_fallout.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0805-X3TCNEU.gif' -OutFile '$AssetsDir/suspended_abdominal_fallout.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: suspended_abdominal_fallout.gif'
} else {
    $skip++
}

# 1250. suspended push-up (id: 0806)
if (-not (Test-Path '$AssetsDir/suspended_push-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0806-IaGQCrC.gif' -OutFile '$AssetsDir/suspended_push-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: suspended_push-up.gif'
} else {
    $skip++
}

# 1251. suspended reverse crunch (id: 0807)
if (-not (Test-Path '$AssetsDir/suspended_reverse_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0807-R1WYG5D.gif' -OutFile '$AssetsDir/suspended_reverse_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: suspended_reverse_crunch.gif'
} else {
    $skip++
}

# 1252. suspended row (id: 0808)
if (-not (Test-Path '$AssetsDir/suspended_row.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0808-4OaumBr.gif' -OutFile '$AssetsDir/suspended_row.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: suspended_row.gif'
} else {
    $skip++
}

# 1253. suspended split squat (id: 0809)
if (-not (Test-Path '$AssetsDir/suspended_split_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0809-QpXqiq8.gif' -OutFile '$AssetsDir/suspended_split_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: suspended_split_squat.gif'
} else {
    $skip++
}

# 1254. swimmer kicks v. 2 (male) (id: 3433)
if (-not (Test-Path '$AssetsDir/swimmer_kicks_v_2_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3433-SP3hUez.gif' -OutFile '$AssetsDir/swimmer_kicks_v_2_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: swimmer_kicks_v_2_male.gif'
} else {
    $skip++
}

# 1255. swing 360 (id: 3318)
if (-not (Test-Path '$AssetsDir/swing_360.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3318-tnaj0mT.gif' -OutFile '$AssetsDir/swing_360.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: swing_360.gif'
} else {
    $skip++
}

# 1256. three bench dip (id: 1753)
if (-not (Test-Path '$AssetsDir/three_bench_dip.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1753-DQ0cqkT.gif' -OutFile '$AssetsDir/three_bench_dip.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: three_bench_dip.gif'
} else {
    $skip++
}

# 1257. tire flip (id: 2459)
if (-not (Test-Path '$AssetsDir/tire_flip.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2459-oZjMu1t.gif' -OutFile '$AssetsDir/tire_flip.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: tire_flip.gif'
} else {
    $skip++
}

# 1258. trap bar deadlift (id: 0811)
if (-not (Test-Path '$AssetsDir/trap_bar_deadlift.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0811-jQGwmxN.gif' -OutFile '$AssetsDir/trap_bar_deadlift.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: trap_bar_deadlift.gif'
} else {
    $skip++
}

# 1259. triceps dip (id: 0814)
if (-not (Test-Path '$AssetsDir/triceps_dip.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0814-X6C6i5Y.gif' -OutFile '$AssetsDir/triceps_dip.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: triceps_dip.gif'
} else {
    $skip++
}

# 1260. triceps dip (bench leg) (id: 0812)
if (-not (Test-Path '$AssetsDir/triceps_dip_bench_leg.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0812-VuoerH0.gif' -OutFile '$AssetsDir/triceps_dip_bench_leg.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: triceps_dip_bench_leg.gif'
} else {
    $skip++
}

# 1261. triceps dip (between benches) (id: 0813)
if (-not (Test-Path '$AssetsDir/triceps_dip_between_benches.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0813-Wgbn9qo.gif' -OutFile '$AssetsDir/triceps_dip_between_benches.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: triceps_dip_between_benches.gif'
} else {
    $skip++
}

# 1262. triceps dips floor (id: 0815)
if (-not (Test-Path '$AssetsDir/triceps_dips_floor.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0815-7aVz15j.gif' -OutFile '$AssetsDir/triceps_dips_floor.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: triceps_dips_floor.gif'
} else {
    $skip++
}

# 1263. triceps press (id: 0816)
if (-not (Test-Path '$AssetsDir/triceps_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0816-fSrPP6B.gif' -OutFile '$AssetsDir/triceps_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: triceps_press.gif'
} else {
    $skip++
}

# 1264. triceps stretch (id: 0817)
if (-not (Test-Path '$AssetsDir/triceps_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0817-uOV3Itw.gif' -OutFile '$AssetsDir/triceps_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: triceps_stretch.gif'
} else {
    $skip++
}

# 1265. tuck crunch (id: 0871)
if (-not (Test-Path '$AssetsDir/tuck_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0871-BMMolZ3.gif' -OutFile '$AssetsDir/tuck_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: tuck_crunch.gif'
} else {
    $skip++
}

# 1266. twin handle parallel grip lat pulldown (id: 0818)
if (-not (Test-Path '$AssetsDir/twin_handle_parallel_grip_lat_pulldown.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0818-rkg41Fb.gif' -OutFile '$AssetsDir/twin_handle_parallel_grip_lat_pulldown.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: twin_handle_parallel_grip_lat_pulldown.gif'
} else {
    $skip++
}

# 1267. twist hip lift (id: 1466)
if (-not (Test-Path '$AssetsDir/twist_hip_lift.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1466-AX1kB0o.gif' -OutFile '$AssetsDir/twist_hip_lift.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: twist_hip_lift.gif'
} else {
    $skip++
}

# 1268. twisted leg raise (id: 2802)
if (-not (Test-Path '$AssetsDir/twisted_leg_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2802-C0eCeEt.gif' -OutFile '$AssetsDir/twisted_leg_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: twisted_leg_raise.gif'
} else {
    $skip++
}

# 1269. twisted leg raise (female) (id: 2801)
if (-not (Test-Path '$AssetsDir/twisted_leg_raise_female.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2801-yT9tk17.gif' -OutFile '$AssetsDir/twisted_leg_raise_female.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: twisted_leg_raise_female.gif'
} else {
    $skip++
}

# 1270. two toe touch (male) (id: 3231)
if (-not (Test-Path '$AssetsDir/two_toe_touch_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3231-p195zsJ.gif' -OutFile '$AssetsDir/two_toe_touch_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: two_toe_touch_male.gif'
} else {
    $skip++
}

# 1271. upper back stretch (id: 1365)
if (-not (Test-Path '$AssetsDir/upper_back_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1365-GSDioYu.gif' -OutFile '$AssetsDir/upper_back_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: upper_back_stretch.gif'
} else {
    $skip++
}

# 1272. upward facing dog (id: 1366)
if (-not (Test-Path '$AssetsDir/upward_facing_dog.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1366-01qpYSe.gif' -OutFile '$AssetsDir/upward_facing_dog.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: upward_facing_dog.gif'
} else {
    $skip++
}

# 1273. v-sit on floor (id: 3420)
if (-not (Test-Path '$AssetsDir/v-sit_on_floor.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3420-ZuXu4Eq.gif' -OutFile '$AssetsDir/v-sit_on_floor.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: v-sit_on_floor.gif'
} else {
    $skip++
}

# 1274. vertical leg raise (on parallel bars) (id: 0826)
if (-not (Test-Path '$AssetsDir/vertical_leg_raise_on_parallel_bars.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0826-ZNgOYQU.gif' -OutFile '$AssetsDir/vertical_leg_raise_on_parallel_bars.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: vertical_leg_raise_on_parallel_bars.gif'
} else {
    $skip++
}

# 1275. walk elliptical cross trainer (id: 2141)
if (-not (Test-Path '$AssetsDir/walk_elliptical_cross_trainer.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2141-rjtuP6X.gif' -OutFile '$AssetsDir/walk_elliptical_cross_trainer.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: walk_elliptical_cross_trainer.gif'
} else {
    $skip++
}

# 1276. walking high knees lunge (id: 3655)
if (-not (Test-Path '$AssetsDir/walking_high_knees_lunge.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3655-J9zIWig.gif' -OutFile '$AssetsDir/walking_high_knees_lunge.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: walking_high_knees_lunge.gif'
} else {
    $skip++
}

# 1277. walking lunge (id: 1460)
if (-not (Test-Path '$AssetsDir/walking_lunge.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1460-IZVHb27.gif' -OutFile '$AssetsDir/walking_lunge.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: walking_lunge.gif'
} else {
    $skip++
}

# 1278. walking on incline treadmill (id: 3666)
if (-not (Test-Path '$AssetsDir/walking_on_incline_treadmill.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3666-rjiM4L3.gif' -OutFile '$AssetsDir/walking_on_incline_treadmill.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: walking_on_incline_treadmill.gif'
} else {
    $skip++
}

# 1279. walking on stepmill (id: 2311)
if (-not (Test-Path '$AssetsDir/walking_on_stepmill.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2311-j9Q5crt.gif' -OutFile '$AssetsDir/walking_on_stepmill.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: walking_on_stepmill.gif'
} else {
    $skip++
}

# 1280. weighted bench dip (id: 0830)
if (-not (Test-Path '$AssetsDir/weighted_bench_dip.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0830-MU9HnE7.gif' -OutFile '$AssetsDir/weighted_bench_dip.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_bench_dip.gif'
} else {
    $skip++
}

# 1281. weighted close grip chin-up on dip cage (id: 2987)
if (-not (Test-Path '$AssetsDir/weighted_close_grip_chin-up_on_dip_cage.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2987-Gk1r408.gif' -OutFile '$AssetsDir/weighted_close_grip_chin-up_on_dip_cage.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_close_grip_chin-up_on_dip_cage.gif'
} else {
    $skip++
}

# 1282. weighted cossack squats (male) (id: 3643)
if (-not (Test-Path '$AssetsDir/weighted_cossack_squats_male.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3643-GWoKnIm.gif' -OutFile '$AssetsDir/weighted_cossack_squats_male.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_cossack_squats_male.gif'
} else {
    $skip++
}

# 1283. weighted crunch (id: 0832)
if (-not (Test-Path '$AssetsDir/weighted_crunch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0832-s8nrDXF.gif' -OutFile '$AssetsDir/weighted_crunch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_crunch.gif'
} else {
    $skip++
}

# 1284. weighted decline sit-up (id: 3670)
if (-not (Test-Path '$AssetsDir/weighted_decline_sit-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3670-EZeDVzO.gif' -OutFile '$AssetsDir/weighted_decline_sit-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_decline_sit-up.gif'
} else {
    $skip++
}

# 1285. weighted donkey calf raise (id: 0833)
if (-not (Test-Path '$AssetsDir/weighted_donkey_calf_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0833-LmaFNZS.gif' -OutFile '$AssetsDir/weighted_donkey_calf_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_donkey_calf_raise.gif'
} else {
    $skip++
}

# 1286. weighted drop push up (id: 1310)
if (-not (Test-Path '$AssetsDir/weighted_drop_push_up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1310-PSlvNMs.gif' -OutFile '$AssetsDir/weighted_drop_push_up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_drop_push_up.gif'
} else {
    $skip++
}

# 1287. weighted front plank (id: 2135)
if (-not (Test-Path '$AssetsDir/weighted_front_plank.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2135-VBAWRPG.gif' -OutFile '$AssetsDir/weighted_front_plank.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_front_plank.gif'
} else {
    $skip++
}

# 1288. weighted front raise (id: 0834)
if (-not (Test-Path '$AssetsDir/weighted_front_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0834-e4aFmFY.gif' -OutFile '$AssetsDir/weighted_front_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_front_raise.gif'
} else {
    $skip++
}

# 1289. weighted hanging leg-hip raise (id: 0866)
if (-not (Test-Path '$AssetsDir/weighted_hanging_leg-hip_raise.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0866-QOA0FD0.gif' -OutFile '$AssetsDir/weighted_hanging_leg-hip_raise.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_hanging_leg-hip_raise.gif'
} else {
    $skip++
}

# 1290. weighted hyperextension (on stability ball) (id: 0835)
if (-not (Test-Path '$AssetsDir/weighted_hyperextension_on_stability_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0835-8urJS9b.gif' -OutFile '$AssetsDir/weighted_hyperextension_on_stability_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_hyperextension_on_stability_ball.gif'
} else {
    $skip++
}

# 1291. weighted kneeling step with swing (id: 3641)
if (-not (Test-Path '$AssetsDir/weighted_kneeling_step_with_swing.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3641-7uFJuXp.gif' -OutFile '$AssetsDir/weighted_kneeling_step_with_swing.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_kneeling_step_with_swing.gif'
} else {
    $skip++
}

# 1292. weighted lunge with swing (id: 3644)
if (-not (Test-Path '$AssetsDir/weighted_lunge_with_swing.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3644-5WiFcYk.gif' -OutFile '$AssetsDir/weighted_lunge_with_swing.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_lunge_with_swing.gif'
} else {
    $skip++
}

# 1293. weighted muscle up (id: 3286)
if (-not (Test-Path '$AssetsDir/weighted_muscle_up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3286-JsOV1SU.gif' -OutFile '$AssetsDir/weighted_muscle_up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_muscle_up.gif'
} else {
    $skip++
}

# 1294. weighted muscle up (on bar) (id: 3312)
if (-not (Test-Path '$AssetsDir/weighted_muscle_up_on_bar.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3312-MCkqdKE.gif' -OutFile '$AssetsDir/weighted_muscle_up_on_bar.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_muscle_up_on_bar.gif'
} else {
    $skip++
}

# 1295. weighted one hand pull up (id: 3290)
if (-not (Test-Path '$AssetsDir/weighted_one_hand_pull_up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3290-fXfqg1E.gif' -OutFile '$AssetsDir/weighted_one_hand_pull_up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_one_hand_pull_up.gif'
} else {
    $skip++
}

# 1296. weighted overhead crunch (on stability ball) (id: 0840)
if (-not (Test-Path '$AssetsDir/weighted_overhead_crunch_on_stability_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0840-xmM75XG.gif' -OutFile '$AssetsDir/weighted_overhead_crunch_on_stability_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_overhead_crunch_on_stability_ball.gif'
} else {
    $skip++
}

# 1297. weighted pull-up (id: 0841)
if (-not (Test-Path '$AssetsDir/weighted_pull-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0841-HMzLjXx.gif' -OutFile '$AssetsDir/weighted_pull-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_pull-up.gif'
} else {
    $skip++
}

# 1298. weighted round arm (id: 0844)
if (-not (Test-Path '$AssetsDir/weighted_round_arm.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0844-VLYXo8S.gif' -OutFile '$AssetsDir/weighted_round_arm.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_round_arm.gif'
} else {
    $skip++
}

# 1299. weighted russian twist (id: 0846)
if (-not (Test-Path '$AssetsDir/weighted_russian_twist.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0846-fZFZ704.gif' -OutFile '$AssetsDir/weighted_russian_twist.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_russian_twist.gif'
} else {
    $skip++
}

# 1300. weighted russian twist (legs up) (id: 0845)
if (-not (Test-Path '$AssetsDir/weighted_russian_twist_legs_up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0845-WU9BLIs.gif' -OutFile '$AssetsDir/weighted_russian_twist_legs_up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_russian_twist_legs_up.gif'
} else {
    $skip++
}

# 1301. weighted russian twist v. 2 (id: 2371)
if (-not (Test-Path '$AssetsDir/weighted_russian_twist_v_2.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2371-YIUAtYf.gif' -OutFile '$AssetsDir/weighted_russian_twist_v_2.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_russian_twist_v_2.gif'
} else {
    $skip++
}

# 1302. weighted seated bicep curl (on stability ball) (id: 0847)
if (-not (Test-Path '$AssetsDir/weighted_seated_bicep_curl_on_stability_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0847-b4b6afT.gif' -OutFile '$AssetsDir/weighted_seated_bicep_curl_on_stability_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_seated_bicep_curl_on_stability_ball.gif'
} else {
    $skip++
}

# 1303. weighted seated twist (on stability ball) (id: 0849)
if (-not (Test-Path '$AssetsDir/weighted_seated_twist_on_stability_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0849-s34Y4LR.gif' -OutFile '$AssetsDir/weighted_seated_twist_on_stability_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_seated_twist_on_stability_ball.gif'
} else {
    $skip++
}

# 1304. weighted side bend (on stability ball) (id: 0850)
if (-not (Test-Path '$AssetsDir/weighted_side_bend_on_stability_ball.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0850-6bOA1Oi.gif' -OutFile '$AssetsDir/weighted_side_bend_on_stability_ball.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_side_bend_on_stability_ball.gif'
} else {
    $skip++
}

# 1305. weighted sissy squat (id: 0851)
if (-not (Test-Path '$AssetsDir/weighted_sissy_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0851-0lQnxMZ.gif' -OutFile '$AssetsDir/weighted_sissy_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_sissy_squat.gif'
} else {
    $skip++
}

# 1306. weighted squat (id: 0852)
if (-not (Test-Path '$AssetsDir/weighted_squat.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0852-JZuApnB.gif' -OutFile '$AssetsDir/weighted_squat.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_squat.gif'
} else {
    $skip++
}

# 1307. weighted standing curl (id: 0853)
if (-not (Test-Path '$AssetsDir/weighted_standing_curl.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0853-M5Y7GPg.gif' -OutFile '$AssetsDir/weighted_standing_curl.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_standing_curl.gif'
} else {
    $skip++
}

# 1308. weighted standing hand squeeze (id: 0854)
if (-not (Test-Path '$AssetsDir/weighted_standing_hand_squeeze.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0854-bjqbauy.gif' -OutFile '$AssetsDir/weighted_standing_hand_squeeze.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_standing_hand_squeeze.gif'
} else {
    $skip++
}

# 1309. weighted straight bar dip (id: 3313)
if (-not (Test-Path '$AssetsDir/weighted_straight_bar_dip.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3313-Ff18ItA.gif' -OutFile '$AssetsDir/weighted_straight_bar_dip.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_straight_bar_dip.gif'
} else {
    $skip++
}

# 1310. weighted stretch lunge (id: 3642)
if (-not (Test-Path '$AssetsDir/weighted_stretch_lunge.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3642-13VW2VO.gif' -OutFile '$AssetsDir/weighted_stretch_lunge.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_stretch_lunge.gif'
} else {
    $skip++
}

# 1311. weighted svend press (id: 0856)
if (-not (Test-Path '$AssetsDir/weighted_svend_press.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0856-I1OBLnn.gif' -OutFile '$AssetsDir/weighted_svend_press.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_svend_press.gif'
} else {
    $skip++
}

# 1312. weighted three bench dips (id: 1754)
if (-not (Test-Path '$AssetsDir/weighted_three_bench_dips.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1754-gtO1ErP.gif' -OutFile '$AssetsDir/weighted_three_bench_dips.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_three_bench_dips.gif'
} else {
    $skip++
}

# 1313. weighted tricep dips (id: 1755)
if (-not (Test-Path '$AssetsDir/weighted_tricep_dips.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1755-bZq4bwK.gif' -OutFile '$AssetsDir/weighted_tricep_dips.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_tricep_dips.gif'
} else {
    $skip++
}

# 1314. weighted triceps dip on high parallel bars (id: 1767)
if (-not (Test-Path '$AssetsDir/weighted_triceps_dip_on_high_parallel_bars.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1767-K1vlode.gif' -OutFile '$AssetsDir/weighted_triceps_dip_on_high_parallel_bars.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: weighted_triceps_dip_on_high_parallel_bars.gif'
} else {
    $skip++
}

# 1315. wheel rollerout (id: 0857)
if (-not (Test-Path '$AssetsDir/wheel_rollerout.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0857-NAgVB3t.gif' -OutFile '$AssetsDir/wheel_rollerout.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: wheel_rollerout.gif'
} else {
    $skip++
}

# 1316. wheel run (id: 3637)
if (-not (Test-Path '$AssetsDir/wheel_run.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/3637-km2Ljzj.gif' -OutFile '$AssetsDir/wheel_run.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: wheel_run.gif'
} else {
    $skip++
}

# 1317. wide grip pull-up (id: 1429)
if (-not (Test-Path '$AssetsDir/wide_grip_pull-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1429-Qqi7bko.gif' -OutFile '$AssetsDir/wide_grip_pull-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: wide_grip_pull-up.gif'
} else {
    $skip++
}

# 1318. wide grip rear pull-up (id: 1367)
if (-not (Test-Path '$AssetsDir/wide_grip_rear_pull-up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1367-OYFhXVD.gif' -OutFile '$AssetsDir/wide_grip_rear_pull-up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: wide_grip_rear_pull-up.gif'
} else {
    $skip++
}

# 1319. wide hand push up (id: 1311)
if (-not (Test-Path '$AssetsDir/wide_hand_push_up.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1311-JmMVpR3.gif' -OutFile '$AssetsDir/wide_hand_push_up.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: wide_hand_push_up.gif'
} else {
    $skip++
}

# 1320. wide-grip chest dip on high parallel bars (id: 2363)
if (-not (Test-Path '$AssetsDir/wide-grip_chest_dip_on_high_parallel_bars.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/2363-O2K9Vb5.gif' -OutFile '$AssetsDir/wide-grip_chest_dip_on_high_parallel_bars.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: wide-grip_chest_dip_on_high_parallel_bars.gif'
} else {
    $skip++
}

# 1321. wind sprints (id: 0858)
if (-not (Test-Path '$AssetsDir/wind_sprints.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0858-Qoujh3Q.gif' -OutFile '$AssetsDir/wind_sprints.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: wind_sprints.gif'
} else {
    $skip++
}

# 1322. world greatest stretch (id: 1604)
if (-not (Test-Path '$AssetsDir/world_greatest_stretch.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1604-DFGXwZr.gif' -OutFile '$AssetsDir/world_greatest_stretch.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: world_greatest_stretch.gif'
} else {
    $skip++
}

# 1323. wrist circles (id: 1428)
if (-not (Test-Path '$AssetsDir/wrist_circles.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/1428-2zNKRUB.gif' -OutFile '$AssetsDir/wrist_circles.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: wrist_circles.gif'
} else {
    $skip++
}

# 1324. wrist rollerer (id: 0859)
if (-not (Test-Path '$AssetsDir/wrist_rollerer.gif')) {
    Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/gh/hasaneyldrm/exercises-dataset@main/videos/0859-bd5b860.gif' -OutFile '$AssetsDir/wrist_rollerer.gif' -UseBasicParsing
    $count++
    Write-Host '[$count / 1324] Downloaded: wrist_rollerer.gif'
} else {
    $skip++
}


Write-Host ""
Write-Host "Download complete: $count new files, $skip skipped (already exist)"
