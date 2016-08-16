// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

import XCTest
@testable import SwiftMath

class ClampTests: XCTestCase {
    func testClampReturnsSameValueWhenWithinRange() {
        let a = clamp(1.0, min: 0.0, max: 2.0)
        XCTAssertEqual(1.0, a)
    }
    func testClampReturnsMinimumValueWhenLessThanMinimum() {
        let a = clamp(0.5, min: 1.0, max: 2.0)
        XCTAssertEqual(1.0, a)
    }
    func testClampReturnsMaximumValueWhenGreaterThanMaximum() {
        let a = clamp(2.5, min: 1.0, max: 2.0)
        XCTAssertEqual(2.0, a)
    }
}

class FloatExtensionTests: XCTestCase {
    
    func testRadians() {
        let deg: Float = 180.0
        let rad = deg.radians
        XCTAssertEqual(Float.pi, rad)
    }
    
    func testDegrees() {
        let rad: Float = 2.0 * Float.pi
        let deg = rad.degrees
        XCTAssertEqual(360.0, deg)
    }
}
