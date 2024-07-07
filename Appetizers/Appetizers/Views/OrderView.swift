//
//  OrderView.swift
//  Appetizers
//
//  Created by Samuel Chavez on 06/07/24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items, id: \.id) { appetizer in
                            AppetizerItem(appetizer: appetizer)
                        }
                        .onDelete(perform: order.remove)
                    }
                    .listStyle(.plain)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        APButton(title: "$\(order.orderTotal, specifier: "%.2f") - Add to Order")
                    })
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order")
                }
            }
            .navigationTitle("🧾 Order")
        }
    }
}

#Preview {
    OrderView()
}
