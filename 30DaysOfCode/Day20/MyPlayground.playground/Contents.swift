import Foundation

// read the integer n
let n = Int(readLine()!)!

// read the array
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var a = arr
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

