
import SwiftUI

struct Hour: Identifiable {
    let id = UUID()
    let time: String
    let icon: String
    let primary: Color
    let secondary: Color
    let degree: Int
}

struct Day: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    let primary: Color
    let secondary: Color
    let lowTemp: Int
    let highTemp: Int
}
