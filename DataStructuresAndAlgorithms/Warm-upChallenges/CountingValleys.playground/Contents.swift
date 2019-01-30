import UIKit

func countingValleys(n: Int, s: String) -> Int {
  var current = 0
  var valley = 0
  
  for char in s {
    if char == "U" {
      current += 1
    } else if char == "D" {
      if current == 0 {
        current -= 1
        valley += 1
      } else {
        current -= 1
      }
    }
  }
  
  return valley
}
