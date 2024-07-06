//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Samuel Chavez on 05/07/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title, message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDevideInput = AlertItem(
        title: "Invalid DeviceInput",
        message: "Something wrong with the camera",
        dismissButton: .default(.init("Ok")))
    
    static let invalidBarCode = AlertItem(
        title: "Invalid Barcode",
        message: "The barcode scanned is not valid",
        dismissButton: .default(.init("Ok")))
    
}
