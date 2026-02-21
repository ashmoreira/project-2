
import SwiftUI

struct hourlyForecastView: View {
    let hourlyData = [
        Hour(time: "Now", icon:"sun.max.fill", primary: .yellow, secondary: .yellow, degree:54),
        Hour(time: "1PM", icon:"sun.max.fill", primary: .yellow, secondary: .yellow, degree:55),
        Hour(time: "2PM", icon:"sun.max.fill", primary: .yellow, secondary: .yellow, degree:57),
        Hour(time: "3PM", icon:"cloud.sun.fill", primary: .white, secondary: .yellow, degree:53),
        Hour(time: "4PM", icon:"sun.max.fill", primary: .yellow, secondary: .yellow, degree:51),
        Hour(time: "5PM", icon:"sun.max.fill", primary: .yellow, secondary: .yellow, degree:50),
        Hour(time: "6PM", icon:"cloud.sun.fill", primary: .white, secondary: .yellow, degree:48),
        Hour(time: "6:03PM", icon:"sunset.fill", primary: .white, secondary: .yellow, degree:48),
        Hour(time: "7PM", icon:"cloud.fill", primary: .white, secondary: .white, degree:48),
        Hour(time: "8PM", icon:"cloud.fill", primary: .white, secondary: .white, degree:47),
        Hour(time: "9PM", icon:"moon.stars.fill", primary: .white, secondary: .white, degree:47),
        Hour(time: "10PM", icon:"moon.stars.fill", primary: .white, secondary: .white, degree:47),
        Hour(time: "11PM", icon:"moon.stars.fill", primary: .white, secondary: .white, degree:42),
        Hour(time: "12AM", icon:"moon.stars.fill", primary: .white, secondary: .white, degree:40),
        Hour(time: "1AM", icon:"cloud.moon.fill", primary: .white, secondary: .white, degree:40),
        Hour(time: "2AM", icon:"cloud.moon.fill", primary: .white, secondary: .white, degree:40),
        Hour(time: "3AM", icon:"cloud.moon.fill", primary: .white, secondary: .white, degree:40),
        Hour(time: "4AM", icon:"cloud.fill", primary: .white, secondary: .white, degree:41),
        Hour(time: "5AM", icon:"cloud.fill", primary: .white, secondary: .white, degree:43),
        Hour(time: "5:47AM", icon:"sunrise.fill", primary: .white, secondary: .yellow, degree:48),
        Hour(time: "6AM", icon:"cloud.fill", primary: .white, secondary: .white, degree:49),
        Hour(time: "7AM", icon:"cloud.fill", primary: .white,secondary: .white, degree:51),
        Hour(time: "8AM", icon:"cloud.fill", primary: .white, secondary: .white, degree:52),
        Hour(time: "9AM", icon:"cloud.sun.fill", primary: .white, secondary: .yellow, degree:55),
        Hour(time: "10AM", icon:"cloud.sun.fill", primary: .white, secondary: .yellow, degree:60),
        Hour(time: "11AM", icon:"sun.fill", primary: .yellow, secondary: .yellow, degree:60)
    ]
    var body: some View {
        VStack (alignment: .leading){
            HStack{
                Image(systemName:"clock")
                Text("HOURLY FORECAST")
            }
            .font(.footnote)
            .fontWeight(.semibold)
            .foregroundStyle(Color.white.opacity(0.6))
            
            ScrollView(.horizontal) {
                HStack(spacing:20){
                    ForEach(hourlyData) {hour in hourlyRowView(hour: hour)}
                }
            }
        }
        .padding()
        .background(.blue.opacity(0.5))
        .clipShape(RoundedRectangle(cornerRadius:16))
        .padding(.horizontal)
        }
}
