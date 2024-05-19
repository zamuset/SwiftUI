//
//  FeatureItemView.swift
//  eCommerce
//
//  Created by Samuel Chavez on 17/05/24.
//

import SwiftUI

struct FeatureItemView: View {
  let player: Player
  
  var body: some View {
    Image(player.image)
      .resizable()
      .scaledToFit()
      .cornerRadius(12)
  }
}

#Preview {
  FeatureItemView(player: players[0])
    .previewLayout(.sizeThatFits)
    .padding()
    .background(bgColor)
}
