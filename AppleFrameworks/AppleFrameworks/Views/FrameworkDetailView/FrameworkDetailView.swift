//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Samuel Chavez on 29/06/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    @Binding var isShowingCloseBtn: Bool
    @State var isShowingSafariView: Bool = false

    var body: some View {
        VStack(spacing: 10) {
            if isShowingCloseBtn {
                XDismissButton(isShowingModal: $isShowingDetailView)
                    .padding()
            }
            Spacer()
            FrameworkTitleView(framework: framework, showHorizontal: .constant(false))
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button(action: {
                isShowingSafariView = true
            }, label: {
//                AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            })
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
//            .foregroundStyle(.yellow)
            .buttonBorderShape(.capsule)
            .tint(.red)
            
        }
//        .sheet // Other option to show detail
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework,
                        isShowingDetailView: .constant(false),
                        isShowingCloseBtn: .constant(false))
        .preferredColorScheme(.dark)
}
