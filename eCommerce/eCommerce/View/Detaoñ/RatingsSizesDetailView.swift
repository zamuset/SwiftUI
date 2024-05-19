//
//  RatingsSizesDetailView.swift
//  eCommerce
//
//  Created by Samuel Chavez on 18/05/24.
//

import SwiftUI

struct RatingsSizesDetailView: View {
  let sizes: [String] = ["XS", "S", "M", "L", "XL"]
  
  var body: some View {
    HStack(alignment: .top, spacing: 3, content: {
      // RATINGS
      VStack(alignment: .leading, spacing: 3, content: {
        Text("Ratings")
          .font(.footnote)
          .fontWeight(.semibold)
          .foregroundStyle(grayColor)
        
        HStack(alignment: .center, spacing: 3, content: {
          ForEach(1...5, id: \.self) { item in
            Button(action: {}, label: {
              Image(systemName: "star.fill")
                .frame(width: 28, height: 28, alignment: .center)
                .background(grayColor.cornerRadius(5))
                .foregroundStyle(.white)
            })
          }
        })
      })
      
      Spacer()
      
      VStack(alignment: .trailing, spacing: 3, content: {
        Text("Sizes")
          .font(.footnote)
          .fontWeight(.semibold)
          .foregroundStyle(grayColor)
        
        HStack(alignment: .center, spacing: 5, content: {
          ForEach(sizes, id: \.self) { size in
            Button(action: {}, label: {
              Text(size)
                .font(.footnote)
                .fontWeight(.heavy)
                .foregroundStyle(grayColor)
                .frame(width: 28, height: 28, alignment: .center)
                .background(Color.white.cornerRadius(5))
                .background(
                  RoundedRectangle(cornerRadius: 5)
                    .stroke(grayColor, lineWidth: 2)
                )
            })
          }
        })
      })
    })
  }
}

#Preview {
  RatingsSizesDetailView()
    .previewLayout(.sizeThatFits)
    .padding()
}
