//
//  Day11_2DArrays.swift
//  TestProject
//
//  Created by Kenta Kodashima on 2018-11-10.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

import Foundation

class TwoDArrays {
  public func testTwoDArrays(arr: [[Int]]) {
    var resultArray = [Int]()
    for i in stride(from: 0, to: arr.count - 2, by: 1) {
      for j in stride(from: 0, to: arr[i].count - 2, by: 1) {
        var result = 0
        result += (arr[i][j] + arr[i][j+1] + arr[i][j+2] + arr[i+1][j+1] + arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2])
        resultArray.append(result)
      }
    }
    _ = resultArray.sort { $0 > $1 }
    print(resultArray[0])
  }
}
