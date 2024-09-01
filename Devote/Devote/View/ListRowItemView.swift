//
//  ListRowItemView.swift
//  Devote
//
//  Created by Samuel Chavez on 01/09/24.
//

import SwiftUI

struct ListRowItemView: View {
    @Environment(\.managedObjectContext) var viewContext
    @ObservedObject var item: Item
    
    var body: some View {
        Toggle(isOn: $item.completion) {
            withAnimation(.default, {
                Text(item.task ?? "")
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.heavy)
                    .foregroundColor(item.completion ? Color.pink : Color.primary)
                    .padding(.vertical, 12)
            })
        } //: TOGGLE
        .toggleStyle(CheckboxStyle())
        .onReceive(item.objectWillChange, perform: { _ in
            if self.viewContext.hasChanges {
                try? self.viewContext.save()
            }
        })
    }
}
