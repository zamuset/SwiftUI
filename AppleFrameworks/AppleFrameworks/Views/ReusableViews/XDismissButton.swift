//
//  XDismissButton.swift
//  AppleFrameworks
//
//  Created by Samuel Chavez on 29/06/24.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingModal: Bool
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                isShowingModal = false
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            })
        }
    }
}

#Preview {
    XDismissButton(isShowingModal: .constant(false))
}
