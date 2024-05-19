//
//  LogoView.swift
//  eCommerce
//
//  Created by Samuel Chavez on 17/05/24.
//

import SwiftUI

struct LogoView: View {
  var body: some View {
    HStack(spacing: 4, content: {
      Text("Touch".uppercased())
        .font(.title3)
        .fontWeight(.black)
        .foregroundStyle(.black)
      
      Image("logo-dark")
        .resizable()
        .scaledToFit()
        .frame(width: 30, height: 30, alignment: .center)
      
      Text("Down".uppercased())
        .font(.title3)
        .fontWeight(.black)
        .foregroundStyle(.black)
    })
  }
}

#Preview {
    LogoView()
    .previewLayout(.sizeThatFits)
    .padding()
}
