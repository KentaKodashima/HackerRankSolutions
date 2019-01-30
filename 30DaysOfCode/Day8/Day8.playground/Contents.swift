import UIKit

//let input = readLine()!

var str = "sam 99912222"
var str2 = "tom 11122222"
var str3 = "harry 12299933"

var phoneBook: [String: String] = [:]
var strArr = str.components(separatedBy: " ")
var strArr2 = str2.components(separatedBy: " ")
var strArr3 = str3.components(separatedBy: " ")
var input = "sam"
var input2 = "edward"
var input3 = "harry"

phoneBook[strArr[0]] = strArr[1]
phoneBook[strArr2[0]] = strArr2[1]
phoneBook[strArr3[0]] = strArr3[1]

if let key = phoneBook[input] {
  print(key)
}
