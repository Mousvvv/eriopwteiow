import androidx.compose.ui.unit.sp
import androidx.compose.ui.unit.em
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.DpOffset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Shadow
import androidx.compose.ui.text.font.FontWeight

// Design Tokens - Kotlin Constants
object DesignTokens {

    // Colors


    // LightColors
    val PrimaryLight = Color(0xFF2563EB)
    val PrimaryPressedLight = Color(0xFF1D4ED8)
    val PrimaryActiveLight = Color(0xFF1E40AF)
    val PrimaryDisabledLight = Color(0xFF93C5FD)
    val SecondaryLight = Color(0xFFF3F4F6)
    val SecondaryPressedLight = Color(0xFFE5E7EB)
    val BgColorLight = Color(0xFFFFFFFF)
    val SurfaceLight = Color(0xFFF9FAFB)
    val PrimaryTextLight = Color(0xFF111827)
    val SecondaryTextLight = Color(0xFF6B7280)
    val TextDisabledLight = Color(0xFF9CA3AF)
    val OnPrimaryTextLight = Color(0xFFFFFFFF)
    val CardLight = Color(0xFFFFFFFF)
    val DividerLight = Color(0xFFE5E7EB)
    val ErrorLight = Color(0xFFDC2626)
    val SuccessLight = Color(0xFF16A34A)
    val WarningLight = Color(0xFFD97706)
    val InfoLight = Color(0xFF0EA5E9)


    // DarkColors
    val PrimaryDark = Color(0xFF3B82F6)
    val PrimaryPressedDark = Color(0xFF2563EB)
    val PrimaryActiveDark = Color(0xFF1D4ED8)
    val PrimaryDisabledDark = Color(0xFF1E3A8A)
    val SecondaryDark = Color(0xFF374151)
    val SecondaryPressedDark = Color(0xFF4B5563)
    val BgColorDark = Color(0xFF0F172A)
    val SurfaceDark = Color(0xFF1E293B)
    val PrimaryTextDark = Color(0xFFF8FAFC)
    val SecondaryTextDark = Color(0xFFCBD5E1)
    val TextDisabledDark = Color(0xFF64748B)
    val OnPrimaryTextDark = Color(0xFFFFFFFF)
    val CardDark = Color(0xFF1E293B)
    val DividerDark = Color(0xFF334155)
    val ErrorDark = Color(0xFFEF4444)
    val SuccessDark = Color(0xFF22C55E)
    val WarningDark = Color(0xFFF59E0B)
    val InfoDark = Color(0xFF06B6D4)

    // Typography
    // Font Families
    val MainFont = "Inter"
    val DisplayFont = "Poppins"

    // Font Weights
    val FontWeightLight = FontWeight.Light
    val FontWeightRegular = FontWeight.Normal
    val FontWeightMedium = FontWeight.Medium
    val FontWeightSemiBold = FontWeight.SemiBold
    val FontWeightBold = FontWeight.Bold

    // Font Sizes
    val FontSizeXS = 12.sp
    val FontSizeS = 14.sp
    val FontSizeMD = 16.sp
    val FontSizeLG = 18.sp
    val FontSizeXL = 20.sp
    val FontSizeXXL = 24.sp
    val FontSizeXXXL = 32.sp
    val FontSizeDisplay = 48.sp

    // Line Heights
    val LineHeightTight = 1.25f
    val LineHeightNormal = 1.5f
    val LineHeightRelaxed = 1.625f
    val LineHeightLoose = 2f

    // Letter Spacings
    val LetterSpacingTight = -0.025.em
    val LetterSpacingNormal = 0.em
    val LetterSpacingWide = 0.025.em
    val LetterSpacingWider = 0.05.em

    // Spacing
    val SpacingXS = 4.dp
    val SpacingS = 8.dp
    val SpacingMD = 16.dp
    val SpacingLG = 24.dp
    val SpacingXL = 32.dp
    val SpacingXXL = 40.dp
    val SpacingXXXL = 48.dp
    val SpacingXXXXL = 64.dp

    // Sizing
    val SizingXS = 24.dp
    val SizingS = 32.dp
    val SizingMD = 40.dp
    val SizingLG = 48.dp
    val SizingXL = 56.dp
    val SizingXXL = 64.dp
    val SizingXXXL = 80.dp
    val HeightButton = 44.dp
    val HeightInput = 48.dp
    val HeightCard = 120.dp
    val WidthSidebar = 280.dp
    val WidthModal = 400.dp
    val WidthContainer = 1200.dp
    val IconSizeXS = 12.dp
    val IconSizeS = 16.dp
    val IconSizeMD = 20.dp
    val IconSizeLG = 24.dp
    val IconSizeXL = 32.dp

    // Border Radius
    val BorderRadiusXS = 4.dp
    val BorderRadiusS = 8.dp
    val BorderRadiusMD = 12.dp
    val BorderRadiusLG = 16.dp
    val BorderRadiusXL = 20.dp
    val BorderRadiusXXL = 24.dp
    val BorderRadiusFull = 9999.dp

    // Borders
    val BorderThin = 1.dp
    val BorderMedium = 2.dp
    val BorderThick = 2.dp
    val BorderFocus = 3.dp

    // Shadows
    // Small Shadows
    val BoxShadowS = Shadow(
        color = Color(0xFF000000).copy(alpha = 0.25f),
        offset = DpOffset(0.dp, 1.dp),
        blurRadius = 3.dp
    )

    // Medium Shadows
    val BoxShadowMD = Shadow(
        color = Color(0xFF000000).copy(alpha = 0.25f),
        offset = DpOffset(0.dp, 4.dp),
        blurRadius = 6.dp
    )

    // Large Shadows
    val BoxShadowLG = Shadow(
        color = Color(0xFF000000).copy(alpha = 0.25f),
        offset = DpOffset(0.dp, 10.dp),
        blurRadius = 15.dp
    )


    // Opacities
    val ShadowOpacity = 0.1f
    val OverlayOpacity = 0.6f
    val DisabledOpacity = 0.4f

    // Z-Indices
    val ZIndexDropdown = 1000f
    val ZIndexModal = 1050f
    val ZIndexTooltip = 1100f

    // Transitions
    val TransitionFast = 150L
    val TransitionNormal = 200L
    val TransitionSlow = 300L

}

