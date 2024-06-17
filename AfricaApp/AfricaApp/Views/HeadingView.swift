//
//  HeadingView.swift
//  AfricaApp
//
//  Created by Samuel Chavez on 29/12/22.
//

import SwiftUI

struct HeadingView: View {
  // MARK: - Properties
  var headingImage: String
  var headingText: String

  // MARK: - Body
  var body: some View {
    HStack {
      Image(systemName: headingImage)
        .foregroundColor(.accentColor)
        .imageScale(.large)

      Text(headingText)
        .font(.title3)
        .fontWeight(.bold)
    }
  }
}

#Preview {
  HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "something something")
}
