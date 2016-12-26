// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

#if !NOSIMD
import simd

public struct Vector3f {
    internal var d: float3
    
    public var x: Float { get { return d.x } set { d.x = newValue } }
    public var y: Float { get { return d.y } set { d.y = newValue } }
    public var z: Float { get { return d.z } set { d.z = newValue } }
    
    public var r: Float { get { return d.x } set { d.x = newValue } }
    public var g: Float { get { return d.y } set { d.y = newValue } }
    public var b: Float { get { return d.z } set { d.z = newValue } }
    
    public var s: Float { get { return d.x } set { d.x = newValue } }
    public var t: Float { get { return d.y } set { d.y = newValue } }
    public var p: Float { get { return d.z } set { d.z = newValue } }
    
    public subscript(x: Int) -> Float {
        get {
            return d[x]
        }
        
        set {
            d[x] = newValue
        }
    }
}

public extension Vector3f {
    
    //MARK: - initializers
    
    public init() {
        self.d = float3()
    }
    
    public init(_ scalar: Float) {
        self.d = float3(scalar)
    }
    
    public init(_ x: Float, _ y: Float, _ z: Float) {
        self.d = float3(x, y, z)
    }
    
    public init(x: Float, y: Float, z: Float) {
        self.d = float3(x, y, z)
    }
    
    //MARK: - properties
    
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
    
    //MARK: - functions
    
    public func dot(_ y: Vector3f) -> Float {
        return simd.dot(self.d, y.d)
    }
    
    public func cross(_ y: Vector3f) -> Vector3f {
        return unsafeBitCast(simd.cross(self.d, y.d), to: Vector3f.self)
    }
    
    public func interpolated(to: Vector3f, factor: Float) -> Vector3f {
        return unsafeBitCast(simd.mix(d, to.d, t: factor), to: Vector3f.self)
    }
    
    //MARK: - operators
    
    public static func +(lhs: Vector3f, rhs: Vector3f) -> Vector3f {
        return unsafeBitCast(lhs.d + rhs.d, to: Vector3f.self)
    }

    public static func -(lhs: Vector3f, rhs: Vector3f) -> Vector3f {
        return unsafeBitCast(lhs.d - rhs.d, to: Vector3f.self)
    }

    public static prefix func -(lhs: Vector3f) -> Vector3f {
        return unsafeBitCast(-lhs.d, to: Vector3f.self)
    }
    
    public static func *(lhs: Vector3f, rhs: Float) -> Vector3f {
        return unsafeBitCast(lhs.d * rhs, to: Vector3f.self)
    }
    
    public static func *(lhs: Vector3f, rhs: Vector3f) -> Vector3f {
        return unsafeBitCast(lhs.d * rhs.d, to: Vector3f.self)
    }
    
    public static func *(lhs: Matrix3x3f, rhs: Vector3f) -> Vector3f {
        return unsafeBitCast(lhs.d * rhs.d, to: Vector3f.self)
    }
    
    public static func *(lhs: Vector3f, rhs: Matrix3x3f) -> Vector3f {
        return unsafeBitCast(lhs.d * rhs.d, to: Vector3f.self)
    }
    
    public static func *=(lhs: inout Vector3f, rhs: Float) {
        lhs.d *= rhs
    }
}

#endif
