import Foundation

class Difference {
  private var elements = [Int]()
  var maximumDifference: Int
  
  init(a: [Int]) {
    self.elements = a
    maximumDifference = 0
  }
  
  // Write your code here
  func computeDifference() {
    let smallest = self.elements.sorted { $0 < $1 }.first!
    let largest = self.elements.sorted { $0 > $1 }.first!
    maximumDifference = largest - smallest
  }
  
} // End of Difference class
