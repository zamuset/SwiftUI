//
//  GridItemView.swift
//  AfricaApp
//
//  Created by Samuel Chavez on 07/10/23.
//

import SwiftUI

struct GridItemView: View {
    let animal: Animal
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    let animal: [Animal] = Bundle.main.decode("animals.json")
    
    return GridItemView(animal: animal[0])
}
