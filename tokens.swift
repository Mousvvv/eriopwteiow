// Design Tokens - SwiftUI with Structs and Enums
import SwiftUI

// MARK: - Colors
enum Colors {
    static let colorPrimary = Color(hex: "#28C76F")
    static let colorPrimaryPressed = Color(hex: "#24B364")
    static let colorPrimaryDisabled = Color(hex: "#1E7A50")
    static let colorSecondary = Color(hex: "#7367F0")
    static let colorSecondaryPressed = Color(hex: "#5E54D1")
    static let colorSecondaryDisabled = Color(hex: "#3D2B9B")
    static let colorBackground = Color(hex: "#121212")
    static let colorBackgroundSurface = Color(hex: "#1E1E1E")
    static let colorBackgroundCard = Color(hex: "#1A1A1A")
    static let colorTextMain = Color(hex: "#FFFFFF")
    static let colorTextSecondary = Color(hex: "#B0B0B0")
    static let colorTextPlaceholder = Color(hex: "#666666")
    static let colorTextDisabled = Color(hex: "#444444")
    static let colorError = Color(hex: "#FF6F61")
    static let colorErrorOn = Color(hex: "#FFFFFF")
    static let colorSuccess = Color(hex: "#28C76F")
    static let colorSuccessOn = Color(hex: "#FFFFFF")
    static let colorWarning = Color(hex: "#FF9F43")
    static let colorWarningOn = Color(hex: "#000000")
}

// MARK: - Typography
enum Typography {
    enum FontFamily {
        static let typographyFontFamilyPrimary = "Inter"
        static let typographyFontFamilySecondary = "Roboto"
    }

    enum FontSize {
        static let typographyFontSize_12: CGFloat = 12
        static let typographyFontSize_14: CGFloat = 14
        static let typographyFontSize_16: CGFloat = 16
        static let typographyFontSize_18: CGFloat = 18
        static let typographyFontSize_20: CGFloat = 20
        static let typographyFontSize_24: CGFloat = 24
    }

    enum FontWeight {
        static let typographyFontWeightRegular: Int = 400
        static let typographyFontWeightMedium: Int = 500
        static let typographyFontWeightSemibold: Int = 600
        static let typographyFontWeightBold: Int = 700
    }

    enum LineHeight {
        static let typographyLineHeightSmall: CGFloat = 16
        static let typographyLineHeightMedium: CGFloat = 20
        static let typographyLineHeightLarge: CGFloat = 24
    }

    enum LetterSpacing {
        static let typographyLetterSpacingTight: CGFloat = -0.02em
        static let typographyLetterSpacingNormal: CGFloat = 0
        static let typographyLetterSpacingWide: CGFloat = 0.02
    }

}

// MARK: - Spacing
enum Spacing {
    static let sizeSpacingXs: CGFloat = 4
    static let sizeSpacingSm: CGFloat = 8
    static let sizeSpacingMd: CGFloat = 16
    static let sizeSpacingLg: CGFloat = 24
    static let sizeSpacingXl: CGFloat = 32
}

// MARK: - Sizing
enum Sizing {
    static let sizeBorderRadiusSm: CGFloat = 4
    static let sizeBorderRadiusMd: CGFloat = 8
    static let sizeBorderRadiusLg: CGFloat = 16
    static let sizeBorderRadiusRound: CGFloat = 9999
}

// MARK: - Shadows
enum Shadows {
    static let shadowSm = ShadowStyle(
        color: Color(hex: "rgba(0,0,0,0.1)").opacity(Opacities.shadow),
        radius: 2,
        x: 0,
        y: 1
    )

    static let shadowMd = ShadowStyle(
        color: Color(hex: "rgba(0,0,0,0.15)").opacity(Opacities.shadow),
        radius: 6,
        x: 0,
        y: 4
    )

    static let shadowLg = ShadowStyle(
        color: Color(hex: "rgba(0,0,0,0.2)").opacity(Opacities.shadow),
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
    static let opacityDisabled: Double = 0.38
    static let opacityHover: Double = 0.08
    static let opacityFocus: Double = 0.12
}

// MARK: - Other Tokens
enum OtherTokens {
    static let $schema = "https://example.com/dark-mode-tokens.schema.json"
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

