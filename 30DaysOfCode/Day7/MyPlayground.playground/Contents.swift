import Foundation


var arr = [1, 4, 3, 2]

var reversedArr = [String]()
for element in arr.reversed() {
  reversedArr.append(String(element))
}
print(reversedArr.joined(separator: " "))

