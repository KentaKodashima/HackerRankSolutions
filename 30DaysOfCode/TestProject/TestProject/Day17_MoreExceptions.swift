//
//  Day17_MoreExceptions.swift
//  TestProject
//
//  Created by Kenta Kodashima on 2018-11-07.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

import Foundation

// Defining enum for throwing error
// throw RangeError.NotInRange... is used to throw the error
enum RangeError : Error {
  case NotInRange(String)
}

class Calculator {
  func power(n: Int, p: Int) throws -> Int {
    var result = 1
    var count = p
    guard (n >= 0) && (p >= 0) else {
      throw RangeError.NotInRange("n and p should be non-negative")
    }
    while count > 0 {
      result *= n
      count -= 1
    }
    return result
  }
}
