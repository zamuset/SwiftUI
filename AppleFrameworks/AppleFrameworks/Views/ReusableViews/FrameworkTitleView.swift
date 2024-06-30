//
//  FrameworkTitleView.swift
//  AppleFrameworks
//
//  Created by Samuel Chavez on 29/06/24.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
    @Binding var showHorizontal: Bool
    
    var body: some View {
        if showHorizontal {
            HStack(spacing: 10) {
                Image(framework.imageName)
                    .resizable()
                    .frame(width: 90, height: 90)
                
                Text(framework.name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .scaledToFit()
                    .minimumScaleFactor(0.6)
            }
            .padding()
            
        } else {
            VStack(spacing: 10) {
                Image(framework.imageName)
                    .resizable()
                    .frame(width: 90, height: 90)
                
                Text(framework.name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .scaledToFit()
                    .minimumScaleFactor(0.6)
            }
            .padding()
            
        }
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework, showHorizontal: .constant(false))
}
