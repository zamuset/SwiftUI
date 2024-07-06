//
//  Alert.swift
//  Appetizers
//
//  Created by Samuel Chavez on 06/07/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title, message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidData          = AlertItem(title: Text("Server Error"),
                                                message: Text("Data received from the server was invalid."),
                                                dismissButton: .default(.init("Ok")))
    
    
    static let invalidResponse      = AlertItem(title: Text("Server Error"),
                                                message: Text("Invalid response from the server. Try again later."),
                                                dismissButton: .default(.init("Ok")))
    
    static let invalidURL           = AlertItem(title: Text("Server Error"),
                                                message: Text("There was an issue connecting to the server"),
                                                dismissButton: .default(.init("Ok")))
    
    static let unableToComplete     = AlertItem(title: Text("Server Error"),
                                                message: Text("Unable to complete request at this time"),
                                                dismissButton: .default(.init("Ok")))
    
}
