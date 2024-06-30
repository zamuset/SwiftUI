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
    @State var isShowingSafariView: Bool = false

    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Spacer()
                Button(action: {
                    isShowingDetailView = false
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                })
            }
            .padding()
            
            Spacer()
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button(action: {
                isShowingSafariView = true
            }, label: {
                AFButton(title: "Learn More")
            })
        }
//        .sheet
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, 
                        isShowingDetailView: .constant(false))
        .preferredColorScheme(.dark)
}
