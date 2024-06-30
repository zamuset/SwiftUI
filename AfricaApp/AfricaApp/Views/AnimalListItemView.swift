//
//  AnimalListItemView.swift
//  AfricaApp
//
//  Created by Samuel Chavez on 29/12/22.
//

import SwiftUI

struct AnimalListItemView: View {
  // MARK: - Properties
  let animal: Animal

  // MARK: - Body
  
  var body: some View {

    HStack(alignment: .center, spacing: 16) {
      Image(animal.image)
        .resizable()
        .scaledToFill()
        .frame(width: 90, height: 90)
        .clipShape(
          RoundedRectangle(cornerRadius: 12)
        )

      VStack(alignment: .leading, spacing: 8) {
        Text(animal.name)
          .font(.title2)
          .fontWeight(.heavy)
          .foregroundColor(.accentColor)

        Text(animal.headline)
          .font(.footnote)
          .multilineTextAlignment(.leading)
          .lineLimit(2)
          .padding(.trailing, 8)
      }
    }
  }
}

#Preview {
  let animals: [Animal] = Bundle.main.decode("animals.json")
  
  return AnimalListItemView(animal: animals[1])
    .previewLayout(.sizeThatFits)
}
