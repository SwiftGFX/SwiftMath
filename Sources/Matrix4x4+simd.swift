// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

#if !NOSIMD
import simd

/// Represents a standard 4x4 transformation matrix.
/// - remark:
/// Matrices are stored in column-major order
@frozen
public struct Matrix4x4f: Codable, Equatable {
    internal var d: matrix_float4x4
    
    // MARK: - initializers
	
	/// Creates an instance initialized with either existing simd matrix or zeros
    public init(simdMatrix: matrix_float4x4 = .init()) {
        self.d = simdMatrix
    }
    
    /// Convenience initializer for type casting
    public init(_ simdMatrix: matrix_float4x4) {
        self.init(simdMatrix: simdMatrix)
    }
	
	/// Creates an instance using the vector to initialize the diagonal elements
    public init(diagonal v: Vector4f) {
        self.d = matrix_float4x4(diagonal: v.d)
    }
    
    /// Creates an instance with the specified columns
    ///
    /// - parameter c0: a vector representing column 0
    /// - parameter c1: a vector representing column 1
    /// - parameter c2: a vector representing column 2
    /// - parameter c3: a vector representing column 3
    public init(_ c0: Vector4f, _ c1: Vector4f, _ c2: Vector4f, _ c3: Vector4f) {
        self.d = matrix_float4x4(columns: (c0.d, c1.d, c2.d, c3.d))
    }
    
    // MARK:- properties
    
    public var transposed: Matrix4x4f {
        return unsafeBitCast(d.transpose, to: Matrix4x4f.self)
    }
    
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
    
    // MARK:- operators
    
    public static prefix func -(lhs: Matrix4x4f) -> Matrix4x4f {
        return unsafeBitCast(-lhs.d, to: Matrix4x4f.self)
    }
    
    public static func *(lhs: Matrix4x4f, rhs: Float) -> Matrix4x4f {
        return unsafeBitCast(lhs.d * rhs, to: Matrix4x4f.self)
    }
    
    public static func *(lhs: Matrix4x4f, rhs: Matrix4x4f) -> Matrix4x4f {
        return unsafeBitCast(lhs.d * rhs.d, to: Matrix4x4f.self)
    }

    public static func == (lhs: Matrix4x4f, rhs: Matrix4x4f) -> Bool {
        float4x4(lhs) == float4x4(rhs)
    }
}
    
public extension matrix_float4x4 {
    init(_ mat4x4f: Matrix4x4f) {
        self = mat4x4f.d
    }
}

#endif
