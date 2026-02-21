
import SwiftUI

struct hourlyRowView: View {
    let hour:Hour
    var body: some View {
        VStack(spacing:15){
            Text(hour.time)
            Image(systemName: hour.icon)
                .symbolRenderingMode(.palette)
                .foregroundStyle(hour.primary, hour.secondary)
                .font(.system(size: 20))
            Text("\(hour.degree)°")
                .font(.headline)
        }
        .font(.subheadline)
        .fontWeight(.semibold)
    }
}
