//
//  CategoryItemView.swift
//  eCommerce
//
//  Created by Samuel Chavez on 18/05/24.
//

import SwiftUI

struct CategoryItemView: View {
  let category: Category
  
  var body: some View {
    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
      HStack(alignment: .center, spacing: 6) {
        Image(category.image)
          .renderingMode(.template)
          .resizable()
          .scaledToFit()
          .frame(width: 30, height: 30, alignment: .center)
          .foregroundStyle(.gray)
        
        Text(category.name.uppercased())
          .fontWeight(.light)
          .foregroundStyle(.gray)
        
        Spacer()
      }
      .padding()
      .background(Color.white.cornerRadius(12))
      .background(
        RoundedRectangle(cornerRadius: 6)
          .stroke(Color.gray, lineWidth: 1)
      )
    })
  }
}

#Preview {
  CategoryItemView(category: categories[0])
    .previewLayout(.sizeThatFits)
    .padding()
    .background(bgColor)
}
