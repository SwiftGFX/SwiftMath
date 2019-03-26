//
//  Matrix4x4+Extensions.swift
//  org.SwiftGFX.SwiftMath
//
//  Created by Andrey Volodin on 10.08.16.
//
//

public extension Matrix4x4f {
    func translated(by v: Vector3f) -> Matrix4x4f {
        let col3 = self * vec4(v)
        
        return Matrix4x4f(
            self[0],
            self[1],
            self[2],
            col3
        )
    }
    
    /// Multiplies a 4×4 matrix by a position vector to create a vector in
    /// homogenous coordinates, then projects the result to a 3-component vector.
    ///
    /// - parameter v: the position vector
    ///
    /// - remark:
    ///
    ///     ```
    ///     var r = self × vec4(v)
    ///     r *= 1.0/r.w
    ///     return vec3(r.x, r.y, r.z)
    ///     ```
    ///
    /// - returns: 
    /// A new vector created by first multiplying the matrix by the
    /// vector and then performing perspective division on the result vector.
    func multiplyAndProject(v: Vector3f) -> Vector3f {
        var r = self * Vector4f(v)
        r *= 1.0/r.w
        return Vector3f(r.x, r.y, r.z)
    }
}
