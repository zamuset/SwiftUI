//
//  SectionView.swift
//  eCommerce
//
//  Created by Samuel Chavez on 18/05/24.
//

import SwiftUI

struct SectionView: View {
  
  @State var rotateClockwite: Bool
  
  var body: some View {
    VStack(spacing: 0) {
      Spacer()
      Text("Categories".uppercased())
        .font(.footnote)
        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        .foregroundStyle(.white)
        .rotationEffect(Angle(degrees: rotateClockwite ? 90 : -90))
      
      Spacer()
    }
    .background(grayColor.cornerRadius(12))
    .frame(width: 85)
  }
}

#Preview {
  SectionView(rotateClockwite: false)
    .previewLayout(.fixed(width: 120, height: 240))
    .padding()
    .background(bgColor)
}
