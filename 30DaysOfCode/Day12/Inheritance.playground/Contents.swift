import UIKit
import Foundation

// Class Person
class Person {
  private let firstName: String
  private let lastName: String
  private let id: Int
  
  // Initializer
  init(firstName: String, lastName: String, id: Int) {
    self.firstName = firstName
    self.lastName = lastName
    self.id = id
  }
  
  // Print person data
  func printPerson() {
    print("Name: \(lastName), \(firstName)")
    print("ID: \(id)")
  }
} // End of class Person

// Class Student
class Student: Person {
  var testScores: [Int]
  /*
   *   Initializer
   *
   *   Parameters:
   *   firstName - A string denoting the Person's first name.
   *   lastName - A string denoting the Person's last name.
   *   id - An integer denoting the Person's ID number.
   *   scores - An array of integers denoting the Person's test scores.
   */
  // Write your initializer here
  init(firstName: String, lastName: String, id: Int, scores: [Int]) {
    self.testScores = scores
    super.init(firstName: firstName, lastName: lastName, id: id)
  }
  /*
   *   Method Name: calculate
   *   Return: A character denoting the grade.
   */
  // Write your method here
  func calculate() -> Character {
    var result = 0
//    var char = ""
    for score in testScores {
      result += score
    }
    result /= testScores.count
    switch result {
    case 90...100:
      return Character("O")
    case 80..<90:
      return Character("E")
    case 70..<80:
      return Character("A")
    case 55..<70:
      return Character("P")
    case 40..<55:
      return Character("D")
    default:
      return Character("T")
    }
  }
} // End of class Student
