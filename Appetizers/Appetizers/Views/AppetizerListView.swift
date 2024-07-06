//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Samuel Chavez on 06/07/24.
//

import SwiftUI

struct AppetizerListView: View {
    
    @State private var viewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.appetizers, id: \.id) { appetizer in
                AppetizerItem(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
            .task {
                viewModel.getAppetizers()
            }
        }
    }
}

#Preview {
    AppetizerListView()
}
