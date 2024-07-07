//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Samuel Chavez on 29/06/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @State var viewModel: FrameworkDetailViewModel
    
    init(viewModel: FrameworkDetailViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack(spacing: 10) {
            FrameworkTitleView(framework: viewModel.framework, showHorizontal: .constant(false))
            
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(
                destination: viewModel.framework.urlString,
                label: { AFButton(title: "Learn More") }
            )
            
//            Button(action: {
//                viewModel.isShowingSafariView = true
//            }, label: {
//                AFButton(title: "Learn More")
//                Label("Learn More", systemImage: "book.fill")
//            })
//            .buttonStyle(.borderedProminent)
//            .controlSize(.large)
////            .foregroundStyle(.yellow)
//            .buttonBorderShape(.capsule)
//            .tint(.red)
            
        }
//        .sheet // Other option to show detail
        .fullScreenCover(isPresented: $viewModel.isShowingSafariView, content: {
            SafariView(url: viewModel.framework.urlString)
        })
    }
}

#Preview {
    FrameworkDetailView(viewModel: .init(framework: MockData.sampleFramework,
                                         isShowingDetailView: false,
                                         isShowingCloseBtn: false,
                                         isShowingSafariView: false))
        .preferredColorScheme(.dark)
}
