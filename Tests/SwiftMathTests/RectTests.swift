//
//  RectTests.swift
//  SwiftMath
//
//  Created by Kevin Hury on 10/11/2016.
//
//

import XCTest
@testable import SwiftMath

class RectTests: XCTestCase {
    
    func testRectEquatable() {
        let a = Rect(origin: Point(x: 10, y: 10), size: Size(width: 100, height: 100))
        let b = Rect(origin: Point(x: 10, y: 10), size: Size(width: 100, height: 120))
        let c = Rect(origin: Point(x: 20, y: 10), size: Size(width: 100, height: 100))
        let d = c
        let e = Rect(origin: Point(x: 0, y: 0), size: Size(width: 0, height: 0))
        
        XCTAssertTrue(a != b)
        XCTAssertTrue(c == d)
        XCTAssertTrue(c != a)
        XCTAssertTrue(e == Rect.zero)
    }
}
