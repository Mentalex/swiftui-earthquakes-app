//
//  QuakeError.swift
//  Earthquakes-iOS
//
//  Created by Alex Tapia on 07/12/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation

enum QuakeError: Error {
  case missingData
}

extension QuakeError: LocalizedError {
  var errorDescription: String? {
    switch self {
    case.missingData:
      return NSLocalizedString(
        "Found and will discard a quake missing a valid code, magnitude, place, or time.",
        comment: "")
    }
  }
}
