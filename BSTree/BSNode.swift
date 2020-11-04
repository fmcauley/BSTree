//
//  BSNode.swift
//  BSTree
//
//  Created by Wayne Bishop iOS Interview Program
//

import Foundation
//data structure
public class BSNode<T> {
    var tvalue: T?
    var left: BSNode<T>?
    var right: BSNode<T>?
    
    public init() {
        //playground support
    }
    
    func traverse(_ node: BSNode<T>) {
        
        let queue = Queue<BSNode>()
        var currentNode:BSNode<T>
        queue.enQueue(node)
        
        while queue.hasValues() {
            if let queueNode = queue.deQueue(){
                currentNode = queueNode
                
                //print value
                if let valueOfNode = currentNode.tvalue{
                    print("value is \(valueOfNode)..")
                }
                if let left = currentNode.left{
                    
                    queue.enQueue(left)
                    
                }
                if let right = currentNode.right{
                    
                    queue.enQueue(right)
                    
                }
            }
        }
    }
}
