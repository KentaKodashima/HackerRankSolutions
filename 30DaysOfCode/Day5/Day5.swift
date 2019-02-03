import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for num in 1...10 {
	var result = n * num
	print("\(n) x \(num) = \(result)")
}