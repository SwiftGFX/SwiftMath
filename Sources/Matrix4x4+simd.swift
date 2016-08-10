// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

#if !NOSIMD
import simd

/// Represents a standard 4x4 transformation matrix. Matrices are stored
/// in column-major order
public struct Matrix4x4f {
    var d: float4x4
    
    //MARK:- initializers
    
    @inline(__always)
    public init() {
        self.d = float4x4()
    }
    
    @inline(__always)
    public init(diagonal v: Vector4f) {
        self.d = float4x4(diagonal: v.d)
    }
    
    /// Initialize a new matrix with the specified columns
    ///
    /// - parameter c0: column 0
    /// - parameter c1: column 1
    /// - parameter c2: column 2
    /// - parameter c3: column 3
    @inline(__always)
    public init(_ c0: Vector4f, _ c1: Vector4f, _ c2: Vector4f, _ c3: Vector4f) {
        self.d = float4x4(matrix_float4x4(columns: (c0.d, c1.d, c2.d, c3.d)))
    }
    
    //MARK:- properties
    
    public var inversed: Matrix4x4f {
        return unsafeBitCast(d.inverse, to: Matrix4x4f.self)
    }
    
    //MARK:- operators
    
    @inline(__always)
    public static prefix func -(lhs: Matrix4x4f) -> Matrix4x4f {
        return unsafeBitCast(-lhs.d, to: Matrix4x4f.self)
    }
    
    @inline(__always)
    public static func *(lhs: Matrix4x4f, rhs: Float) -> Matrix4x4f {
        return unsafeBitCast(lhs.d * rhs, to: Matrix4x4f.self)
    }
    
    @inline(__always)
    public static func *(lhs: Matrix4x4f, rhs: Matrix4x4f) -> Matrix4x4f {
        return unsafeBitCast(lhs.d * rhs.d, to: Matrix4x4f.self)
    }
}

#endif
