//
//  User.swift
//  Appetizers
//
//  Created by Samuel Chavez on 06/07/24.
//

import Foundation

struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthDate       = Date()
    var extraNapkins    = false
    var frequentRefill  = false
}
