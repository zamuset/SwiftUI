//
//  CategoryGridView.swift
//  eCommerce
//
//  Created by Samuel Chavez on 18/05/24.
//

import SwiftUI

struct CategoryGridView: View {
  
  
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, content: {
        Section(
          header: SectionView(rotateClockwite: false),
          footer: SectionView(rotateClockwite: true)
        ) {
          ForEach(categories) { category in
            CategoryItemView(category: category)
          }
        }
      })
      .frame(height: 140)
      .padding(.horizontal, 15)
      .padding(.vertical, 10)
    }
  }
}

#Preview {
  CategoryGridView()
    .previewLayout(.sizeThatFits)
    .padding()
    .background(bgColor)
}
