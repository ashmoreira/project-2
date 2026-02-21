
import SwiftUI

struct weeklyForecastView: View {
    let weeklyData = [
        Day(name: "Today", icon: "cloud.fill", primary: .white, secondary: .white, lowTemp: 45, highTemp: 57),
        Day(name: "Mon", icon: "sun.max.fill", primary: .yellow, secondary: .yellow, lowTemp: 54, highTemp: 70),
        Day(name: "Tues", icon: "cloud.drizzle.fill", primary: .white, secondary: .blue, lowTemp: 43, highTemp: 52),
        Day(name: "Wed", icon: "cloud.rain.fill", primary: .white, secondary: .blue, lowTemp: 33, highTemp: 45),
        Day(name: "Thu", icon: "sun.max.fill", primary: .yellow, secondary: .yellow, lowTemp: 28, highTemp: 32),
        Day(name: "Fri", icon: "cloud.fill", primary: .white, secondary: .white, lowTemp: 25, highTemp: 33),
        Day(name: "Sat", icon: "snowflake", primary: .white, secondary: .white, lowTemp: 23, highTemp: 30),
        Day(name: "Sun", icon: "snowflake", primary: .white, secondary: .white, lowTemp: 21, highTemp: 29),
        Day(name: "Mon", icon: "sun.max.fill", primary: .yellow, secondary: .yellow, lowTemp: 30, highTemp: 43),
        Day(name: "Tue", icon: "cloud.sun.fill", primary: .white, secondary: .yellow, lowTemp: 40, highTemp: 53)
         ]
    
var body: some View {
    VStack (alignment: .leading, spacing:8){
        HStack{
            Image(systemName:"calendar")
            Text("10-DAY FORECAST")
        }
        .font(.footnote)
        .fontWeight(.semibold)
        .foregroundStyle(Color.white.opacity(0.6))
        ForEach(weeklyData) {day in weeklyRowView(day: day)}
    }
    .padding()
    .background(.blue.opacity(0.5))
    .clipShape(RoundedRectangle(cornerRadius:16))
    .padding(.horizontal)
    }
} 
