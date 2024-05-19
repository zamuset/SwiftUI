//
//  FeatureTabView.swift
//  eCommerce
//
//  Created by Samuel Chavez on 17/05/24.
//

import SwiftUI

struct FeatureTabView: View {
  var body: some View {
    TabView {
      ForEach(players) { player in
        FeatureItemView(player: player)
          .padding(.top, 10)
          .padding(.horizontal, 15)
      }
    }
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
  }
}

#Preview {
  FeatureTabView()
    .previewDevice("iPhone 12 Pro")
    .background(.gray)
}
