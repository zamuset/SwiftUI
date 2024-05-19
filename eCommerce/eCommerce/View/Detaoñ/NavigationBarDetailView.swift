//
//  NavigationBarDetailView.swift
//  eCommerce
//
//  Created by Samuel Chavez on 18/05/24.
//

import SwiftUI

struct NavigationBarDetailView: View {
  
  @EnvironmentObject var shop: Shop
  
  var body: some View {
    HStack {
      Button(action: {
        withAnimation(.easeIn) {
          feedback.impactOccurred()
          shop.selectedProduct = nil
          shop.showingProduct = false
        }
      }, label: {
        Image(systemName: "chevron.left")
          .font(.title)
          .foregroundColor(.white)
      })
      
      Spacer()
      
      Button(action: {}, label: {
        Image(systemName: "cart")
          .font(.title)
          .foregroundColor(.white)
      })
    } //: HSTACK
  }
}

#Preview {
  NavigationBarDetailView()
    .environmentObject(Shop())
    .previewLayout(.sizeThatFits)
    .padding()
    .background(Color.gray)
}
