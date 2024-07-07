//
//  LoadingView.swift
//  Appetizers
//
//  Created by Samuel Chavez on 06/07/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(edges: .all)
            
            ProgressView()
                .scaleEffect(5)
                .tint(.accentColor)
        }
    }
}

#Preview {
    LoadingView()
}
