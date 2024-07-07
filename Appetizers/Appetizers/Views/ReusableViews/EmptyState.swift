//
//  EmptyState.swift
//  Appetizers
//
//  Created by Samuel Chavez on 06/07/24.
//

import SwiftUI

struct EmptyState: View {
    let imageName: String
    let message: String
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(edges: .all)
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding()
            }
            .offset(y: -60)
        }
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "This is a test message")
}
