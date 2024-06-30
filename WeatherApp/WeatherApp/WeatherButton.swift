//
//  WeatherButton.swift
//  WeatherApp
//
//  Created by Samuel Chavez on 22/06/24.
//

import SwiftUI

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundStyle(textColor)
            .font(.title3)
            .fontWeight(.bold)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
        .previewLayout(.fixed(width: 280, height: 50))
}
