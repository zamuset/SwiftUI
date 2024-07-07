//
//  OrderView.swift
//  Appetizers
//
//  Created by Samuel Chavez on 06/07/24.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.appetizers.prefix(3)
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(orderItems, id: \.id) { appetizer in
                            AppetizerItem(appetizer: appetizer)
                        }
                        .onDelete(perform: { indexSet in
                            orderItems.remove(atOffsets: indexSet)
                        })
                    }
                    .listStyle(.plain)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        APButton(title: "$\(413.44, specifier: "%.2f") - Add to Order")
                    })
                    .padding(.bottom, 20)
                }
                
                if orderItems.isEmpty {
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
