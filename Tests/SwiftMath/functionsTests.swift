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
