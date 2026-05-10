import 'package:flutter/services.dart';

/// Service for haptic feedback management.
///
/// Wraps HapticFeedback from Flutter to provide consistent feedback patterns
/// across the app. Delegates directly to platform haptic capabilities.
///
/// Design Decision: Simple delegation to avoid direct Flutter dependency in UI code
class HapticService {
  /// Provides light impact haptic feedback.
  ///
  /// Corresponds to HapticFeedback.lightImpact().
  /// Suitable for small interactions like button taps on appropriate surfaces.
  Future<void> light() async {
    await HapticFeedback.lightImpact();
  }

  /// Provides medium impact haptic feedback.
  ///
  /// Corresponds to HapticFeedback.mediumImpact().
  /// Suitable for moderate interactions like selection changes.
  Future<void> medium() async {
    await HapticFeedback.mediumImpact();
  }

  /// Provides heavy impact haptic feedback.
  ///
  /// Corresponds to HapticFeedback.heavyImpact().
  /// Suitable for strong interactions or errors.
  Future<void> heavy() async {
    await HapticFeedback.heavyImpact();
  }

  /// Provides success feedback.
  ///
  /// Uses medium impact for positive confirmation feedback.
  /// Suitable for successful operations or positive state changes.
  Future<void> success() async {
    await HapticFeedback.mediumImpact();
  }

  /// Provides error feedback.
  ///
  /// Uses heavy impact for error/warning notifications.
  /// Suitable for failed operations or negative state changes.
  Future<void> error() async {
    await HapticFeedback.heavyImpact();
  }
}
