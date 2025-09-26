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
    val color_primary_ = Color(0xFF28C76F)
    val color_primary_pressed = Color(0xFF24B364)
    val color_primary_disabled = Color(0xFF1E7A50)
    val color_secondary_ = Color(0xFF7367F0)
    val color_secondary_pressed = Color(0xFF5E54D1)
    val color_secondary_disabled = Color(0xFF3D2B9B)
    val color_background_ = Color(0xFF121212)
    val color_background_surface = Color(0xFF1E1E1E)
    val color_background_card = Color(0xFF1A1A1A)
    val color_text_main = Color(0xFFFFFFFF)
    val color_text_secondary = Color(0xFFB0B0B0)
    val color_text_placeholder = Color(0xFF666666)
    val color_text_disabled = Color(0xFF444444)
    val color_error_ = Color(0xFFFF6F61)
    val color_error_on = Color(0xFFFFFFFF)
    val color_success_ = Color(0xFF28C76F)
    val color_success_on = Color(0xFFFFFFFF)
    val color_warning_ = Color(0xFFFF9F43)
    val color_warning_on = Color(0xFF000000)
    // Typography
    // Font Families
    val typography_fontFamily_primary = "Inter"
    val typography_fontFamily_secondary = "Roboto"

    // Font Weights
    val typography_fontWeight_regular = FontWeight.Normal
    val typography_fontWeight_medium = FontWeight.Medium
    val typography_fontWeight_semibold = FontWeight.SemiBold
    val typography_fontWeight_bold = FontWeight.Bold

    // Font Sizes
    val typography_fontSize_12 = 12.sp
    val typography_fontSize_14 = 14.sp
    val typography_fontSize_16 = 16.sp
    val typography_fontSize_18 = 18.sp
    val typography_fontSize_20 = 20.sp
    val typography_fontSize_24 = 24.sp

    // Line Heights
    val typography_lineHeight_small = 16f
    val typography_lineHeight_medium = 20f
    val typography_lineHeight_large = 24f

    // Letter Spacings
    val typography_letterSpacing_tight = -0.02.em
    val typography_letterSpacing_normal = 0.em
    val typography_letterSpacing_wide = 0.02.em

    // Spacing
    val size_spacing_xs = 4.dp
    val size_spacing_sm = 8.dp
    val size_spacing_md = 16.dp
    val size_spacing_lg = 24.dp
    val size_spacing_xl = 32.dp

    // Sizing
    val size_borderRadius_sm = 4.dp
    val size_borderRadius_md = 8.dp
    val size_borderRadius_lg = 16.dp
    val size_borderRadius_round = 9999.dp

    // Shadows
    // Small Shadows
    val shadow_sm = Shadow(
        color = Color(rgba(0,0,0,0.1)).copy(alpha = 0.25f),
        offset = DpOffset(0.dp, 1.dp),
        blurRadius = 2.dp
    )

    // Medium Shadows
    val shadow_md = Shadow(
        color = Color(rgba(0,0,0,0.15)).copy(alpha = 0.25f),
        offset = DpOffset(0.dp, 4.dp),
        blurRadius = 6.dp
    )

    // Large Shadows
    val shadow_lg = Shadow(
        color = Color(rgba(0,0,0,0.2)).copy(alpha = 0.25f),
        offset = DpOffset(0.dp, 10.dp),
        blurRadius = 15.dp
    )


    // Opacities
    val opacity_disabled = 0.38f
    val opacity_hover = 0.08f
    val opacity_focus = 0.12f

    // Other Tokens
    val $schema = "https://example.com/dark-mode-tokens.schema.json"

}

