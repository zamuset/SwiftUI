//
//  TitleView.swift
//  eCommerce
//
//  Created by Samuel Chavez on 18/05/24.
//

import SwiftUI

struct TitleView: View {
  var title: String
  
  var body: some View {
    HStack {
      Text(title)
        .font(.largeTitle)
        .fontWeight(.heavy)
      
      Spacer()
    }
    .padding(.horizontal)
    .padding(.top, 15)
    .padding(.bottom, 10)
  }
}

#Preview {
  TitleView(title: "Helmet")
    .previewLayout(.sizeThatFits)
    .padding()
    .background(bgColor)
}
