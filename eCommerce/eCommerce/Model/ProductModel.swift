//
//  ProductModel.swift
//  eCommerce
//
//  Created by Samuel Chavez on 18/05/24.
//

struct Product: Codable, Identifiable {
  let id: Int
  let name: String
  let image: String
  let price: Int
  let description: String
  let color: [Double]
  
  var formattedPrice: String { return "$\(price)"}
  
  var red: Double { color[0] }
  var green: Double { color[1] }
  var blue: Double { color[2] }
}
