//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Samuel Chavez on 29/06/24.
//

import SwiftUI

struct AFButton: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.bold)
            .frame(width: 250, height: 60)
            .background(.red.gradient)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    AFButton(title: "Learn More")
}
