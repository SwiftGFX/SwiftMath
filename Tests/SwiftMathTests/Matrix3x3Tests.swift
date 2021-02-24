//
//  Matrix3x3Tests.swift
//  
//  Created by Volodymyr Boichentsov on 02/02/2021.
//

import XCTest
@testable import SwiftMath

class Matrix3x3Tests: XCTestCase {
    
    func testCreate() {
        let m = Matrix3x3f.init(0.0, 1.0, 2.0, 
                                3.0, 4.0, 5.0, 
                                6.0, 7.0, 8.0)
        XCTAssertEqual(3.0, m[0,1])
        XCTAssertEqual(4.0, m[1,1])
        XCTAssertEqual(7.0, m[1,2])
    }
    
    func testTranspose() {
        let m = Matrix3x3f.init(0.0, 1.0, 2.0, 
                                3.0, 4.0, 5.0, 
                                6.0, 7.0, 8.0)
        let mTranspose = m.transposed
        XCTAssertEqual(1.0, mTranspose[0,1])
        XCTAssertEqual(4.0, mTranspose[1,1])
        XCTAssertEqual(5.0, mTranspose[1,2])
    }
    
    func testInvert() {
        let m = Matrix3x3f.init(diagonal: Vector3f.init(2.0))
        let mInverse = m.inversed
        XCTAssertEqual(0.5, mInverse[0,0])
        XCTAssertEqual(0.5, mInverse[1,1])
        XCTAssertEqual(0.5, mInverse[2,2])
    }
}
