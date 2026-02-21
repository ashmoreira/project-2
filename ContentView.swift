//
//  ContentView.swift
//  project 2
//
//  Created by ash moreira on 2/20/26.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.blue, Color.white], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all)
            
            VStack {
                statusBarView()
                currentView()
                    .padding(30)
                hourlyForecastView()
                weeklyForecastView()
            }
        }
        .foregroundStyle(Color.white)
        .padding(.top,80)
    }
}
#Preview {
    ContentView()
} 
