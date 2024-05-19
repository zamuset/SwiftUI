//
//  PageModel.swift
//  PinchApp
//
//  Created by Samuel Chavez on 28/12/22.
//

import Foundation

struct Page: Identifiable {
  let id: Int
  let imageName: String
}

extension Page {
  var thumbnailName: String {
    "thumb-" + imageName
  }
}
