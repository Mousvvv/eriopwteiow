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

  static const Color _colors_primary_Light = Color(0xFF4F46E5);

  static const Color _colors_primary_pressedLight = Color(0xFF4338CA);

  static const Color _colors_primary_activeLight = Color(0xFF3730A3);

  static const Color _colors_primary_disabledLight = Color(0xFFC7D2FE);

  static const Color _colors_background_Light = Color(0xFFFFFFFF);

  static const Color _colors_background_surfaceLight = Color(0xFFF9FAFB);

  static const Color _colors_text_primaryLight = Color(0xFF111827);

  static const Color _colors_text_secondaryLight = Color(0xFF6B7280);

  static const Color _colors_text_disabledLight = Color(0xFF9CA3AF);

  static const Color _colors_status_errorLight = Color(0xFFDC2626);

  static const Color _colors_status_successLight = Color(0xFF16A34A);

  static const Color _colors_status_warningLight = Color(0xFFD97706);

  static const Color _colors_status_infoLight = Color(0xFF0EA5E9);

}

// MARK: - Typography
class AppTypography {
  AppTypography._();

  // Font Families
  /// Font family: Inter
  static const String light_typography_fontFamilies_main = "Inter";
  /// Font family: Poppins
  static const String light_typography_fontFamilies_display = "Poppins";

  // Font Weights
  /// Font weight: 400
  static const FontWeight light_typography_fontWeights_regular = FontWeight.w400;
  /// Font weight: 500
  static const FontWeight light_typography_fontWeights_medium = FontWeight.w500;
  /// Font weight: 700
  static const FontWeight light_typography_fontWeights_bold = FontWeight.w700;

  // Font Sizes
  /// Font size: 14sp
  static const double light_typography_fontSizes_sm = 14;
  /// Font size: 16sp
  static const double light_typography_fontSizes_md = 16;
  /// Font size: 20sp
  static const double light_typography_fontSizes_lg = 20;
  /// Font size: 24sp
  static const double light_typography_fontSizes_xl = 24;

  /// Line heights as relative multipliers
  /// Example: 1.5 means line height is 150% of the font size
  // Line Heights
  /// Line height multiplier: 1.25
  /// Usage: height: AppTypography.light_typography_lineHeights_tight
  static const double light_typography_lineHeights_tight = 1.25;
  /// Line height multiplier: 1.5
  /// Usage: height: AppTypography.light_typography_lineHeights_normal
  static const double light_typography_lineHeights_normal = 1.5;
  /// Line height multiplier: 1.625
  /// Usage: height: AppTypography.light_typography_lineHeights_relaxed
  static const double light_typography_lineHeights_relaxed = 1.625;

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
  static TextStyle get light_typography_fontFamilies_mainStyle => TextStyle(
    fontFamily: light_typography_fontFamilies_main,
    fontWeight: FontWeight.w400,
    fontSize: 16.0,
    height: 1.5,
    letterSpacing: 0.0,
    color: Colors.black,
  );

  /// Default text style using Poppins
  static TextStyle get light_typography_fontFamilies_displayStyle => TextStyle(
    fontFamily: light_typography_fontFamilies_display,
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

  static const double light_spacing_sm = 8;
  static const double light_spacing_md = 16;
  static const double light_spacing_lg = 24;
  static const double light_spacing_xl = 32;
}

// MARK: - Sizing
class AppSizing {
  AppSizing._();

  static const double light_sizing_buttonHeight = 44;
  static const double light_sizing_inputHeight = 48;
  static const double light_sizing_cardHeight = 120;
  static const double light_sizing_sidebarWidth = 280;
  static const double light_sizing_modalWidth = 400;
}

// MARK: - Border Radius
class AppBorderRadius {
  AppBorderRadius._();

  static const double light_borderRadius_sm = 4;
  static const double light_borderRadius_md = 8;
  static const double light_borderRadius_lg = 16;
  static const double light_borderRadius_full = 9999;
}

// MARK: - Borders
class AppBorders {
  AppBorders._();

  static const double light_border_thin = 1;
  static const double light_border_medium = 1.5;
  static const double light_border_thick = 2;
}

// MARK: - Shadows
class AppShadows {
  AppShadows._();

  // Small Shadows
  /// Creates a small shadow effect
  /// - Color: 0px with opacity 0.25
  /// - Offset: (0px, 1px)
  /// - Blur: 3px
  /// - Spread: 0px
  static BoxShadow get light_shadows_sm => BoxShadow(
    color: Color(0px).withOpacity(0.25),
    offset: Offset(0, 1),
    blurRadius: 3,
    spreadRadius: 0,
  );

  /// Creates a small shadow effect
  /// - Color: -1px with opacity 0.25
  /// - Offset: (0px, 4px)
  /// - Blur: 6px
  /// - Spread: 0px
  static BoxShadow get light_shadows_md => BoxShadow(
    color: Color(-1px).withOpacity(0.25),
    offset: Offset(0, 4),
    blurRadius: 6,
    spreadRadius: 0,
  );

}

// MARK: - Z-Indices
class AppZIndices {
  AppZIndices._();

  static const double light_zIndex_dropdown = 1000;
  static const double light_zIndex_modal = 1050;
  static const double light_zIndex_tooltip = 1100;
}

// MARK: - Transitions
class AppTransitions {
  AppTransitions._();

  static const Duration light_transitions_fast = Duration(milliseconds: 150);
  static const Duration light_transitions_normal = Duration(milliseconds: 200);
  static const Duration light_transitions_slow = Duration(milliseconds: 300);
}

// MARK: - Other Tokens
class AppOtherTokens {
  AppOtherTokens._();

  static const String light_icons_sm = "16";
  static const String light_icons_md = "20";
  static const String light_icons_lg = "24";
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

