//
//  AddToCartDetailView.swift
//  eCommerce
//
//  Created by Samuel Chavez on 18/05/24.
//

import SwiftUI

struct AddToCartDetailView: View {
  
  @EnvironmentObject var shop: Shop
  
  var body: some View {
    Button(action: {
      feedback.impactOccurred()
    }, label: {
      Spacer()
      Text("Add to cart".uppercased())
        .font(.system(.title2, design: .rounded))
        .fontWeight(.bold)
        .foregroundColor(.white)
      Spacer()
    }) //: BUTTON
    .padding(15)
    .background(
      Color(
        red: shop.selectedProduct?.red ?? sampleProduct.red,
        green: shop.selectedProduct?.green ?? sampleProduct.green,
        blue: shop.selectedProduct?.blue ?? sampleProduct.blue
      )
    )
    .clipShape(Capsule())
  }
}

#Preview {
  AddToCartDetailView()
    .environmentObject(Shop())
    .previewLayout(.sizeThatFits)
    .padding()
}
