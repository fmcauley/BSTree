//
//  BSTreeTests.swift
//  BSTreeTests
//
//  Created by Frank McAuley on 11/4/20.
//

import XCTest
@testable import BSTree

class BSTreeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBSTreeShouldNotBeNil() throws {
        let bst = BSTree<Int>()
        XCTAssertNotNil(bst)
    }
    
    func testThatBSTreeCanAddAValue() {
        let bst = BSTree<Int>()
        bst.append(1)
        XCTAssertNil(bst.root.left)
        XCTAssertNil(bst.root.right)
    }
    
    //test BSTreeNode
    func testThatBSTNodeCanTraverse() {
        let bst = BSTree<Int>()
        bst.append(42)
        let node = bst.root
        bst.root.traverse(node)
    }
    
    func testThatBSTNodeCanTravelAlongManyPaths() {
        let bst = BSTree<Int>()
        bst.append(42)
        bst.append(41)
        bst.append(43)
        let node = bst.root
        bst.root.traverse(node)
    }
}
