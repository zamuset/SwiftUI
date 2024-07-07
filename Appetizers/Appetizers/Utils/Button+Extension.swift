//
//  Button+Extension.swift
//  Appetizers
//
//  Created by Samuel Chavez on 06/07/24.
//

import SwiftUI

extension Button {
    
    func standarButton() -> some View {
        self
            .buttonStyle(.bordered)
            .tint(.accentColor)
            .controlSize(.large)
    }
}
