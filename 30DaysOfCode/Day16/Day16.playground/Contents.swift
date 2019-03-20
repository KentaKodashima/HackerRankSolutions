import Foundation

/*
 * Define an ErrorType
 */
enum StringToIntTypecastingError: Error {
  case BadString
}

/*
 * If typecasting is not possible, throw exception, otherwise return the Integer value
 */
func stringToInt(inputString: String) throws -> Int {
  guard let intValue = Int(inputString) else {
    throw StringToIntTypecastingError.BadString
  }
  return intValue
}

/*
 * Read the input
 */
let inputString = readLine()!

do {
  try print(stringToInt(inputString: inputString))
} catch StringToIntTypecastingError.BadString {
  print("Bad String")
}
