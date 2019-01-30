import UIKit

var n = 5

while true {
  var remainder = 0
  var result = [Int]()
  if ((n / 2) == 0) || ((n / 2) == 1) {
    remainder = n / 2
    result.append(remainder)
    result.append((n / 2))
    break
  } else {
    remainder = n % 2
    n /= 2
    result.append(remainder)
  }
  print(result)
}
