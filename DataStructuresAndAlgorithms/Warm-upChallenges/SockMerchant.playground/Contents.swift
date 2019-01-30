import UIKit

import Foundation

// Complete the sockMerchant function below.
func sockMerchant(n: Int, ar: [Int]) -> Int {
  var counter = 0
  var result = 0
  var unique = [Int]()
  for element in ar {
    if !unique.contains(element) {
      unique.append(element)
    }
  }
  for uniqueElement in unique {
    counter = 0
    for element in ar {
      if uniqueElement == element {
        counter += 1
      }
    }
    if counter > 1 {
      result += counter / 2
    }
  }
  return result
}

print(sockMerchant(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20]))
