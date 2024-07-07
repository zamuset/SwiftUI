//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Samuel Chavez on 06/07/24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView()
                .environmentObject(order)
        }
    }
}
