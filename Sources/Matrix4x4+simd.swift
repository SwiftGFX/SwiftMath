// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

#if !NOSIMD
import simd

/// Represents a standard 4x4 transformation matrix.
/// - remark:
/// Matrices are stored in column-major order
public struct Matrix4x4f {
    internal var d: float4x4
    
    //MARK: - initializers
	
	/// Creates an instance initialized to zero
    public init() {
        self.d = float4x4()
    }
	
	/// Creates an instance using the vector to initialize the diagonal elements
    public init(diagonal v: Vector4f) {
        self.d = float4x4(diagonal: v.d)
    }
    
    /// Creates an instance with the specified columns
    ///
    /// - parameter c0: a vector representing column 0
    /// - parameter c1: a vector representing column 1
    /// - parameter c2: a vector representing column 2
    /// - parameter c3: a vector representing column 3
    public init(_ c0: Vector4f, _ c1: Vector4f, _ c2: Vector4f, _ c3: Vector4f) {
        self.d = float4x4(matrix_float4x4(columns: (c0.d, c1.d, c2.d, c3.d)))
    }
    
    //MARK:- properties
    
    public var inversed: Matrix4x4f {
        return unsafeBitCast(d.inverse, to: Matrix4x4f.self)
    }
    
    // MARK: - subscript operations
    
    /// Access the `col`th column vector
    public subscript(col: Int) -> Vector4f {
        get {
            return unsafeBitCast(d[col], to: Vector4f.self)
        }
        
        set {
            d[col] = newValue.d
        }
    }
    
    /// Access the `col`th column vector and then `row`th element
    public subscript(col: Int, row: Int) -> Float {
        get {
            return d[col, row]
        }
        
        set {
            d[col, row] = newValue
        }
    }
    
    //MARK:- operators
    
    public static prefix func -(lhs: Matrix4x4f) -> Matrix4x4f {
        return unsafeBitCast(-lhs.d, to: Matrix4x4f.self)
    }
    
    public static func *(lhs: Matrix4x4f, rhs: Float) -> Matrix4x4f {
        return unsafeBitCast(lhs.d * rhs, to: Matrix4x4f.self)
    }
    
    public static func *(lhs: Matrix4x4f, rhs: Matrix4x4f) -> Matrix4x4f {
        return unsafeBitCast(lhs.d * rhs.d, to: Matrix4x4f.self)
    }
}

#endif
