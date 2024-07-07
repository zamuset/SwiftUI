//
//  FrameworkDetailViewModel.swift
//  AppleFrameworks
//
//  Created by Samuel Chavez on 06/07/24.
//

import Foundation

@Observable final class FrameworkDetailViewModel {
    let framework: Framework
    var isShowingDetailView: Bool
    var isShowingCloseBtn: Bool
    var isShowingSafariView: Bool = false

    init(framework: Framework, isShowingDetailView: Bool, isShowingCloseBtn: Bool, isShowingSafariView: Bool) {
        self.framework = framework
        self.isShowingDetailView = isShowingDetailView
        self.isShowingCloseBtn = isShowingCloseBtn
        self.isShowingSafariView = isShowingSafariView
    }
    
}
