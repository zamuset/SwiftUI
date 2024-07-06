//
//  ContentView.swift
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
struct BarcodeScanner: View {
    
    @State private var scannedCode: String = ""
    @State private var alertItem: AlertItem?
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $scannedCode, alertItem: $alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 400)
                
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(scannedCode.isEmpty ? "Not scanned yet" : scannedCode)
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(scannedCode.isEmpty ? .red : .green)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $alertItem) { alertItem in
                Alert(title: Text(alertItem.title),
                      message: Text(alertItem.message),
                      dismissButton: alertItem.dismissButton)
            }
        }
    }
}

#Preview {
    BarcodeScanner()
}
