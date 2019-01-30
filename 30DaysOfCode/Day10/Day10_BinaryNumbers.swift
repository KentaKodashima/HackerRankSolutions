//
//  BinaryNumbers.swift
//  TestProject
//
//  Created by Kenta Kodashima on 2018-11-06.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

import Foundation

struct BinaryNumbers {
  public func textBinaryNumbers() {
    var n = 262141
    var result = [Int]()
    
    while true {
      var remainder = 0
      if ((n / 2) == 0) || ((n / 2) == 1) {
        remainder = n % 2
        result.append(remainder)
        result.append((n / 2))
        break
      } else {
        remainder = n % 2
        n /= 2
        result.append(remainder)
      }
    }
    
    var counter = 1
    var tempArr = [Int]()
    for (index, value) in result.enumerated() {
      if (value == 1) && (index < (result.count - 1)) {
        if result[index+1] == 1 {
          counter += 1
        } else {
          tempArr.append(counter)
          counter = 1
        }
      }
    }
    tempArr.append(counter)
    tempArr.sort { $0 > $1 }
    var maxNum = tempArr[0]
    print(maxNum)
  }
}
