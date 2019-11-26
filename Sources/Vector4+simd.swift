// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

#if !NOSIMD
import simd

@frozen
public struct Vector4f {
    internal var d: SIMD4<Float>
    
    public var x: Float { get { return d.x } set { d.x = newValue } }
    public var y: Float { get { return d.y } set { d.y = newValue } }
    public var z: Float { get { return d.z } set { d.z = newValue } }
    public var w: Float { get { return d.w } set { d.w = newValue } }
    
    public var r: Float { get { return d.x } set { d.x = newValue } }
    public var g: Float { get { return d.y } set { d.y = newValue } }
    public var b: Float { get { return d.z } set { d.z = newValue } }
    public var a: Float { get { return d.w } set { d.w = newValue } }
    
    public var s: Float { get { return d.x } set { d.x = newValue } }
    public var t: Float { get { return d.y } set { d.y = newValue } }
    public var p: Float { get { return d.z } set { d.z = newValue } }
    public var q: Float { get { return d.w } set { d.w = newValue } }
    
    public subscript(x: Int) -> Float {
        get {
            return d[x]
        }
        set {
            d[x] = newValue
        }
    }
    
    // MARK: - initializers
    
    public init() {
        self.d = SIMD4<Float>()
    }
    
    public init(_ scalar: Float) {
        self.d = SIMD4<Float>(repeating: scalar)
    }
    
    public init(float4 scalar4: SIMD4<Float>) {
        self.d = scalar4
    }
    
    public init(_ scalar4: SIMD4<Float>) {
        self.d = scalar4
    }
    
    public init(x: Float, y: Float, z: Float, w: Float) {
        self.d = SIMD4<Float>(x, y, z, w)
    }
    
    public init(_ x: Float, _ y: Float, _ z: Float, _ w: Float) {
        self.d = SIMD4<Float>(x, y, z, w)
    }
    
}

public extension Vector4f {

    // MARK: - properties
    
    /// Length (two-norm or “Euclidean norm”) of x.
    var length: Float {
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
    var lengthSquared: Float {
        return simd.length_squared(d)
    }
    
    var normalized: Vector4f {
        return unsafeBitCast(simd.normalize(self.d), to: Vector4f.self)
    }
    
    // MARK: - functions
    
    func dot(x: Vector4f) -> Float {
        return simd.dot(self.d, x.d)
    }
    
    /// Linear interpolation to the target vector
    ///
    /// - note:
    ///     * when factor is 0, returns self
    ///     * when factor is 1, returns `to`
    ///
    /// - parameter to:     target vector
    /// - parameter factor: factor
    ///
    /// - returns: interpolated vector
    func interpolated(to: Vector4f, factor: Float) -> Vector4f {
        return unsafeBitCast(simd.mix(d, to.d, t: factor), to: Vector4f.self)
    }
    
    // MARK: - operators
    
    static func +(lhs: Vector4f, rhs: Vector4f) -> Vector4f {
        return unsafeBitCast(lhs.d + rhs.d, to: Vector4f.self)
    }
    
    static func -(lhs: Vector4f, rhs: Vector4f) -> Vector4f {
        return unsafeBitCast(lhs.d - rhs.d, to: Vector4f.self)
    }

    static prefix func -(lhs: Vector4f) -> Vector4f {
        return unsafeBitCast(-lhs.d, to: Vector4f.self)
    }
    
    static func *(lhs: Vector4f, rhs: Float) -> Vector4f {
        return unsafeBitCast(lhs.d * rhs, to: Vector4f.self)
    }
    
    static func *(lhs: Vector4f, rhs: Vector4f) -> Vector4f {
        return unsafeBitCast(lhs.d * rhs.d, to: Vector4f.self)
    }
    
    static func *(lhs: Matrix4x4f, rhs: Vector4f) -> Vector4f {
        return unsafeBitCast(lhs.d * rhs.d, to: Vector4f.self)
    }
    
    static func *(lhs: Vector4f, rhs: Matrix4x4f) -> Vector4f {
        return unsafeBitCast(lhs.d * rhs.d, to: Vector4f.self)
    }
    
    static func *=(lhs: inout Vector4f, rhs: Float) {
        lhs.d *= rhs
    }
}
    
extension Vector4f: Equatable {
    public static func ==(lhs: Vector4f, rhs: Vector4f) -> Bool {
        return lhs.d == rhs.d
    }
}
    
public extension SIMD4 where Scalar == Float {
    init(_ v4f: Vector4f) {
        self = v4f.d
    }
}

#endif
