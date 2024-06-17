//
//  CoverImageView.swift
//  AfricaApp
//
//  Created by Samuel Chavez on 29/12/22.
//

import SwiftUI

struct CoverImageView: View {
  // MARK: - Properties
  let coverImages: [CoverImage] = Bundle.main.decode("covers.json")

  // MARK: - Body
  var body: some View {
    TabView {
      ForEach(coverImages) { item in
        Image(item.name)
          .resizable()
          .scaledToFill()
      }
    }
    .tabViewStyle(PageTabViewStyle())
  }
}

#Preview {
  CoverImageView()
    .previewLayout(.fixed(width: 400, height: 300))
}
