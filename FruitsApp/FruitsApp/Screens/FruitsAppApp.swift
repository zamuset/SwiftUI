//
//  FruitsAppApp.swift
//  FruitsApp
//
//  Created by Samuel Chavez on 28/12/22.
//

import SwiftUI

@main
struct FruitsAppApp: App {
  @AppStorage("isOnboarding") var isOnboarding: Bool = true

  var body: some Scene {
    WindowGroup {
      if isOnboarding {
        OnboardingView(fruits: fruitsData)
      } else {
        ContentView()
      }
    }
  }
}
