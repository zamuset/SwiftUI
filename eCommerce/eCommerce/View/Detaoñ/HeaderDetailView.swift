//
//  HeaderDetailView.swift
//  eCommerce
//
//  Created by Samuel Chavez on 18/05/24.
//

import SwiftUI

struct HeaderDetailView: View {
  
  @EnvironmentObject var shop: Shop
  
  var body: some View {
    VStack(alignment: .leading, spacing: 6, content: {
      Text("Protective Gear")
      
      Text(shop.selectedProduct?.name ?? sampleProduct.name)
        .font(.largeTitle)
        .fontWeight(.black)
    })
    .foregroundColor(.white)
  }
}

#Preview {
  HeaderDetailView()
    .environmentObject(Shop())
    .previewLayout(.sizeThatFits)
    .padding()
    .background(Color.gray)
}
