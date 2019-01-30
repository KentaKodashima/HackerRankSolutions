import UIKit
import Foundation

/*
 [[Insert a node at a specific position in a linked list]]
 
 You’re given the pointer to the head node of a linked list,
  an integer to add to the list and the position at which the integer must be inserted.
 Create a new node with the given integer,
  insert this node at the desired position and return the head node.
 
 A position of 0 indicates head, a position of 1 indicates one node away from the head and so on.
 The head pointer given may be null meaning that the initial list is empty.
 
 As an example, if your list starts as '1 -> 2 -> 3'
  and you want to insert a node at position '2' with 'data = 4',
  your new list should be '1 -> 2 -> 3 -> 4'
 
 Function Description
 Complete the function insertNodeAtPosition in the editor below.
 It must return a reference to the head node of your finished list.
 
 insertNodeAtPosition has the following parameters:
  - head: a SinglyLinkedListNode pointer to the head of the list
  - data: an integer value to insert as data in your new node
  - position: an integer position to insert the new node, zero based indexing
 
 Input Format
 The first line contains an integer , the number of elements in the linked list.
 Each of the next  lines contains an integer SinglyLinkedListNode[i].data.
 The last line contains an integer .
 
 Constraints
  - 1 <= n <= 1000
  - 1 <= SinglyLiskedListNode[i].data <= 1000,
     where SinglyLiskedListNode[i] is the ith element of the linked list.
  - 0 <= position <= n

 Output Format
 Return a reference to the list head. Locked code prints the list for you.
 
 - Sample Input
 3
 16
 13
 7
 1
 2
 
 - Sample Output
 16 13 1 7
 
 - Explanation
 The initial linked list is 16 13 7.
 We have to insert 1 at the position 2 which currently has 7 in it.
 The updated linked list will be 16 13 1 7
 */

// Given Models
final class SinglyLinkedListNode {
  var data: Int
  var next: SinglyLinkedListNode?
  
  public init(nodeData: Int) {
    self.data = nodeData
  }
}

final class SinglyLinkedList {
  var head: SinglyLinkedListNode?
  var tail: SinglyLinkedListNode?
  
  public init() {}
  
  public func insertNode(nodeData: Int) {
    self.insertNode(node: SinglyLinkedListNode(nodeData: nodeData))
  }
  
  private func insertNode(node: SinglyLinkedListNode) {
    if let tail = tail {
      tail.next = node
    } else {
      head = node
    }
    
    tail = node
  }
}

func printSinglyLinkedList(head: SinglyLinkedListNode?, sep: String, fileHandle: FileHandle) {
  var node = head
  
  while node != nil {
    fileHandle.write(String(node!.data).data(using: .utf8)!)
    
    node = node!.next
    
    if node != nil {
      fileHandle.write(sep.data(using: .utf8)!)
    }
  }
}

// TASK: - Complete the insertNodeAtPosition function below.
// Argument names are wierd.
// I would name 'head' for 'llist', 'value' for 'data', 'after node' for 'position'
func insertNodeAtPosition(llist: SinglyLinkedListNode?, data: Int, position: Int) -> SinglyLinkedListNode? {
  var newNode: SinglyLinkedListNode
  var current: SinglyLinkedListNode
  var positionCounter = 0
  current = llist!
  while positionCounter < position - 1 {
    positionCounter += 1
    current = current.next!
  }
  newNode = SinglyLinkedListNode(nodeData: data)
  newNode.next = current.next
  current.next = newNode
  
  return llist!
}
