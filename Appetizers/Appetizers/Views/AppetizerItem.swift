//
//  AppetizerItem.swift
//  Appetizers
//
//  Created by Samuel Chavez on 06/07/24.
//

import SwiftUI

struct AppetizerItem: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        HStack {
            AsyncImage(url: appetizer.imageURL) { image in
                image
                    .thumbnailModifier()
            } placeholder: {
                ProgressView()
                    .containerRelativeFrame(.horizontal) { size, axis in
                        size * 0.4
                    }
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerItem(appetizer: MockData.sampleAppetizer)
}
