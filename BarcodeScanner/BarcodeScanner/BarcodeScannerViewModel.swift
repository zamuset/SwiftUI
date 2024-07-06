//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Samuel Chavez on 05/07/24.
//

import SwiftUI

@Observable final class BarcodeScannerViewModel {
    
    var scannedCode: String = ""
    var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Not scanned yet" : scannedCode
    }
    
    var statusColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
