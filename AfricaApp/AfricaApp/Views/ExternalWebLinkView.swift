//
//  ExternalWebLinkView.swift
//  AfricaApp
//
//  Created by Samuel Chavez on 29/12/22.
//

import SwiftUI

struct ExternalWebLinkView: View {
  // MARK: - Properties
  let animal: Animal

  // MARK: - Body
  var body: some View {
    GroupBox {
      HStack {
        Image(systemName: "globe")
        Text("Wikipedia")
        Spacer()

        Group {
          Image(systemName: "arrow.up.right.square")

          Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!)
        }
        .foregroundColor(.accentColor)
      }
    }
  }
}

#Preview {
  let animals: [Animal] = Bundle.main.decode("animals.json")
  
  return ExternalWebLinkView(animal: animals[0])
}
