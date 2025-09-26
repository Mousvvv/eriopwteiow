// Design Tokens - Flutter/Dart
// Generated from design tokens
// @generated - Do not modify by hand

import 'package:flutter/material.dart';

/// Base text styles that adapt to the current theme
class AppTextStyles {
  AppTextStyles._();

  /// Base text style that all other styles should extend from
  static TextStyle baseStyle(BuildContext context) => TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0,
    color: context.textColor,
    decoration: TextDecoration.none,
  );

}

import 'package:flutter/material.dart';

// MARK: - Colors
class AppColors {
  AppColors._();

  static const Color color_primary_ = Color(0xFF28C76F);

  static const Color color_primary_pressed = Color(0xFF24B364);

  static const Color color_primary_disabled = Color(0xFF1E7A50);

  static const Color color_secondary_ = Color(0xFF7367F0);

  static const Color color_secondary_pressed = Color(0xFF5E54D1);

  static const Color color_secondary_disabled = Color(0xFF3D2B9B);

  static const Color color_background_ = Color(0xFF121212);

  static const Color color_background_surface = Color(0xFF1E1E1E);

  static const Color color_background_card = Color(0xFF1A1A1A);

  static const Color color_text_main = Color(0xFFFFFFFF);

  static const Color color_text_secondary = Color(0xFFB0B0B0);

  static const Color color_text_placeholder = Color(0xFF666666);

  static const Color color_text_disabled = Color(0xFF444444);

  static const Color color_error_ = Color(0xFFFF6F61);

  static const Color color_error_on = Color(0xFFFFFFFF);

  static const Color color_success_ = Color(0xFF28C76F);

  static const Color color_success_on = Color(0xFFFFFFFF);

  static const Color color_warning_ = Color(0xFFFF9F43);

  static const Color color_warning_on = Color(0xFF000000);

}

// MARK: - Typography
class AppTypography {
  AppTypography._();

  // Font Families
  /// Font family: Inter
  static const String typography_fontFamily_primary = "Inter";
  /// Font family: Roboto
  static const String typography_fontFamily_secondary = "Roboto";

  // Font Weights
  /// Font weight: 400
  static const FontWeight typography_fontWeight_regular = FontWeight.w400;
  /// Font weight: 500
  static const FontWeight typography_fontWeight_medium = FontWeight.w500;
  /// Font weight: 600
  static const FontWeight typography_fontWeight_semibold = FontWeight.w600;
  /// Font weight: 700
  static const FontWeight typography_fontWeight_bold = FontWeight.w700;

  // Font Sizes
  /// Font size: 12sp
  static const double typography_fontSize_12 = 12;
  /// Font size: 14sp
  static const double typography_fontSize_14 = 14;
  /// Font size: 16sp
  static const double typography_fontSize_16 = 16;
  /// Font size: 18sp
  static const double typography_fontSize_18 = 18;
  /// Font size: 20sp
  static const double typography_fontSize_20 = 20;
  /// Font size: 24sp
  static const double typography_fontSize_24 = 24;

  /// Line heights as relative multipliers
  /// Example: 1.5 means line height is 150% of the font size
  // Line Heights
  /// Line height multiplier: 16
  /// Usage: height: AppTypography.typography_lineHeight_small
  static const double typography_lineHeight_small = 16;
  /// Line height multiplier: 20
  /// Usage: height: AppTypography.typography_lineHeight_medium
  static const double typography_lineHeight_medium = 20;
  /// Line height multiplier: 24
  /// Usage: height: AppTypography.typography_lineHeight_large
  static const double typography_lineHeight_large = 24;

  /// Letter spacing values in EM units
  /// Values are relative to font size (1em = font size)
  // Letter Spacings
  /// Letter spacing: -0.02px (-0.001em)
  /// Usage: letterSpacing: AppTypography.typography_letterSpacing_tight
  static const double typography_letterSpacing_tight = -0.001;
  /// Letter spacing: 0px (0.000em)
  /// Usage: letterSpacing: AppTypography.typography_letterSpacing_normal
  static const double typography_letterSpacing_normal = 0.000;
  /// Letter spacing: 0.02px (0.001em)
  /// Usage: letterSpacing: AppTypography.typography_letterSpacing_wide
  static const double typography_letterSpacing_wide = 0.001;

  // MARK: - TextStyle Constants
  /// Base text style that adapts to the current theme
  /// All other text styles should extend from this
  static TextStyle baseStyle(BuildContext context) => TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0,
    decoration: TextDecoration.none,
    color: context.textColor,
    leadingDistribution: TextLeadingDistribution.even,
  );

  /// Display text style for headlines and large text
  static TextStyle displayStyle(BuildContext context) => TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w600,
    height: 1.3,
    letterSpacing: -0.5,
    color: context.textColor,
    leadingDistribution: TextLeadingDistribution.even,
  );

  /// Body text style optimized for Inter font
  static TextStyle interBodyStyle(BuildContext context) => baseStyle(context).copyWith(
    fontFamily: 'Inter',
    letterSpacing: -0.1,
  );

  /// Body text style optimized for Poppins font
  static TextStyle poppinsBodyStyle(BuildContext context) => baseStyle(context).copyWith(
    fontFamily: 'Poppins',
    letterSpacing: 0.1,
  );

  /// Default text style using Inter
  static TextStyle get typography_fontFamily_primaryStyle => TextStyle(
    fontFamily: typography_fontFamily_primary,
    fontWeight: FontWeight.w400,
    fontSize: 16.0,
    height: 1.5,
    letterSpacing: 0.0,
    color: Colors.black,
  );

  /// Default text style using Roboto
  static TextStyle get typography_fontFamily_secondaryStyle => TextStyle(
    fontFamily: typography_fontFamily_secondary,
    fontWeight: FontWeight.w400,
    fontSize: 16.0,
    height: 1.5,
    letterSpacing: 0.0,
    color: Colors.black,
  );

}

// MARK: - Spacing
class AppSpacing {
  AppSpacing._();

  static const double size_spacing_xs = 4;
  static const double size_spacing_sm = 8;
  static const double size_spacing_md = 16;
  static const double size_spacing_lg = 24;
  static const double size_spacing_xl = 32;
}

// MARK: - Sizing
class AppSizing {
  AppSizing._();

  static const double size_borderRadius_sm = 4;
  static const double size_borderRadius_md = 8;
  static const double size_borderRadius_lg = 16;
  static const double size_borderRadius_round = 9999;
}

// MARK: - Shadows
class AppShadows {
  AppShadows._();

  // Small Shadows
  /// Creates a small shadow effect
  /// - Color: rgba(0,0,0,0.1) with opacity 0.25
  /// - Offset: (0px, 1px)
  /// - Blur: 2px
  /// - Spread: 0px
  static BoxShadow get shadow_sm => BoxShadow(
    color: Color(rgba(0,0,0,0.1)).withOpacity(0.25),
    offset: Offset(0, 1),
    blurRadius: 2,
    spreadRadius: 0,
  );

  // Medium Shadows
  static BoxShadow get shadow_md => BoxShadow(
    color: Color(rgba(0,0,0,0.15)).withOpacity(0.25),
    offset: Offset(0, 4),
    blurRadius: 6,
    spreadRadius: 0,
  );

  // Large Shadows
  static BoxShadow get shadow_lg => BoxShadow(
    color: Color(rgba(0,0,0,0.2)).withOpacity(0.25),
    offset: Offset(0, 10),
    blurRadius: 15,
    spreadRadius: 0,
  );

}

// MARK: - Opacities
class AppOpacities {
  AppOpacities._();

  static const double opacity_disabled = 0.38;
  static const double opacity_hover = 0.08;
  static const double opacity_focus = 0.12;
}

// MARK: - Other Tokens
class AppOtherTokens {
  AppOtherTokens._();

  static const String $schema = "https://example.com/dark-mode-tokens.schema.json";
}


/// Extension on BuildContext for easy theme and color access
extension DesignTokensContext on BuildContext {
  /// Returns true if the current theme is in dark mode
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  /// Quick access to the current ColorScheme
  ColorScheme get colors => Theme.of(this).colorScheme;

  /// Quick access to the current ThemeData
  ThemeData get theme => Theme.of(this);

  /// Main text color that adapts to the current theme
  Color get textColor => isDarkMode ? Colors.white : Colors.black87;

  /// Primary text color with proper contrast
  Color get primaryTextColor => colors.onPrimary;

  /// Background color that adapts to the current theme
  Color get backgroundColor => isDarkMode ? Colors.grey[900]! : Colors.white;
}

/// Extension on BuildContext for easy theme access
extension ThemeContext on BuildContext {
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
  ColorScheme get colors => Theme.of(this).colorScheme;
}

