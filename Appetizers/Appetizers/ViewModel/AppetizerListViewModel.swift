//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Samuel Chavez on 06/07/24.
//

import SwiftUI

@Observable final class AppetizerListViewModel {
    
    var appetizers: [Appetizer] = []
    var alertItem: AlertItem?
    var isLoading: Bool = false
    
    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers { [weak self] result in
            self?.isLoading = false
            switch result {
            case .success(let appetizers):
                self?.appetizers = appetizers
            case .failure(let error):
                switch error {
                case .invalidResponse:
                    self?.alertItem = AlertContext.invalidResponse
                case .invalidURL:
                    self?.alertItem = AlertContext.invalidURL
                case .invalidData:
                    self?.alertItem = AlertContext.invalidData
                case .unableToComplete:
                    self?.alertItem = AlertContext.unableToComplete
                }
            }
        }
    }
}
