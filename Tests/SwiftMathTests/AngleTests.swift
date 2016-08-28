// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

import XCTest
@testable import SwiftMath

class AngleTests: XCTestCase {
    
    func testPostfixConstructsAngleFromFloatInDegrees() {
        let a = 180.0°
        
        XCTAssertEqual(Float.pi, a.radians)
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
    
    // MARK: multiplication (scaling)
    
    func testAngleMultiply() {
        var a = 180.0°
        a = a * 0.5
        XCTAssertEqual(90.0, a.degrees)
    }
    
    // MARK: division (scaling)
    
    func testAngleDivide() {
        var a = 180.0°
        a = a / 2.0
        XCTAssertEqual(90.0, a.degrees)
    }
    
    // MARK: addition
    
    func testAngleAddition() {
        let a = 60.0° + 30.0°
        XCTAssertEqual(90.0, a.degrees)
    }
    
    func testAngleCompoundAdditionAndAssignment() {
        var a = 60.0°
        a += 30°
        XCTAssertEqual(90.0, a.degrees)
    }
    
    // MARK: subtraction
    
    func testAngleSubtraction() {
        let a = 60.0° - 30.0°
        XCTAssertEqual(30.0, a.degrees)
    }
    
    func testAngleCompoundSubtractionAndAssignment() {
        var a = 60.0°
        a -= 30°
        XCTAssertEqual(30.0, a.degrees)
    }

}
