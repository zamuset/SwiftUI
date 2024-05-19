//
//  ProductItemView.swift
//  eCommerce
//
//  Created by Samuel Chavez on 18/05/24.
//

import SwiftUI

struct ProductItemView: View {
  let product: Product
  
  var body: some View {
    VStack(alignment: .leading, spacing: 6, content: {
      // PHOTO
      ZStack {
        Image(product.image)
          .resizable()
          .scaledToFit()
          .padding(10)
      } //: ZSTACK
      .background(Color(red: product.red, green: product.green, blue: product.blue))
      .cornerRadius(12)
      
      // NAME
      Text(product.name)
        .font(.title3)
        .fontWeight(.black)
      
      // PRICE
      Text(product.formattedPrice)
        .fontWeight(.semibold)
        .foregroundColor(.gray)
    }) //: VSTACK
  }
}

#Preview {
  ProductItemView(product: products[0])
    .previewLayout(.fixed(width: 200, height: 300))
    .padding()
    .background(bgColor)
}
