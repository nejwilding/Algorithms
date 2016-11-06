//: [Previous](@previous)

//: ## Stack
//:

import Foundation

struct Stack<T> {
    fileprivate var array = [T]()
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    mutating func push(_ element: T) {
        array.append(element)
    }
    
    mutating func pop() -> T? {
        return array.popLast()
    }
    
    func peek() -> T? {
        return array.last
    }
}

// MARK: - Implementation

var stack = Stack<Int>()

assert(stack.isEmpty == true)
assert(stack.count == 0)

stack.push(3)
stack.peek()
assert(stack.count == 1)

stack.push(8)
stack.push(4)
stack.pop()
assert(stack.count == 2)
stack.peek()

//: [Next](@next)
