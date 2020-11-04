//
//  QueueTests.swift
//  BSTreeTests
//
//  Created by Frank McAuley on 11/4/20.
//

import XCTest
@testable import BSTree
class QueueTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatQueueIsNotNil() throws {
        let queue = Queue<Int>()
        XCTAssertNotNil(queue)
    }
    
    func testThatAValueCanBeEnQueued() {
        let value = 42
        let queue = Queue<Int>()
        queue.enQueue(value)
        let output = queue.top?.value
        
        XCTAssertEqual(output, value)
    }
    
    func testThatQueueCanEnQueueMultipleValues() {
        let value1 = 42
        let value2 = 43
        let value3 = 44
        let queue = Queue<Int>()
        queue.enQueue(value1)
        queue.enQueue(value2)
        queue.enQueue(value3)
        
        let output = queue.top?.next?.next?.value
        
        XCTAssertEqual(output, value3)
    }
    
    func testThatQueueCanDeQueueAValue() {
        let value = 42
        let queue = Queue<Int>()
        queue.enQueue(value)
        let output = queue.deQueue()
        
        XCTAssertEqual(output, value)
    }
    
    func testThatQueueCanDeQueueMultipleValues() {
        let value1 = 42
        let value2 = 43
        let value3 = 44
        let queue = Queue<Int>()
        queue.enQueue(value1)
        queue.enQueue(value2)
        queue.enQueue(value3)
        
        let output1 = queue.deQueue()
        XCTAssertEqual(output1, value1)
        
        let output2 = queue.deQueue()
        XCTAssertEqual(output2, value2)
        
        let output3 = queue.deQueue()
        XCTAssertEqual(output3, value3)
    }
    
    func testThatQueueCanDetermineIfThereIsAValue() {
        let value = 46
        let queue = Queue<Int>()
        queue.enQueue(value)
        let output = queue.hasValues()
        
        XCTAssertTrue(output)
    }
    
    func testThatQueueWillReturnFalseForHasValueWhenThereIsNoValue() {
        let queue = Queue<Int>()
        let output = queue.hasValues()
        
        XCTAssertFalse(output)
    }
}
