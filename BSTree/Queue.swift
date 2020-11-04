//
//  Queue.swift
//  BSTree
//
//  Created by Frank McAuley on 11/4/20.
//

import Foundation
class Queue<T> {
    var top: QNode<T>?
    
    init() {
        self.top = QNode<T>()
    }
    
    func enQueue(_ tValue:T){
        
        // it' possible that the queue can be
        // nil in the BFS work flow
        if top == nil {
            top = QNode<T>()
        }
        
        guard top?.value != nil else {
            top?.value = tValue
            return
        }
        
        let nextChild = QNode<T>()
        var current = top
        
        while current?.next != nil {
            if let currentNext = current?.next{
                current = currentNext
            }
        }
        nextChild.value = tValue
        current?.next = nextChild
    }
    
    func deQueue() -> T? {
        guard top?.value != nil else {
            return nil
        }
        
        let value = top?.value
        
        if let currntTop = top {
            let current = currntTop.next
            top = current
        }
        
        return value
    }
    
    
    func hasValues() -> Bool {
        if (top?.value) != nil{
            return true
        }
        return false
    }
    
}//end of queue
