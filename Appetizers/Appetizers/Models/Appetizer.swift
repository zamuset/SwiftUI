//
//  Appetizer.swift
//  Appetizers
//
//  Created by Samuel Chavez on 06/07/24.
//

import Foundation

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct Appetizer: Decodable {
    let id: Int
    let calories: Int
    let imageURL: URL
    let name: String
    let carbs: Int
    let protein: Int
    let price: Double
    let description: String
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 00001,
                                           calories: 43,
                                           imageURL: URL(string: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg")!,
                                           name: "Test Appetizer",
                                           carbs: 43,
                                           protein: 43,
                                           price: 44.4,
                                           description: "This is a test description")
    
    static let appetizers: [Appetizer] = Array(repeating: sampleAppetizer, count: 10)
}
