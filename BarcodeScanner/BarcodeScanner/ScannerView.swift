//
//  ScannerView.swift
//  BarcodeScanner
//
//  Created by Samuel Chavez on 05/07/24.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    @Binding var scannedCode: String
    @Binding var alertItem: AlertItem?
    
    typealias UIViewControllerType = ScannerVC
    
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC.init(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(scannerView: self)
    }
    
    final class Coordinator: NSObject, ScannerVCDelegate {
        private let scannerView: ScannerView
        
        init(scannerView: ScannerView) {
            self.scannerView = scannerView
        }
        
        func didFind(barcode: String) {
            scannerView.scannedCode = barcode
        }
        
        func didSurface(error: CameraError) {
            switch error {
            case .invalidDeviceInput:
                scannerView.alertItem = AlertContext.invalidDevideInput
            case .invalidScannedValue:
                scannerView.alertItem = AlertContext.invalidBarCode
            }
        }
    }
}

#Preview {
    ScannerView(
        scannedCode: .constant("123456"),
        alertItem: .constant(.init(title: "Test",
                                   message: "test",
                                   dismissButton: .default(Text("ok")))
        )
    )
}
