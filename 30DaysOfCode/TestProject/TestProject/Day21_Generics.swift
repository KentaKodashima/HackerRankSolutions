//
//  Day21_Generics.swift
//  TestProject
//
//  Created by Kenta Kodashima on 2018-11-12.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

import Foundation

struct Printer<T> {
  /**
   *    Name: printArray
   *    Print each element of the generic array on a new line. Do not return anything.
   *    @param A generic array
   **/
  
  // Write your code here
  func printArray(array: [T]) {
    for element in array {
      print(element)
    }
  }
}
