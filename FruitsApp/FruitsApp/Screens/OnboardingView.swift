//
//  OnboardingView.swift
//  FruitsApp
//
//  Created by Samuel Chavez on 28/12/22.
//

import SwiftUI

struct OnboardingView: View {
  // MARK: - PROPERTIES
  var fruits: [Fruit] = fruitsData

  // MARK: - BODY
    var body: some View {
      TabView {
        ForEach(fruits[0...4]) { fruit in
          FruitCardView(fruit: fruit)
        }
      }
      .tabViewStyle(PageTabViewStyle())
      .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
