//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Samuel Chavez on 29/06/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                        /// Navigate to `FrameworkDetailView`
//                        NavigationLink {
//                            FrameworkDetailView(framework: framework)
//                        } label: {
//                            FrameworkTitleView(framework: framework)
//                        }
                    }
                } // LazyVGrid
            } // ScrollView
            .navigationTitle("💻 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetail, content: {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                                    isShowingDetailView: $viewModel.isShowingDetail)
            })
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
