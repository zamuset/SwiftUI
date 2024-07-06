//
//  Image+Extension.swift
//  Appetizers
//
//  Created by Samuel Chavez on 06/07/24.
//

import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }

    func thumbnailModifier() -> some View {
        self
            .imageModifier()
            .aspectRatio(contentMode: .fit)
            .frame(width: 120, height: 90)
            .clipShape(RoundedRectangle(cornerRadius: 10))
//            .containerRelativeFrame(.horizontal) { size, axis in
//                size * 0.4
//            }
    }
}
