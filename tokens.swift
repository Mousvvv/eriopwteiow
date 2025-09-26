// Design Tokens - SwiftUI with Structs and Enums
import SwiftUI

// MARK: - Colors
enum Colors {
    static let primary = Color(light: "#2563EB", dark: "#3B82F6")
    static let primaryPressed = Color(light: "#1D4ED8", dark: "#2563EB")
    static let primaryActive = Color(light: "#1E40AF", dark: "#1D4ED8")
    static let primaryDisabled = Color(light: "#93C5FD", dark: "#1E3A8A")
    static let secondary = Color(light: "#F3F4F6", dark: "#374151")
    static let secondaryPressed = Color(light: "#E5E7EB", dark: "#4B5563")
    static let bgColor = Color(light: "#FFFFFF", dark: "#0F172A")
    static let surface = Color(light: "#F9FAFB", dark: "#1E293B")
    static let primaryText = Color(light: "#111827", dark: "#F8FAFC")
    static let secondaryText = Color(light: "#6B7280", dark: "#CBD5E1")
    static let textDisabled = Color(light: "#9CA3AF", dark: "#64748B")
    static let onPrimaryText = Color(light: "#FFFFFF", dark: "#FFFFFF")
    static let card = Color(light: "#FFFFFF", dark: "#1E293B")
    static let divider = Color(light: "#E5E7EB", dark: "#334155")
    static let error = Color(light: "#DC2626", dark: "#EF4444")
    static let success = Color(light: "#16A34A", dark: "#22C55E")
    static let warning = Color(light: "#D97706", dark: "#F59E0B")
    static let info = Color(light: "#0EA5E9", dark: "#06B6D4")
}

// MARK: - Typography
enum Typography {
    enum FontFamily {
        static let mainFont = "Inter"
        static let displayFont = "Poppins"
    }

    enum FontSize {
        static let fontSizeXS: CGFloat = 12
        static let fontSizeS: CGFloat = 14
        static let fontSizeMD: CGFloat = 16
        static let fontSizeLG: CGFloat = 18
        static let fontSizeXL: CGFloat = 20
        static let fontSizeXXL: CGFloat = 24
        static let fontSizeXXXL: CGFloat = 32
        static let fontSizeDisplay: CGFloat = 48
    }

    enum FontWeight {
        static let fontWeightLight: Int = 300
        static let fontWeightRegular: Int = 400
        static let fontWeightMedium: Int = 500
        static let fontWeightSemiBold: Int = 600
        static let fontWeightBold: Int = 700
    }

    enum LineHeight {
        static let lineHeightTight: CGFloat = 1.25
        static let lineHeightNormal: CGFloat = 1.5
        static let lineHeightRelaxed: CGFloat = 1.625
        static let lineHeightLoose: CGFloat = 2
    }

    enum LetterSpacing {
        static let letterSpacingTight: CGFloat = -0.025
        static let letterSpacingNormal: CGFloat = 0
        static let letterSpacingWide: CGFloat = 0.025
        static let letterSpacingWider: CGFloat = 0.05
    }

}

// MARK: - Spacing
enum Spacing {
    static let spacingXS: CGFloat = 4
    static let spacingS: CGFloat = 8
    static let spacingMD: CGFloat = 16
    static let spacingLG: CGFloat = 24
    static let spacingXL: CGFloat = 32
    static let spacingXXL: CGFloat = 40
    static let spacingXXXL: CGFloat = 48
    static let spacingXXXXL: CGFloat = 64
}

// MARK: - Sizing
enum Sizing {
    static let sizingXS: CGFloat = 24
    static let sizingS: CGFloat = 32
    static let sizingMD: CGFloat = 40
    static let sizingLG: CGFloat = 48
    static let sizingXL: CGFloat = 56
    static let sizingXXL: CGFloat = 64
    static let sizingXXXL: CGFloat = 80
    static let heightButton: CGFloat = 44
    static let heightInput: CGFloat = 48
    static let heightCard: CGFloat = 120
    static let widthSidebar: CGFloat = 280
    static let widthModal: CGFloat = 400
    static let widthContainer: CGFloat = 1200
    static let iconSizeXS: CGFloat = 12
    static let iconSizeS: CGFloat = 16
    static let iconSizeMD: CGFloat = 20
    static let iconSizeLG: CGFloat = 24
    static let iconSizeXL: CGFloat = 32
}

// MARK: - Border Radius
enum BorderRadius {
    static let borderRadiusXS: CGFloat = 4
    static let borderRadiusS: CGFloat = 8
    static let borderRadiusMD: CGFloat = 12
    static let borderRadiusLG: CGFloat = 16
    static let borderRadiusXL: CGFloat = 20
    static let borderRadiusXXL: CGFloat = 24
    static let borderRadiusFull: CGFloat = 9999
}

// MARK: - Border Width
enum BorderWidth {
    static let borderThin: CGFloat = 1
    static let borderMedium: CGFloat = 1.5
    static let borderThick: CGFloat = 2
    static let borderFocus: CGFloat = 3
}

// MARK: - Shadows
enum Shadows {
    static let boxShadowS = ShadowStyle(
        color: Color(hex: "#000000").opacity(Opacities.shadow),
        radius: 3,
        x: 0,
        y: 1
    )

    static let boxShadowMD = ShadowStyle(
        color: Color(hex: "#000000").opacity(Opacities.shadow),
        radius: 6,
        x: 0,
        y: 4
    )

    static let boxShadowLG = ShadowStyle(
        color: Color(hex: "#000000").opacity(Opacities.shadow),
        radius: 15,
        x: 0,
        y: 10
    )

}

// MARK: - Opacities
enum Opacities {
    static let shadow: Double = 0.25
    static let overlay: Double = 0.6
    static let disabled: Double = 0.4
    static let overlayOpacity: Double = 0.6
    static let disabledOpacity: Double = 0.4
}

// MARK: - Z-Indices
enum ZIndices {
    static let zIndexDropdown: Double = 1000
    static let zIndexModal: Double = 1050
    static let zIndexTooltip: Double = 1100
}

// MARK: - Transitions
enum Transitions {
    static let fast: Double = 0.15
    static let medium: Double = 0.2
    static let slow: Double = 0.3
    // Durations (in seconds)
    static let transitionFast: Double = 0.15
    static let transitionNormal: Double = 0.2
    static let transitionSlow: Double = 0.3

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

