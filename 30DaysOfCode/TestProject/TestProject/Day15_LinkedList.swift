//
//  Day15_LinkedList.swift
//  TestProject
//
//  Created by Kenta Kodashima on 2018-11-10.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

import Foundation

class Node {
  let data: Int
  var next: Node?
  
  init(data: Int) {
    self.data = data
  }
}

class LinkedList {
  func insert(head: Node?, data: Int!) -> Node? {
    // Enter your code here.
    var node = Node(data: data)
    var current = head
    
    if head == nil {
      return node
    }
    
    while current?.next != nil {
      current = current?.next
    }
    
    current?.next = node
    
    return head
  }
  
  func display(head: Node?) {
    var current = head
    
    while current != nil {
      print(current!.data, terminator: " ")
      current = current!.next
    }
  }
  
  func test() {
    let sampleInput = [2, 3, 4, 1]
    var head: Node?
    let n: Int = 4
    
    for index in 0..<n {
      let element = sampleInput[index]
      head = self.insert(head: head, data: element)
    }
    
    display(head: head)
  }
}
