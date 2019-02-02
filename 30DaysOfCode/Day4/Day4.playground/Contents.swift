import Foundation

class Person {
  var age: Int
  
  init(initialAge: Int) {
    if initialAge < 0 {
      self.age = 0
      print("Age is not valid, setting age to 0.")
    } else {
      self.age = initialAge
    }
  }
  
  func yearPasses(){
    self.age += 1
  }
  
  func amIOld() {
    var age = self.age
    if age < 13 {
      print("You are young.")
    } else if age >= 13 && age < 18 {
      print("You are a teenager.")
    } else {
      print("You are old.")
    }
  }
}

let t = Int(readLine()!)!
