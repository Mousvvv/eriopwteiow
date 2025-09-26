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
    val _colors_primary_Light = Color(0xFF4F46E5)
    val _colors_primary_pressedLight = Color(0xFF4338CA)
    val _colors_primary_activeLight = Color(0xFF3730A3)
    val _colors_primary_disabledLight = Color(0xFFC7D2FE)
    val _colors_background_Light = Color(0xFFFFFFFF)
    val _colors_background_surfaceLight = Color(0xFFF9FAFB)
    val _colors_text_primaryLight = Color(0xFF111827)
    val _colors_text_secondaryLight = Color(0xFF6B7280)
    val _colors_text_disabledLight = Color(0xFF9CA3AF)
    val _colors_status_errorLight = Color(0xFFDC2626)
    val _colors_status_successLight = Color(0xFF16A34A)
    val _colors_status_warningLight = Color(0xFFD97706)
    val _colors_status_infoLight = Color(0xFF0EA5E9)

    // Typography
    // Font Families
    val light_typography_fontFamilies_main = "Inter"
    val light_typography_fontFamilies_display = "Poppins"

    // Font Weights
    val light_typography_fontWeights_regular = FontWeight.Normal
    val light_typography_fontWeights_medium = FontWeight.Medium
    val light_typography_fontWeights_bold = FontWeight.Bold

    // Font Sizes
    val light_typography_fontSizes_sm = 14.sp
    val light_typography_fontSizes_md = 16.sp
    val light_typography_fontSizes_lg = 20.sp
    val light_typography_fontSizes_xl = 24.sp

    // Line Heights
    val light_typography_lineHeights_tight = 1.25f
    val light_typography_lineHeights_normal = 1.5f
    val light_typography_lineHeights_relaxed = 1.625f

    // Spacing
    val light_spacing_sm = 8.dp
    val light_spacing_md = 16.dp
    val light_spacing_lg = 24.dp
    val light_spacing_xl = 32.dp

    // Sizing
    val light_sizing_buttonHeight = 44.dp
    val light_sizing_inputHeight = 48.dp
    val light_sizing_cardHeight = 120.dp
    val light_sizing_sidebarWidth = 280.dp
    val light_sizing_modalWidth = 400.dp

    // Border Radius
    val light_borderRadius_sm = 4.dp
    val light_borderRadius_md = 8.dp
    val light_borderRadius_lg = 16.dp
    val light_borderRadius_full = 9999.dp

    // Borders
    val light_border_thin = 1.dp
    val light_border_medium = 2.dp
    val light_border_thick = 2.dp

    // Shadows
    // Small Shadows
    val light_shadows_sm = Shadow(
        color = Color(0px).copy(alpha = 0.25f),
        offset = DpOffset(0.dp, 1.dp),
        blurRadius = 3.dp
    )

    val light_shadows_md = Shadow(
        color = Color(-1px).copy(alpha = 0.25f),
        offset = DpOffset(0.dp, 4.dp),
        blurRadius = 6.dp
    )


    // Z-Indices
    val light_zIndex_dropdown = 1000f
    val light_zIndex_modal = 1050f
    val light_zIndex_tooltip = 1100f

    // Transitions
    val light_transitions_fast = 150L
    val light_transitions_normal = 200L
    val light_transitions_slow = 300L

    // Other Tokens
    val light_icons_sm = "16"
    val light_icons_md = "20"
    val light_icons_lg = "24"

}

