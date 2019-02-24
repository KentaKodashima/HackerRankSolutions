import Foundation

func printEvenAndOdd(string: String) {
  // This prints inputString to stderr for debugging:
  fputs("string: " + string + "\n", stderr)
  
  var even = [Character]()
  var odd = [Character]()
  // Print the even-indexed characters
  // Write your code here
  for (index, char) in string.enumerated() {
    if index % 2 == 0 {
      even.append(char)
    } else {
      odd.append(char)
    }
  }
  
  var resultString = String(even) + " " + String(odd)
  print(resultString)
}
