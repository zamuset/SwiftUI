//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Samuel Chavez on 29/06/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            Group {
                if viewModel.showList {
                    List(MockData.frameworks) { framework in
                        NavigationLink {
                            FrameworkDetailView(framework: framework,
                                                isShowingDetailView: $viewModel.isShowingDetail,
                                                isShowingCloseBtn: .constant(false))
                        } label: {
                            FrameworkTitleView(framework: framework, showHorizontal: $viewModel.showList)
                        }
                    }
                } else {
                    ScrollView {
                        LazyVGrid(columns: viewModel.columns) {
                            ForEach(MockData.frameworks) { framework in
                                NavigationLink(value: framework) {
                                    FrameworkTitleView(framework: framework,
                                                       showHorizontal: $viewModel.showList)
                                }
                            }
                        } // LazyVGrid
                        
                    } // ScrollView
                }
            }
            .navigationTitle("💻 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework,
                                    isShowingDetailView: $viewModel.isShowingDetail,
                                    isShowingCloseBtn: !$viewModel.showList)
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        viewModel.showList.toggle()
                    }, label: {
                        let imageName = viewModel.showList ? "square.grid.3x3" : "list.bullet"
                        Image(systemName: imageName)
                    })
                }
            }
        }
        .tint(Color(.label))
        
        // Deprecated
        /*
        NavigationView {
            Group {
                if viewModel.showList {
                    List(MockData.frameworks) { framework in
                        NavigationLink {
                            FrameworkDetailView(framework: framework,
                                                isShowingDetailView: $viewModel.isShowingDetail,
                                                isShowingCloseBtn: .constant(false))
                        } label: {
                            FrameworkTitleView(framework: framework, showHorizontal: $viewModel.showList)
                        }
                    }
                } else {
                    
                    ScrollView {
                        LazyVGrid(columns: viewModel.columns) {
                            ForEach(MockData.frameworks) { framework in
                                FrameworkTitleView(framework: framework,
                                                   showHorizontal: $viewModel.showList)
                                .onTapGesture {
                                    viewModel.selectedFramework = framework
                                }
                            }
                        } // LazyVGrid
                        
                    } // ScrollView
                }
            }
            .navigationTitle("💻 Frameworks")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        viewModel.showList.toggle()
                    }, label: {
                        let imageName = viewModel.showList ? "square.grid.3x3" : "list.bullet"
                        Image(systemName: imageName)
                    })
                }
            }
            .sheet(isPresented: $viewModel.isShowingDetail, content: {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                                    isShowingDetailView: $viewModel.isShowingDetail, 
                                    isShowingCloseBtn: .constant(true))
            })
        }
        .tint(Color(.label))
        */
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}

prefix func ! (value: Binding<Bool>) -> Binding<Bool> {
    Binding<Bool>(
        get: { !value.wrappedValue },
        set: { value.wrappedValue = !$0 }
    )
}
