//
//  BrandItemView.swift
//  eCommerce
//
//  Created by Samuel Chavez on 18/05/24.
//

import SwiftUI

struct BrandItemView: View {
  
  let brand: Brand
  
  var body: some View {
    Image(brand.image)
      .resizable()
      .scaledToFit()
      .padding(3)
      .background(Color.white.cornerRadius(12))
      .background(
        RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
      )
  }
}

#Preview {
  BrandItemView(brand: brands[0])
    .previewLayout(.sizeThatFits)
    .padding()
    .background(bgColor)
}
