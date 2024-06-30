//
//  ContentView.swift
//  WeatherApp
//
//  Created by Samuel Chavez on 22/06/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            
            VStack {
                CityTextView(cityName: "City name")
                
                WeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                  temperature: 76)
                
                HStack(spacing: 5) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 76)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 90)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: 80)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 43)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "snow", temperature: 80)
                }
                
                Spacer()
                
                Button(action: {
                    isNight.toggle()
                }, label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                })
                Spacer()
            }
        } // ZStack
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundStyle(.white)
            
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
//                .renderingMode(.original)
                .resizable()
//                .foregroundStyle(.pink, .orange, .green)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 24, weight: .medium))
                .foregroundStyle(.white)
                .padding()
        }
    }
}

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct WeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
                .padding()
        }
        .padding(.bottom, 30)
    }
}
