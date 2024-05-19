//
//  Shop.swift
//  eCommerce
//
//  Created by Samuel Chavez on 18/05/24.
//

import Combine

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: Product?
}
