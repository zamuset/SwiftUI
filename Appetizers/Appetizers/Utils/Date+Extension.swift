//
//  Date+Extension.swift
//  Appetizers
//
//  Created by Samuel Chavez on 06/07/24.
//

import Foundation

extension Date {
    var eighteenYearAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundredTenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -100, to: Date())!
    }
}
