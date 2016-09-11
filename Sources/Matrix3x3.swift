// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

#if !NOSIMD
    import simd
#endif

public extension Matrix3x3f {
    /// Returns the identity matrix
    public static let identity = Matrix3x3f(diagonal: vec3(1.0))
    
    /// Creates a new instance from the values provided in row-major order
    public init(
        _ m00: Float, _ m01: Float, _ m02: Float,
        _ m10: Float, _ m11: Float, _ m12: Float,
        _ m20: Float, _ m21: Float, _ m22: Float) {
        self.init(
            vec3(m00, m10, m20),
            vec3(m01, m11, m21),
            vec3(m02, m12, m22)
        )
    }
    
    // MARK: - subscript operations
    
    
    /// Access the `col`th column vector
    public subscript(col: Int) -> Vector3f {
        get {
            return unsafeBitCast(d[col], to: Vector3f.self)
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
}

extension Matrix3x3f: CustomStringConvertible {
    /// Displays the matrix in row-major order
    public var description: String {
        return "Matrix3x3f(\n" +
            "m00: \(d[0,0]), m01: \(d[1,0]), m02: \(d[2,0]),\n" +
            "m10: \(d[0,1]), m11: \(d[1,1]), m12: \(d[2,1]),\n" +
            "m20: \(d[0,2]), m21: \(d[1,2]), m22: \(d[2,2]),\n" +
        ")"
    }
}
