//
//  Day16_ExceptionsStringToInteger.swift
//  TestProject
//
//  Created by Kenta Kodashima on 2018-11-07.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

import Foundation

enum StringToIntTypecastingError: Error {
  case BadString
}

struct ExceptionsStringToInteger {
  public func testExceptionsStringToInteger(inputString: String) {
    try? self.stringToInt(inputString: inputString)
  }
  
  private func stringToInt(inputString: String) throws -> Int {
    guard let intValue = Int(inputString) else {
      throw StringToIntTypecastingError.BadString
    }
    return intValue
  }
}
