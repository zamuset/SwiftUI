//
//  Codable+Bundle.swift
//  eCommerce
//
//  Created by Samuel Chavez on 17/05/24.
//

import Foundation

extension Bundle {
  func decode<T: Codable>(_ file: String) -> T {
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("No such file \(file) in bundle")
    }
    
    guard let data = try? Data(contentsOf: url) else {
      fatalError("Failed to load \(file) from bundle")
    }
    
    guard let decodedData = try? JSONDecoder().decode(T.self, from: data) else {
        fatalError("Failed to decode \(file) from bundle")
    }
    
    return decodedData
  }
}
