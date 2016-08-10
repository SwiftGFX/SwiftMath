// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

#if !NOSIMD
import simd

public struct Vector3f {
    var d: float3
}

public extension Vector3f {
    
    //MARK:- initializers
    
    @inline(__always)
    public init() {
        self.d = float3()
    }
    
    @inline(__always)
    public init(_ scalar: Float) {
        self.d = float3(scalar)
    }
    
    @inline(__always)
    public init(_ x: Float, _ y: Float, _ z: Float) {
        self.d = float3(x, y, z)
    }
    
    @inline(__always)
    public init(x: Float, y: Float, z: Float) {
        self.d = float3(x, y, z)
    }
    
    //MARK:- properties
    
    /// Length (two-norm or “Euclidean norm”) of x.
    public var length: Float {
        return simd.length(d)
    }
    
    /// Length of x, squared. This is more efficient to compute than the length,
    /// so you should use it if you only need to compare lengths to each other.
    /// I.e. instead of writing:
    ///
    /// `if (length(x) < length(y)) { … }`
    ///
    /// use:
    ///
    /// `if (length_squared(x) < length_squared(y)) { … }`
    ///
    /// Doing it this way avoids one or two square roots, which is a fairly costly operation.
    public var lengthSquared: Float {
        return simd.length_squared(d)
    }
    
    public var normalized: Vector3f {
        return unsafeBitCast(simd.normalize(self.d), to: Vector3f.self)
    }
    
    //MARK:- functions
    
    public func dot(_ y: Vector3f) -> Float {
        return simd.dot(self.d, y.d)
    }
    
    public func cross(_ y: Vector3f) -> Vector3f {
        return unsafeBitCast(simd.cross(self.d, y.d), to: Vector3f.self)
    }
    
    public func interpolated(to: Vector3f, factor: Float) -> Vector3f {
        return unsafeBitCast(simd.mix(d, to.d, t: factor), to: Vector3f.self)
    }
    
    //MARK:- operators
    
    @inline(__always)
    public static prefix func -(lhs: Vector3f) -> Vector3f {
        return unsafeBitCast(-lhs.d, to: Vector3f.self)
    }
    
    @inline(__always)
    public static func -(lhs: Vector3f, rhs: Vector3f) -> Vector3f {
        return unsafeBitCast(lhs.d - rhs.d, to: Vector3f.self)
    }
    
    @inline(__always)
    public static func *(lhs: Vector3f, rhs: Float) -> Vector3f {
        return unsafeBitCast(lhs.d * rhs, to: Vector3f.self)
    }
    
    @inline(__always)
    public static func *(lhs: Vector3f, rhs: Vector3f) -> Vector3f {
        return unsafeBitCast(lhs.d * rhs.d, to: Vector3f.self)
    }
    
}

#endif
