//
//  AnimalModel.swift
//  AfricaApp
//
//  Created by Samuel Chavez on 29/12/22.
//

import Foundation

struct Animal: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  let description: String
  let link: String
  let image: String
  let gallery: [String]
  let fact: [String]
}

