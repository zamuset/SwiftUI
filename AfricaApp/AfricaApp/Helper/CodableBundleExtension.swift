//
//  CodableBundleExtension.swift
//  AfricaApp
//
//  Created by Samuel Chavez on 29/12/22.
//

import Foundation

extension Bundle {
  func decode<T: Codable>(_ file: String) -> T {
    //Locate json
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("failed to locate \(file) in bundle")
    }

    // Create a property for the data
    guard let data = try? Data(contentsOf: url) else {
      fatalError("failed to load \(file) from bundle")
    }

    // Create a decoder
    let decoder = JSONDecoder()

    // Create a property for the decoded data
    guard let loaded = try? decoder.decode(T.self, from: data) else {
      fatalError("failed to decode \(file) from bundle")

    }

    // Return the ready-to-use data
    return loaded
  }
}
