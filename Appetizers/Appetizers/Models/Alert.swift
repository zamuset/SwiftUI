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
    //MARK: - Network alerts
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
    
    //MARK: - Form alerts
    static let invalidForm          = AlertItem(title: Text("Invalid Form"),
                                                message: Text("Make sure to complete all fields in the form"),
                                                dismissButton: .default(.init("Ok")))
    
    static let invalidEmail         = AlertItem(title: Text("Invalid Email"),
                                                message: Text("Email is not valid"),
                                                dismissButton: .default(.init("Ok")))
    
    static let userSaveSuccess      = AlertItem(title: Text("Profile Saved"),
                                                message: Text("Your profile information was successfully saved"),
                                                dismissButton: .default(.init("Ok")))
    
    static let userSaveError        = AlertItem(title: Text("Profile Error"),
                                                message: Text("Your profile couldn't be saved. Try again"),
                                                dismissButton: .default(.init("Ok")))
    
    static let userGetError         = AlertItem(title: Text("Profile Eror"),
                                                message: Text("Your profile information couldn't be retrieved"),
                                                dismissButton: .default(.init("Ok")))
    
}
