//
//  Day8_DictionariesAndMaps.swift
//  TestProject
//
//  Created by Kenta Kodashima on 2018-11-07.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

import Foundation

struct DictionariesAndMaps {
  public func testDictionariesAndMaps(n: Int) {
    var phoneBook = [String: String]()
    
    for _ in 0...n - 1 {
      var lineArr = readLine()!.split(separator: " ").map(String.init)
      phoneBook[lineArr[0]] = lineArr[1]
    }
    
    var queryName = readLine()
    while queryName != nil {
      if let number = phoneBook[queryName!] {
        print("\(queryName!)=\(phoneBook[queryName!]!)")
      } else {
        print("Not found")
      }
      queryName = readLine()
    }
  }
}
