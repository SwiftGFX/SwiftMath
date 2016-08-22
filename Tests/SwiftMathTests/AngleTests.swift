// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

import XCTest
@testable import SwiftMath

class AngleTests: XCTestCase {
    func testPostfixConstructsAngleFromDoubleInDegrees() {
        let a = 180.0°
        
        XCTAssertEqual(Double.pi, a.radians)
        XCTAssertEqual(180.0, a.degrees)
    }
    
    func testPostfixConstructsAngleFromIntInDegrees() {
        let a = Int(180)°
        
        XCTAssertEqual(Float.pi, a.radians)
        XCTAssertEqual(180.0, a.degrees)
    }
    
    func testMakeAngleFromIntegerInDegrees() {
        let a = 180.degrees
        XCTAssertEqual(Float.pi, a.radians)
    }
    
    // MARK: - operator tests
    
    func testAngleMultiplyLiteral() {
        var a = 180.0°
        a = a * 0.5
        XCTAssertEqual(90.0, a.degrees)
    }

}
