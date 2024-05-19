//
//  FooterView.swift
//  eCommerce
//
//  Created by Samuel Chavez on 17/05/24.
//

import SwiftUI

struct FooterView: View {
  var body: some View {
    VStack(alignment: .center, spacing: 10) {
      Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
        .foregroundStyle(.gray)
        .multilineTextAlignment(.center)
      
      Image("logo-lineal")
        .renderingMode(.template)
        .foregroundStyle(.gray)
      
      Text("Copyright Samuel Chavez")
        .font(.footnote)
        .fontWeight(.bold)
        .foregroundStyle(.gray)
        .multilineTextAlignment(.center)
        .layoutPriority(1)
    }
    .padding()
  }
}

#Preview {
  FooterView()
    .previewLayout(.sizeThatFits)
    .background(bgColor)
}
