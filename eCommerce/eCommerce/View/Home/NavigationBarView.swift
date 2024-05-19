//
//  NavigationBarView.swift
//  eCommerce
//
//  Created by Samuel Chavez on 17/05/24.
//

import SwiftUI

struct NavigationBarView: View {
  
  @State private var isAnimated = false
  
  var body: some View {
    HStack {
      Button(action: {}, label: {
        Image(systemName: "magnifyingglass")
          .font(.title)
          .foregroundStyle(.black)
      })
      
      Spacer()
      
      LogoView()
        .opacity(isAnimated ? 1 : 0)
        .offset(x: 0, y: isAnimated ? 0 : -25)
        .onAppear(perform: {
          withAnimation(.easeOut(duration: 0.5)) {
            isAnimated.toggle()
          }
        })
      
      Spacer()
      
      Button(action: {}, label: {
        ZStack {
          Image(systemName: "cart")
            .font(.title)
          .foregroundStyle(.black)
          
          Circle()
            .fill(.red)
            .frame(width: 14, height: 14, alignment: .center)
            .offset(x:13, y: -10)
        }
      })
    }
  }
}

#Preview {
  NavigationBarView()
    .previewLayout(.sizeThatFits)
    .padding()
}
