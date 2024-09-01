//
//  Constant.swift
//  Devote
//
//  Created by Samuel Chavez on 31/08/24.
//

import SwiftUI

let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

var backgroundGradient: LinearGradient {
    LinearGradient(gradient: .init(colors: [.pink, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
}

let feedback = UINotificationFeedbackGenerator()
