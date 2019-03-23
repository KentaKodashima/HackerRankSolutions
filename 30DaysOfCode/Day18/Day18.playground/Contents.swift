import Foundation

struct Stack<T> {
  var stack = [T]()
  
  mutating func push(_ element: T) {
    self.stack.append(element)
  }
  
  mutating func pop() -> T? {
    if !self.stack.isEmpty {
      let poppedValue = self.stack.removeLast()
      return poppedValue
    } else {
      return nil
    }
  }
}

struct Queue<T> {
  var line = [T]()
  
  mutating func enque(_ element: T) {
    self.line.append(element)
  }
  
  mutating func dequeue() -> T? {
    if !self.line.isEmpty {
      let dequeuedValue = self.line.removeFirst()
      return dequeuedValue
    } else {
      return nil
    }
  }
}

class Solution {
  //Write your code here
  var stack = Stack<Character>()
  var queue = Queue<Character>()
  
  func pushCharacter(ch: Character) {
    self.stack.push(ch)
  }
  
  func enqueueCharacter(ch: Character) {
    self.queue.enque(ch)
  }
  
  func popCharacter() -> Character {
    let poppedValue = self.stack.pop()
    return poppedValue!
  }
  
  func dequeueCharacter() -> Character {
    let dequeuedValue = self.queue.dequeue()
    return dequeuedValue!
  }
}
// read the string s.
