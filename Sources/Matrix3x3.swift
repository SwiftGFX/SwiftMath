// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

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
    
}

extension Matrix3x3f: CustomStringConvertible {
    /// Displays the matrix in row-major order
    public var description: String {
        return "Matrix3x3f(\n" +
            "m00: \(self[0,0]), m01: \(self[1,0]), m02: \(self[2,0]),\n" +
            "m10: \(self[0,1]), m11: \(self[1,1]), m12: \(self[2,1]),\n" +
            "m20: \(self[0,2]), m21: \(self[1,2]), m22: \(self[2,2]),\n" +
        ")"
    }
}

