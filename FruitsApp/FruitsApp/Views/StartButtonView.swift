//
//  StartButtonView.swift
//  FruitsApp
//
//  Created by Samuel Chavez on 28/12/22.
//

import SwiftUI

struct StartButtonView: View {
  // MARK: - PROPERTIES
  @AppStorage("isOnboarding") var isOnboarding: Bool?

  // MARK: - BODY
  var body: some View {
    Button {
      isOnboarding = false
    } label: {
      HStack(spacing: 8) {
        Text("Start")

        Image(systemName: "arrow.right.circle")
          .imageScale(.large)
      }
      .padding(.horizontal, 16)
      .padding(.vertical, 10)
      .background(Capsule().strokeBorder(.white, lineWidth: 1.25))
    }
    .accentColor(.white)
  }
}

struct StartButtonView_Previews: PreviewProvider {
  static var previews: some View {
    StartButtonView()
      .previewLayout(.sizeThatFits)
  }
}
