import SwiftUI

enum TabItem: Int, CaseIterable{
    case Home = 0
    case Resources
    case PoketCA
    case Courses
    case Hots
    
    var title: String{
        switch self {
        case .Home:
            return "Home"
        case.Resources:
            return "Resources"
        case .PoketCA:
            return "Poket CA"
        case .Courses:
            return "Courses"
        case .Hots:
            return "Hots"
        }
    }
    
    var iconName: String{
        switch self{
        case .Home:
            return "HomeIcone"
        case .Resources:
            return "ResourcesIcone"
        case .PoketCA:
            return "PokectCAIcon"
        case .Courses:
            return "CourcesIcon"
        case .Hots:
            return "HotsIcone"
        }
    }
    var iconFill: String{
        switch self{
        case .Home:
            return "HomeIconefill"
        case .Resources:
            return "ResourcesIconefill"
        case .PoketCA:
            return "PokectCAIconfill"
        case .Courses:
            return "CourcesIconfill"
        case .Hots:
            return "HotsIconefill"
        }
    }
}
