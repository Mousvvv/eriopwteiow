// Design Tokens - SwiftUI with Structs and Enums
import SwiftUI

// MARK: - Colors
enum Colors {
    static let colorsPrimaryLight = Color(hex: "#4F46E5")
    static let colorsPrimaryPressedLight = Color(hex: "#4338CA")
    static let colorsPrimaryActiveLight = Color(hex: "#3730A3")
    static let colorsPrimaryDisabledLight = Color(hex: "#C7D2FE")
    static let colorsBackgroundLight = Color(hex: "#FFFFFF")
    static let colorsBackgroundSurfaceLight = Color(hex: "#F9FAFB")
    static let colorsTextPrimaryLight = Color(hex: "#111827")
    static let colorsTextSecondaryLight = Color(hex: "#6B7280")
    static let colorsTextDisabledLight = Color(hex: "#9CA3AF")
    static let colorsStatusErrorLight = Color(hex: "#DC2626")
    static let colorsStatusSuccessLight = Color(hex: "#16A34A")
    static let colorsStatusWarningLight = Color(hex: "#D97706")
    static let colorsStatusInfoLight = Color(hex: "#0EA5E9")
}

// MARK: - Typography
enum Typography {
    enum FontFamily {
        static let lightTypographyFontFamiliesMain = "Inter"
        static let lightTypographyFontFamiliesDisplay = "Poppins"
    }

    enum FontSize {
        static let lightTypographyFontSizesSm: CGFloat = 14
        static let lightTypographyFontSizesMd: CGFloat = 16
        static let lightTypographyFontSizesLg: CGFloat = 20
        static let lightTypographyFontSizesXl: CGFloat = 24
    }

    enum FontWeight {
        static let lightTypographyFontWeightsRegular: Int = 400
        static let lightTypographyFontWeightsMedium: Int = 500
        static let lightTypographyFontWeightsBold: Int = 700
    }

    enum LineHeight {
        static let lightTypographyLineHeightsTight: CGFloat = 1.25
        static let lightTypographyLineHeightsNormal: CGFloat = 1.5
        static let lightTypographyLineHeightsRelaxed: CGFloat = 1.625
    }

}

// MARK: - Spacing
enum Spacing {
    static let lightSpacingSm: CGFloat = 8
    static let lightSpacingMd: CGFloat = 16
    static let lightSpacingLg: CGFloat = 24
    static let lightSpacingXl: CGFloat = 32
}

// MARK: - Sizing
enum Sizing {
    static let lightSizingButtonHeight: CGFloat = 44
    static let lightSizingInputHeight: CGFloat = 48
    static let lightSizingCardHeight: CGFloat = 120
    static let lightSizingSidebarWidth: CGFloat = 280
    static let lightSizingModalWidth: CGFloat = 400
}

// MARK: - Border Radius
enum BorderRadius {
    static let lightBorderRadiusSm: CGFloat = 4
    static let lightBorderRadiusMd: CGFloat = 8
    static let lightBorderRadiusLg: CGFloat = 16
    static let lightBorderRadiusFull: CGFloat = 9999
}

// MARK: - Shadows
enum Shadows {
    static let lightShadowsSm = ShadowStyle(
        color: Color(hex: "0px").opacity(Opacities.shadow),
        radius: 3,
        x: 0,
        y: 1
    )

    static let lightShadowsMd = ShadowStyle(
        color: Color(hex: "-1px").opacity(Opacities.shadow),
        radius: 6,
        x: 0,
        y: 4
    )

}

// MARK: - Z-Indices
enum ZIndices {
    static let lightZIndexDropdown: Double = 1000
    static let lightZIndexModal: Double = 1050
    static let lightZIndexTooltip: Double = 1100
}

// MARK: - Transitions
enum Transitions {
    static let fast: Double = 0.15
    static let medium: Double = 0.2
    static let slow: Double = 0.3
    // Durations (in seconds)
    static let lightTransitionsFast: Double = 0.15
    static let lightTransitionsNormal: Double = 0.2
    static let lightTransitionsSlow: Double = 0.3

}

// MARK: - Other Tokens
enum OtherTokens {
    static let lightBorderThin = "1"
    static let lightBorderMedium = "1.5"
    static let lightBorderThick = "2"
    static let lightIconsSm = "16"
    static let lightIconsMd = "20"
    static let lightIconsLg = "24"
}

// MARK: - Color Extensions
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }

    init(light: String, dark: String) {
        self.init(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(Color(hex: dark))
            default:
                return UIColor(Color(hex: light))
            }
        })
    }
}

// MARK: - ShadowStyle
struct ShadowStyle {
    let color: Color
    let radius: CGFloat
    let x: CGFloat
    let y: CGFloat
    
    init(color: Color, radius: CGFloat, x: CGFloat = 0, y: CGFloat = 0) {
        self.color = color
        self.radius = radius
        self.x = x
        self.y = y
    }
}

// MARK: - View Extension for Shadows
extension View {
    func shadow(_ shadowStyle: ShadowStyle) -> some View {
        self.shadow(
            color: shadowStyle.color,
            radius: shadowStyle.radius,
            x: shadowStyle.x,
            y: shadowStyle.y
        )
    }
}

// MARK: - Line Height Modifier
struct LineHeightModifier: ViewModifier {
    let fontSize: CGFloat
    let lineHeight: CGFloat
    func body(content: Content) -> some View {
        let target = lineHeight * fontSize
        let spacing = max(0, target - fontSize)
        return content
            .lineSpacing(spacing)
            .padding(.vertical, spacing / 2)
    }
}

extension View {
    func lineHeight(_ lineHeight: CGFloat, fontSize: CGFloat) -> some View {
        modifier(LineHeightModifier(fontSize: fontSize, lineHeight: lineHeight))
    }
}

// MARK: - Letter Spacing (em) Modifier
struct LetterSpacingEmModifier: ViewModifier {
    let fontSize: CGFloat
    let letterSpacingEm: CGFloat
    func body(content: Content) -> some View {
        let trackingPoints = letterSpacingEm * fontSize
        return content.tracking(trackingPoints)
    }
}

extension View {
    func letterSpacingEm(_ letterSpacingEm: CGFloat, fontSize: CGFloat) -> some View {
        modifier(LetterSpacingEmModifier(fontSize: fontSize, letterSpacingEm: letterSpacingEm))
    }
}

// MARK: - Font Weight Mapping (Int -> Font.Weight)
extension Font.Weight {
    static func fromNumeric(_ value: Int) -> Font.Weight {
        switch value {
        case ..<150: return .ultraLight
        case 150..<250: return .thin
        case 250..<350: return .light
        case 350..<450: return .regular
        case 450..<550: return .medium
        case 550..<650: return .semibold
        case 650..<750: return .bold
        case 750..<850: return .heavy
        default: return .black
        }
    }
}

extension View {
    func fontWeight(_ numericWeight: Int) -> some View {
        self.fontWeight(Font.Weight.fromNumeric(numericWeight))
    }
}

// MARK: - Animation Extensions
extension Animation {
    static let fast = Animation.easeInOut(duration: Transitions.fast)
    static let medium = Animation.easeInOut(duration: Transitions.medium)
    static let slow = Animation.easeInOut(duration: Transitions.slow)
}

