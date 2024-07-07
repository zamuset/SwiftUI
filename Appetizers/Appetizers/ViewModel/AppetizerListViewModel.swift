//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Samuel Chavez on 06/07/24.
//

import SwiftUI
import Observation

@Observable final class AppetizerListViewModel {
    
    var appetizers: [Appetizer] = []
    var alertItem: AlertItem?
    var isLoading: Bool = false
    var isShowingDetail = false
    var selectedAppetizer: Appetizer?
    
    func getAppetizers() {
        isLoading = true
        Task {
            do {
                appetizers = try await NetworkManager.shared.getAppetizers()
                isLoading = false
            } catch {
                if let apError = error as? APError {
                    switch apError {
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                } else {
                    // Generic error
                    alertItem = AlertContext.genericError
                    isLoading = false
                }
            }
        }
    }
    
//    func getAppetizers() {
//        isLoading = true
//        NetworkManager.shared.getAppetizers { [weak self] result in
//            self?.isLoading = false
//            switch result {
//            case .success(let appetizers):
//                self?.appetizers = appetizers
//            case .failure(let error):
//                switch error {
//                case .invalidResponse:
//                    self?.alertItem = AlertContext.invalidResponse
//                case .invalidURL:
//                    self?.alertItem = AlertContext.invalidURL
//                case .invalidData:
//                    self?.alertItem = AlertContext.invalidData
//                case .unableToComplete:
//                    self?.alertItem = AlertContext.unableToComplete
//                }
//            }
//        }
//    }
}
