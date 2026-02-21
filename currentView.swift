
import SwiftUI

struct currentView: View {
    var body: some View {
        VStack(spacing: 1) {
            Text("Chapel Hill")
                .font(.largeTitle)
            Text("55°")
                .font(.system(size:100, weight:.thin))
            Text("Sunny")
                .font(.title3)
                .foregroundStyle(Color.white.opacity(0.8))
            Text("H:57° L:45°")
                .font(.title3)
                .fontWeight(.medium)
        }
        .padding(15)
    }
}
