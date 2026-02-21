
import SwiftUI

struct weeklyRowView: View {
    let day: Day
    var body: some View {
        HStack{
            Text(day.name)
                .frame(width:70, alignment: .leading)
            Spacer()
            Image(systemName: day.icon)
                .symbolRenderingMode(.palette)
                .foregroundStyle(day.primary, day.secondary)
                .frame(width:30, height:30)
                .font(.system(size: 20))
            Spacer()
            HStack(spacing:1){
                Text("\(day.lowTemp)°")
                    .foregroundStyle(Color.white.opacity(0.7))
                    .frame(width:40)
                Rectangle()
                    .fill(Color.blue.opacity(0.8))
                    .frame(width: 80, height: 6)
                    .cornerRadius(8)
                Text("\(day.highTemp)°")
                    .frame(width:40)
            }
            .fontWeight(.medium)
        }
        .fontWeight(.semibold)
        .font(.title3)
    }
}
