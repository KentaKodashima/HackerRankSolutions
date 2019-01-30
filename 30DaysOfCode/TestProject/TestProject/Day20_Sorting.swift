//
//  Day20_Sorting.swift
//  TestProject
//
//  Created by Kenta Kodashima on 2018-11-12.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

import Foundation

class Sorting {
  func testSorting(n: Int, originalA: [Int]) -> [Int] {
    var a = originalA
    var firstElement: Int?
    var lastElement: Int?
    var numSwaps: Int = 0
    
    for _ in 0..<n {
      // Track number of elements swapped during a single array traversal
      var numberOfSwaps = 0
      
      for j in 0..<(n - 1) {
        // Swap adjacent elements if they are in decreasing order
        if (a[j] > a[j + 1]) {
          a.swapAt(j, (j + 1))
          numberOfSwaps += 1
        }
      }
      
      // If no elements were swapped during a traversal, array is sorted
      if (numberOfSwaps == 0) {
        break
      }
      
      numSwaps += numberOfSwaps
    }
    
    firstElement = a[0]
    lastElement = a[a.count - 1]
    
    print("Array is sorted in \(numSwaps) swaps.")
    print("First Element: \(firstElement!)")
    print("Last Element: \(lastElement!)")
    
    return a
  }
}
