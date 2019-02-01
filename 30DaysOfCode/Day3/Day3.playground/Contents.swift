import Foundation

guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
  else { fatalError("Bad input") }

// My Answer
if (N % 2 != 0) {
  print("Weird")
} else {
  switch(N) {
  case 2...5:
    print("Not Weird")
  case 6...20:
    print("Weird")
  case let n where n > 20:
    print("Not Weird")
  default:
    print("Something went wrong.")
  }
}

