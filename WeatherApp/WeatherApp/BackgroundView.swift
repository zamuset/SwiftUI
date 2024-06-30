//
//  BackgroundView.swift
//  WeatherApp
//
//  Created by Samuel Chavez on 22/06/24.
//

import SwiftUI

struct BackgroundView: View {
  
    var isNight: Bool
    
    var body: some View {
        let colors: [Color] = [isNight ? .black : .blue, isNight ? .gray : .lightBlue]
        
        LinearGradient(gradient: Gradient(colors: colors),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
        
        // New gradient iOS 16
//        ContainerRelativeShape()
//            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
//            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView(isNight: true)
}
