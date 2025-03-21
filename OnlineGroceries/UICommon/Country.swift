import Foundation

enum Country: String, CaseIterable, Identifiable {
    case albania, algeria, andorra, angola, argentina, armenia, australia, austria, azerbaijan
    case bahrain, bangladesh, belarus, belgium, bhutan, brazil
    case cambodia, cameroon, canada, chile, colombia, croatia, cyprus, czechRepublic
    case denmark, dominicanRepublic
    case ecuador, egypt, estonia, ethiopia
    case fiji, finland, france
    case georgia, germany, ghana, greece, greenland
    case hongKong, hungary
    case iceland, india, indonesia, iran, iraq, ireland, israel, italy
    case jamaica, japan, jordan
    case kazakhstan, kenya, kuwait, kyrgyzstan
    case laos, latvia, lebanon, libya, lithuania, luxembourg
    case malaysia, maldives, malta, mexico, monaco, mongolia, morocco, myanmar
    case nepal, netherlands, newZealand, nigeria, northKorea, norway
    case oman
    case palestine, panama, peru, philippines, poland, portugal
    case qatar
    case romania, russia
    case saudiArabia, serbia, singapore, slovakia, southAfrica, southKorea, spain, sriLanka, sweden, switzerland, syria
    case taiwan, thailand, turkey
    case ukraine, uae, uk, usa, uruguay, uzbekistan
    case vietnam
    case yemen
    case zimbabwe
    
    var id: String { self.rawValue }
    
    var flag: String {
        switch self {
//        case .afghanistan: return "🇦🇫"
        case .albania: return "🇦🇱"
        case .algeria: return "🇩🇿"
        case .andorra: return "🇦🇩"
        case .angola: return "🇦🇴"
        case .argentina: return "🇦🇷"
        case .armenia: return "🇦🇲"
        case .australia: return "🇦🇺"
        case .austria: return "🇦🇹"
        case .azerbaijan: return "🇦🇿"
        case .bahrain: return "🇧🇭"
        case .bangladesh: return "🇧🇩"
        case .belarus: return "🇧🇾"
        case .belgium: return "🇧🇪"
        case .bhutan: return "🇧🇹"
        case .brazil: return "🇧🇷"
        case .cambodia: return "🇰🇭"
        case .cameroon: return "🇨🇲"
        case .canada: return "🇨🇦"
        case .chile: return "🇨🇱"
//        case .china: return "🇨🇳"
        case .colombia: return "🇨🇴"
        case .croatia: return "🇭🇷"
        case .cyprus: return "🇨🇾"
        case .czechRepublic: return "🇨🇿"
        case .denmark: return "🇩🇰"
        case .dominicanRepublic: return "🇩🇴"
        case .ecuador: return "🇪🇨"
        case .egypt: return "🇪🇬"
        case .estonia: return "🇪🇪"
        case .ethiopia: return "🇪🇹"
        case .fiji: return "🇫🇯"
        case .finland: return "🇫🇮"
        case .france: return "🇫🇷"
        case .georgia: return "🇬🇪"
        case .germany: return "🇩🇪"
        case .ghana: return "🇬🇭"
        case .greece: return "🇬🇷"
        case .greenland: return "🇬🇱"
        case .hongKong: return "🇭🇰"
        case .hungary: return "🇭🇺"
        case .iceland: return "🇮🇸"
        case .india: return "🇮🇳"
        case .indonesia: return "🇮🇩"
        case .iran: return "🇮🇷"
        case .iraq: return "🇮🇶"
        case .ireland: return "🇮🇪"
        case .israel: return "🇮🇱"
        case .italy: return "🇮🇹"
        case .jamaica: return "🇯🇲"
        case .japan: return "🇯🇵"
        case .jordan: return "🇯🇴"
        case .kazakhstan: return "🇰🇿"
        case .kenya: return "🇰🇪"
        case .kuwait: return "🇰🇼"
        case .kyrgyzstan: return "🇰🇬"
        case .laos: return "🇱🇦"
        case .latvia: return "🇱🇻"
        case .lebanon: return "🇱🇧"
        case .libya: return "🇱🇾"
        case .lithuania: return "🇱🇹"
        case .luxembourg: return "🇱🇺"
        case .malaysia: return "🇲🇾"
        case .maldives: return "🇲🇻"
        case .malta: return "🇲🇹"
        case .mexico: return "🇲🇽"
        case .monaco: return "🇲🇨"
        case .mongolia: return "🇲🇳"
        case .morocco: return "🇲🇦"
        case .myanmar: return "🇲🇲"
        case .nepal: return "🇳🇵"
        case .netherlands: return "🇳🇱"
        case .newZealand: return "🇳🇿"
        case .nigeria: return "🇳🇬"
        case .northKorea: return "🇰🇵"
        case .norway: return "🇳🇴"
        case .oman: return "🇴🇲"
//        case .pakistan: return "🇵🇰"
        case .palestine: return "🇵🇸"
        case .panama: return "🇵🇦"
        case .peru: return "🇵🇪"
        case .philippines: return "🇵🇭"
        case .poland: return "🇵🇱"
        case .portugal: return "🇵🇹"
        case .qatar: return "🇶🇦"
        case .romania: return "🇷🇴"
        case .russia: return "🇷🇺"
        case .saudiArabia: return "🇸🇦"
        case .serbia: return "🇷🇸"
        case .singapore: return "🇸🇬"
        case .slovakia: return "🇸🇰"
        case .southAfrica: return "🇿🇦"
        case .southKorea: return "🇰🇷"
        case .spain: return "🇪🇸"
        case .sriLanka: return "🇱🇰"
        case .sweden: return "🇸🇪"
        case .switzerland: return "🇨🇭"
        case .syria: return "🇸🇾"
        case .taiwan: return "🇹🇼"
        case .thailand: return "🇹🇭"
        case .turkey: return "🇹🇷"
        case .uae: return "🇦🇪"
        case .uk: return "🇬🇧"
        case .ukraine: return "🇺🇦"
        case .usa: return "🇺🇸"
        case .uruguay: return "🇺🇾"
        case .uzbekistan: return "🇺🇿"
        case .vietnam: return "🇻🇳"
        case .yemen: return "🇾🇪"
        case .zimbabwe: return "🇿🇼"
        }
    }
    
    var dialCode: String {
        switch self {
//        case .afghanistan: return "+93"
        case .albania: return "+355"
        case .algeria: return "+213"
        case .andorra: return "+376"
        case .angola: return "+244"
        case .argentina: return "+54"
        case .armenia: return "+374"
        case .australia: return "+61"
        case .austria: return "+43"
        case .azerbaijan: return "+994"
        case .bahrain: return "+973"
        case .bangladesh: return "+880"
        case .belarus: return "+375"
        case .belgium: return "+32"
        case .bhutan: return "+975"
        case .brazil: return "+55"
        case .cambodia: return "+855"
        case .cameroon: return "+237"
        case .canada: return "+1"
        case .chile: return "+56"
//        case .china: return "+86"
        case .colombia: return "+57"
        case .croatia: return "+385"
        case .cyprus: return "+357"
        case .czechRepublic: return "+420"
        case .denmark: return "+45"
        case .dominicanRepublic: return "+1"
        case .ecuador: return "+593"
        case .egypt: return "+20"
        case .estonia: return "+372"
        case .ethiopia: return "+251"
        case .fiji: return "+679"
        case .finland: return "+358"
        case .france: return "+33"
        case .georgia: return "+995"
        case .germany: return "+49"
        case .ghana: return "+233"
        case .greece: return "+30"
        case .greenland: return "+299"
        case .hongKong: return "+852"
        case .hungary: return "+36"
        case .iceland: return "+354"
        case .india: return "+91"
        case .indonesia: return "+62"
        case .iran: return "+98"
        case .iraq: return "+964"
        case .ireland: return "+353"
        case .israel: return "+972"
        case .italy: return "+39"
        case .jamaica: return "+1"
        case .japan: return "+81"
        case .jordan: return "+962"
        case .kazakhstan: return "+7"
        case .kenya: return "+254"
        case .kuwait: return "+965"
        case .kyrgyzstan: return "+996"
        case .laos: return "+856"
        case .latvia: return "+371"
        case .lebanon: return "+961"
        case .libya: return "+218"
        case .lithuania: return "+370"
        case .luxembourg: return "+352"
        case .malaysia: return "+60"
        case .maldives: return "+960"
        case .malta: return "+356"
        case .mexico: return "+52"
        case .monaco: return "+377"
        case .mongolia: return "+976"
        case .morocco: return "+212"
        case .myanmar: return "+95"
        case .nepal: return "+977"
        case .netherlands: return "+31"
        case .newZealand: return "+64"
        case .nigeria: return "+234"
        case .northKorea: return "+850"
        case .norway: return "+47"
        case .oman: return "+968"
//        case .pakistan: return "+92"
        case .palestine: return "+970"
        case .panama: return "+507"
        case .peru: return "+51"
        case .philippines: return "+63"
        case .poland: return "+48"
        case .portugal: return "+351"
        case .qatar: return "+974"
        case .romania: return "+40"
        case .russia: return "+7"
        case .saudiArabia: return "+966"
        case .serbia: return "+381"
        case .singapore: return "+65"
        case .slovakia: return "+421"
        case .southAfrica: return "+27"
        case .southKorea: return "+82"
        case .spain: return "+34"
        case .sriLanka: return "+94"
        case .sweden: return "+46"
        case .switzerland: return "+41"
        case .syria: return "+963"
        case .taiwan: return "+886"
        case .thailand: return "+66"
        case .turkey: return "+90"
        case .uae: return "+971"
        case .uk: return "+44"
        case .ukraine: return "+380"
        case .usa: return "+1"
        case .uruguay: return "+598"
        case .uzbekistan: return "+998"
        case .vietnam: return "+84"
        case .yemen: return "+967"
        case .zimbabwe: return "+263"
        }
    }
    
    var name: String {
        self.rawValue.replacingOccurrences(of: "([A-Z])", with: " $1", options: .regularExpression)
            .trimmingCharacters(in: .whitespaces)
            .capitalized
    }
}
