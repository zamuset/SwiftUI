//
//  CustomShape.swift
//  eCommerce
//
//  Created by Samuel Chavez on 18/05/24.
//

import SwiftUI

struct CustomShape: Shape {
  func path(in rect: CGRect) -> Path {
    let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
    
    return Path(path.cgPath)
  }
}

#Preview {
  CustomShape()
    .previewLayout(.fixed(width: 428, height: 120))
    .padding()
}
