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

  static const Color PrimaryLight = Color(0xFF2563EB);
  static const Color PrimaryDark = Color(0xFF3B82F6);
  static Color Primary(BuildContext context) => Theme.of(context).brightness == Brightness.dark ? PrimaryDark : PrimaryLight;

  static const Color PrimaryPressedLight = Color(0xFF1D4ED8);
  static const Color PrimaryPressedDark = Color(0xFF2563EB);
  static Color PrimaryPressed(BuildContext context) => Theme.of(context).brightness == Brightness.dark ? PrimaryPressedDark : PrimaryPressedLight;

  static const Color PrimaryActiveLight = Color(0xFF1E40AF);
  static const Color PrimaryActiveDark = Color(0xFF1D4ED8);
  static Color PrimaryActive(BuildContext context) => Theme.of(context).brightness == Brightness.dark ? PrimaryActiveDark : PrimaryActiveLight;

  static const Color PrimaryDisabledLight = Color(0xFF93C5FD);
  static const Color PrimaryDisabledDark = Color(0xFF1E3A8A);
  static Color PrimaryDisabled(BuildContext context) => Theme.of(context).brightness == Brightness.dark ? PrimaryDisabledDark : PrimaryDisabledLight;

  static const Color SecondaryLight = Color(0xFFF3F4F6);
  static const Color SecondaryDark = Color(0xFF374151);
  static Color Secondary(BuildContext context) => Theme.of(context).brightness == Brightness.dark ? SecondaryDark : SecondaryLight;

  static const Color SecondaryPressedLight = Color(0xFFE5E7EB);
  static const Color SecondaryPressedDark = Color(0xFF4B5563);
  static Color SecondaryPressed(BuildContext context) => Theme.of(context).brightness == Brightness.dark ? SecondaryPressedDark : SecondaryPressedLight;

  static const Color BgColorLight = Color(0xFFFFFFFF);
  static const Color BgColorDark = Color(0xFF0F172A);
  static Color BgColor(BuildContext context) => Theme.of(context).brightness == Brightness.dark ? BgColorDark : BgColorLight;

  static const Color SurfaceLight = Color(0xFFF9FAFB);
  static const Color SurfaceDark = Color(0xFF1E293B);
  static Color Surface(BuildContext context) => Theme.of(context).brightness == Brightness.dark ? SurfaceDark : SurfaceLight;

  static const Color PrimaryTextLight = Color(0xFF111827);
  static const Color PrimaryTextDark = Color(0xFFF8FAFC);
  static Color PrimaryText(BuildContext context) => Theme.of(context).brightness == Brightness.dark ? PrimaryTextDark : PrimaryTextLight;

  static const Color SecondaryTextLight = Color(0xFF6B7280);
  static const Color SecondaryTextDark = Color(0xFFCBD5E1);
  static Color SecondaryText(BuildContext context) => Theme.of(context).brightness == Brightness.dark ? SecondaryTextDark : SecondaryTextLight;

  static const Color TextDisabledLight = Color(0xFF9CA3AF);
  static const Color TextDisabledDark = Color(0xFF64748B);
  static Color TextDisabled(BuildContext context) => Theme.of(context).brightness == Brightness.dark ? TextDisabledDark : TextDisabledLight;

  static const Color OnPrimaryTextLight = Color(0xFFFFFFFF);
  static const Color OnPrimaryTextDark = Color(0xFFFFFFFF);
  static Color OnPrimaryText(BuildContext context) => Theme.of(context).brightness == Brightness.dark ? OnPrimaryTextDark : OnPrimaryTextLight;

  static const Color CardLight = Color(0xFFFFFFFF);
  static const Color CardDark = Color(0xFF1E293B);
  static Color Card(BuildContext context) => Theme.of(context).brightness == Brightness.dark ? CardDark : CardLight;

  static const Color DividerLight = Color(0xFFE5E7EB);
  static const Color DividerDark = Color(0xFF334155);
  static Color Divider(BuildContext context) => Theme.of(context).brightness == Brightness.dark ? DividerDark : DividerLight;

  static const Color ErrorLight = Color(0xFFDC2626);
  static const Color ErrorDark = Color(0xFFEF4444);
  static Color Error(BuildContext context) => Theme.of(context).brightness == Brightness.dark ? ErrorDark : ErrorLight;

  static const Color SuccessLight = Color(0xFF16A34A);
  static const Color SuccessDark = Color(0xFF22C55E);
  static Color Success(BuildContext context) => Theme.of(context).brightness == Brightness.dark ? SuccessDark : SuccessLight;

  static const Color WarningLight = Color(0xFFD97706);
  static const Color WarningDark = Color(0xFFF59E0B);
  static Color Warning(BuildContext context) => Theme.of(context).brightness == Brightness.dark ? WarningDark : WarningLight;

  static const Color InfoLight = Color(0xFF0EA5E9);
  static const Color InfoDark = Color(0xFF06B6D4);
  static Color Info(BuildContext context) => Theme.of(context).brightness == Brightness.dark ? InfoDark : InfoLight;

}

// MARK: - Typography
class AppTypography {
  AppTypography._();

  // Font Families
  /// Font family: Inter
  static const String MainFont = "Inter";
  /// Font family: Poppins
  static const String DisplayFont = "Poppins";

  // Font Weights
  /// Font weight: 300
  static const FontWeight FontWeightLight = FontWeight.w300;
  /// Font weight: 400
  static const FontWeight FontWeightRegular = FontWeight.w400;
  /// Font weight: 500
  static const FontWeight FontWeightMedium = FontWeight.w500;
  /// Font weight: 600
  static const FontWeight FontWeightSemiBold = FontWeight.w600;
  /// Font weight: 700
  static const FontWeight FontWeightBold = FontWeight.w700;

  // Font Sizes
  /// Font size: 12sp
  static const double FontSizeXS = 12;
  /// Font size: 14sp
  static const double FontSizeS = 14;
  /// Font size: 16sp
  static const double FontSizeMD = 16;
  /// Font size: 18sp
  static const double FontSizeLG = 18;
  /// Font size: 20sp
  static const double FontSizeXL = 20;
  /// Font size: 24sp
  static const double FontSizeXXL = 24;
  /// Font size: 32sp
  static const double FontSizeXXXL = 32;
  /// Font size: 48sp
  static const double FontSizeDisplay = 48;

  /// Line heights as relative multipliers
  /// Example: 1.5 means line height is 150% of the font size
  // Line Heights
  /// Line height multiplier: 1.25
  /// Usage: height: AppTypography.LineHeightTight
  static const double LineHeightTight = 1.25;
  /// Line height multiplier: 1.5
  /// Usage: height: AppTypography.LineHeightNormal
  static const double LineHeightNormal = 1.5;
  /// Line height multiplier: 1.625
  /// Usage: height: AppTypography.LineHeightRelaxed
  static const double LineHeightRelaxed = 1.625;
  /// Line height multiplier: 2
  /// Usage: height: AppTypography.LineHeightLoose
  static const double LineHeightLoose = 2;

  /// Letter spacing values in EM units
  /// Values are relative to font size (1em = font size)
  // Letter Spacings
  /// Letter spacing: -0.025px (-0.002em)
  /// Usage: letterSpacing: AppTypography.LetterSpacingTight
  static const double LetterSpacingTight = -0.002;
  /// Letter spacing: 0px (0.000em)
  /// Usage: letterSpacing: AppTypography.LetterSpacingNormal
  static const double LetterSpacingNormal = 0.000;
  /// Letter spacing: 0.025px (0.002em)
  /// Usage: letterSpacing: AppTypography.LetterSpacingWide
  static const double LetterSpacingWide = 0.002;
  /// Letter spacing: 0.05px (0.003em)
  /// Usage: letterSpacing: AppTypography.LetterSpacingWider
  static const double LetterSpacingWider = 0.003;

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
  static TextStyle get MainFontStyle => TextStyle(
    fontFamily: MainFont,
    fontWeight: FontWeight.w400,
    fontSize: 16.0,
    height: 1.5,
    letterSpacing: 0.0,
    color: Colors.black,
  );

  /// Default text style using Poppins
  static TextStyle get DisplayFontStyle => TextStyle(
    fontFamily: DisplayFont,
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

  static const double SpacingXS = 4;
  static const double SpacingS = 8;
  static const double SpacingMD = 16;
  static const double SpacingLG = 24;
  static const double SpacingXL = 32;
  static const double SpacingXXL = 40;
  static const double SpacingXXXL = 48;
  static const double SpacingXXXXL = 64;
}

// MARK: - Sizing
class AppSizing {
  AppSizing._();

  static const double SizingXS = 24;
  static const double SizingS = 32;
  static const double SizingMD = 40;
  static const double SizingLG = 48;
  static const double SizingXL = 56;
  static const double SizingXXL = 64;
  static const double SizingXXXL = 80;
  static const double HeightButton = 44;
  static const double HeightInput = 48;
  static const double HeightCard = 120;
  static const double WidthSidebar = 280;
  static const double WidthModal = 400;
  static const double WidthContainer = 1200;
  static const double IconSizeXS = 12;
  static const double IconSizeS = 16;
  static const double IconSizeMD = 20;
  static const double IconSizeLG = 24;
  static const double IconSizeXL = 32;
}

// MARK: - Border Radius
class AppBorderRadius {
  AppBorderRadius._();

  static const double BorderRadiusXS = 4;
  static const double BorderRadiusS = 8;
  static const double BorderRadiusMD = 12;
  static const double BorderRadiusLG = 16;
  static const double BorderRadiusXL = 20;
  static const double BorderRadiusXXL = 24;
  static const double BorderRadiusFull = 9999;
}

// MARK: - Borders
class AppBorders {
  AppBorders._();

  static const double BorderThin = 1;
  static const double BorderMedium = 1.5;
  static const double BorderThick = 2;
  static const double BorderFocus = 3;
}

// MARK: - Shadows
class AppShadows {
  AppShadows._();

  // Small Shadows
  /// Creates a small shadow effect
  /// - Color: #000000 with opacity 0.25
  /// - Offset: (0px, 1px)
  /// - Blur: 3px
  /// - Spread: 0px
  static BoxShadow get BoxShadowS => BoxShadow(
    color: Color(0xFF000000).withOpacity(0.25),
    offset: Offset(0, 1),
    blurRadius: 3,
    spreadRadius: 0,
  );

  // Medium Shadows
  static BoxShadow get BoxShadowMD => BoxShadow(
    color: Color(0xFF000000).withOpacity(0.25),
    offset: Offset(0, 4),
    blurRadius: 6,
    spreadRadius: -1,
  );

  // Large Shadows
  static BoxShadow get BoxShadowLG => BoxShadow(
    color: Color(0xFF000000).withOpacity(0.25),
    offset: Offset(0, 10),
    blurRadius: 15,
    spreadRadius: -3,
  );

}

// MARK: - Opacities
class AppOpacities {
  AppOpacities._();

  static const double ShadowOpacity = 0.1;
  static const double OverlayOpacity = 0.6;
  static const double DisabledOpacity = 0.4;
}

// MARK: - Z-Indices
class AppZIndices {
  AppZIndices._();

  static const double ZIndexDropdown = 1000;
  static const double ZIndexModal = 1050;
  static const double ZIndexTooltip = 1100;
}

// MARK: - Transitions
class AppTransitions {
  AppTransitions._();

  static const Duration TransitionFast = Duration(milliseconds: 150);
  static const Duration TransitionNormal = Duration(milliseconds: 200);
  static const Duration TransitionSlow = Duration(milliseconds: 300);
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

