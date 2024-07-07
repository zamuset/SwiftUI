//
//  Order.swift
//  Appetizers
//
//  Created by Samuel Chavez on 06/07/24.
//

import SwiftUI

final class Order: ObservableObject {
    @Published var items: [Appetizer] = []
    
    var orderTotal: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    var totalItems: Int {
        items.count
    }
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func remove(_ index: IndexSet) {
        items.remove(atOffsets: index)
    }
}
