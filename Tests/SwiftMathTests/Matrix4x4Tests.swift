// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

import XCTest
@testable import SwiftMath

class Matrix4x4Tests: XCTestCase {
    
    func testIdentity() {
        let i = Matrix4x4f.identity
        
        XCTAssertEqual(1.0, i[0,0])
        XCTAssertEqual(1.0, i[1,1])
        XCTAssertEqual(1.0, i[2,2])
        XCTAssertEqual(1.0, i[3,3])
    }
    
    func testInitWithVectors() {
        let i = Matrix4x4f(
            vec4(00.0, 10.0, 20.0, 30.0),
            vec4(01.0, 11.0, 21.0, 31.0),
            vec4(02.0, 12.0, 22.0, 32.0),
            vec4(03.0, 13.0, 23.0, 33.0)
        )
        
        XCTAssertEqual(01.0, i[1,0])
        XCTAssertEqual(01.0, i[1][0])
        
        XCTAssertEqual(10.0, i[0,1])
        XCTAssertEqual(10.0, i[0][1])
        
        XCTAssertEqual(32.0, i[2][3])
    }
    
    func testInitWithFloats() {
        let i = Matrix4x4f(
            00.0, 01.0, 02.0, 03.0,
            10.0, 11.0, 12.0, 13.0,
            20.0, 21.0, 22.0, 23.0,
            30.0, 31.0, 32.0, 33.0
        )
        
        XCTAssertEqual(00.0, i[0,0])
        XCTAssertEqual(00.0, i[0][0])
        XCTAssertEqual(01.0, i[1,0])
        XCTAssertEqual(01.0, i[1][0])
        
        XCTAssertEqual(10.0, i[0,1])
        XCTAssertEqual(10.0, i[0][1])
        XCTAssertEqual(12.0, i[2][1])
        
        XCTAssertEqual(32.0, i[2][3])
    }

    func testInitWithFloatsIsRowMajor() {
        let i = Matrix4x4f(
            1, 0, 0, 0,
            1, 0, 0, 0,
            1, 0, 0, 0,
            1, 0, 0, 0
        )
        let v = Vector4f(2.0, 4.0, 6.0, 1.0)
        let c = i * v
        
        XCTAssertEqual(2.0, c.x)
        XCTAssertEqual(2.0, c.y)
        XCTAssertEqual(2.0, c.z)
        XCTAssertEqual(2.0, c.w)
    }
    
    
    func testInitWithVector4IsColumnMajor() {
        let i = Matrix4x4f(
            vec4(0, 0, 0, 0),
            vec4(1, 1, 1, 1),
            vec4(0, 0, 0, 0),
            vec4(0, 0, 0, 0)
        )
        let v = Vector4f(2.0, 4.0, 6.0, 1.0)
        let c = i * v
        
        XCTAssertEqual(4.0, c.x)
        XCTAssertEqual(4.0, c.y)
        XCTAssertEqual(4.0, c.z)
        XCTAssertEqual(4.0, c.w)
    }
    
    func testInvert() {
        let m = Matrix4x4f.init(diagonal: Vector4f.init(2.0))
        let mInverse = m.inversed
        XCTAssertEqual(0.5, mInverse[0,0], accuracy: 0.00001)
        XCTAssertEqual(0.5, mInverse[1,1], accuracy: 0.00001)
        XCTAssertEqual(0.5, mInverse[2,2], accuracy: 0.00001)
    }

    func testTranspose() {
        let m = Matrix4x4f.init(0.0, 1.0, 2.0, 3.0, 
                                4.0, 5.0, 6.0, 7.0, 
                                8.0, 9.0, 10.0, 11.0,
                                12, 13, 14, 15)
        let mTranspose = m.transposed
        XCTAssertEqual(1.0, mTranspose[0,1])
        XCTAssertEqual(4.0, mTranspose[1,0])
        XCTAssertEqual(5.0, mTranspose[1,1])
        XCTAssertEqual(14.0, mTranspose[3,2])
    }
}
