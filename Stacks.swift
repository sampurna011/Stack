//: [Previous](@previous)

import Foundation

struct Stack<T> {
  fileprivate var array = [T]()
    public var count: Int {
        return array.count
    }
    public var isEmpty: Bool {
        return array.isEmpty
    }
    public mutating func push(_ element: T) {
        array.append(element)
    }
    mutating func pop() -> T? {
        return array.popLast()
    }
}

var stackOfNames = Stack(array: ["Carl", "Lisa", "Stephanie", "Jeff", "Wade"])
stackOfNames.push("Mike")
print(stackOfNames.array)
print(stackOfNames.pop())
