//
//  BlankView.swift
//  Devote
//
//  Created by Samuel Chavez on 01/09/24.
//

import SwiftUI

struct BlankView: View {
    var backgroundColor: Color
    var backgroundOpacity: Double
    
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(backgroundColor)
        .opacity(backgroundOpacity)
        .blendMode(.overlay)
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    BlankView(backgroundColor: Color.black, backgroundOpacity: 0.3)
      .background(BackgroundImageView())
      .background(backgroundGradient.ignoresSafeArea(.all))
}
