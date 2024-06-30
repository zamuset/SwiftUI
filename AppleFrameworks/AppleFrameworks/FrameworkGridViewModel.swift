//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Samuel Chavez on 29/06/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetail = true
        }
    }
    
    @Published var isShowingDetail: Bool = false
}
