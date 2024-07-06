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
        ZStack {
            NavigationView {
                List(viewModel.appetizers, id: \.id) { appetizer in
                    AppetizerItem(appetizer: appetizer)
                }
                .navigationTitle("🍟 Appetizers")
                .task {
                    viewModel.getAppetizers()
                }
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
