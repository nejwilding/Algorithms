//: [Previous](@previous)

//: ## Queue
//:

import Foundation

struct Queue<T> {
    var array = [T]()
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
           return array.removeFirst()
        }
    }
    
    func peek() -> T? {
        return array.first
    }
}

// MARK: - Implementation

var queue = Queue<Int>()

assert(queue.isEmpty == true)
assert(queue.count == 0)

queue.enqueue(3)
queue.peek()
assert(queue.count == 1)

queue.enqueue(8)
queue.enqueue(4)
queue.dequeue()
assert(queue.count == 2)
queue.peek()



//: [Next](@next)
