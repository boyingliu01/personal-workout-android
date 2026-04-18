import 'package:flutter/material.dart';

/// App color constants following Material Design 3 guidelines.
abstract class AppColors {
  AppColors._();

  // Primary brand colors - energetic orange/warm tones
  static const Color primary = Color(0xFFFF6B35);
  static const Color primaryLight = Color(0xFFFF8A65);
  static const Color primaryDark = Color(0xFFE64A19);
  static const Color onPrimary = Color(0xFFFFFFFF);

  // Secondary - deep blue
  static const Color secondary = Color(0xFF1A237E);
  static const Color secondaryLight = Color(0xFF534BAE);
  static const Color secondaryDark = Color(0xFF000051);
  static const Color onSecondary = Color(0xFFFFFFFF);

  // Tertiary - energetic green for success/completed states
  static const Color tertiary = Color(0xFF4CAF50);
  static const Color tertiaryLight = Color(0xFF81C784);
  static const Color tertiaryDark = Color(0xFF388E3C);

  // Background and surface
  static const Color background = Color(0xFFF5F5F0);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceVariant = Color(0xFFF0EDE8);

  // Text colors
  static const Color onBackground = Color(0xFF1C1B1F);
  static const Color onSurface = Color(0xFF1C1B1F);
  static const Color onSurfaceVariant = Color(0xFF49454F);

  // Accent colors
  static const Color error = Color(0xFFBA1A1A);
  static const Color errorContainer = Color(0xFFFFDAD6);
  static const Color warning = Color(0xFFFFB300);
  static const Color success = Color(0xFF4CAF50);

  // Fitness-specific accent colors
  static const Color warmupAccent = Color(0xFFFF7043);
  static const Color stretchAccent = Color(0xFF4DB6AC);
  static const Color strengthAccent = Color(0xFF7E57C2);

  // Utility colors
  static const Color disabled = Color(0xFF9E9E9E);
  static const Color divider = Color(0xFFE0E0E0);
  static const Color shadow = Color(0x1F000000);

  // Chip colors
  static const Color chipBackground = Color(0xFFE0E0E0);
  static const Color chipText = Color(0xFF616161);
}
