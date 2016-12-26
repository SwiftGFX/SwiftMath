//
//  Vector3f+nosimd.swift
//  SwiftMath
//
//  Created by Andrey Volodin on 07.10.16.
//
//

#if NOSIMD
    
#if (os(OSX) || os(iOS) || os(tvOS) || os(watchOS))
    import Darwin
    #else
    import Glibc
#endif
    
public struct Vector3f {
    public var x: Float = 0.0
    public var y: Float = 0.0
    public var z: Float = 0.0
    
    public var r: Float { get { return x } set { x = newValue } }
    public var g: Float { get { return y } set { y = newValue } }
    public var b: Float { get { return z } set { z = newValue } }
    
    public var s: Float { get { return x } set { x = newValue } }
    public var t: Float { get { return y } set { y = newValue } }
    public var p: Float { get { return z } set { z = newValue } }
    
    public subscript(x: Int) -> Float {
        get {
            if x == 0 { return self.x }
            if x == 1 { return self.y }
            if x == 2 { return self.z }
            fatalError("Index outside of bounds")
        }
        
        set {
            if x == 0 { self.x = newValue; return }
            if x == 1 { self.y = newValue; return }
            if x == 2 { self.z = newValue; return }
            fatalError("Index outside of bounds")
        }
    }
    
    public init() {}
    
    public init(_ x: Float, _ y: Float, _ z: Float) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    public init(_ scalar: Float) {
        self.init(scalar, scalar, scalar)
    }
    
    public init(x: Float, y: Float, z: Float) {
        self.init(x, y, z)
    }
}

extension Vector3f: Equatable {

    public var lengthSquared: Float {
        return x * x + y * y + z * z
    }
    
    public var length: Float {
        return sqrt(lengthSquared)
    }
    
    public func dot(_ v: Vector3f) -> Float {
        return x * v.x + y * v.y + z * v.z
    }
    
    public func cross(_ v: Vector3f) -> Vector3f {
        return Vector3f(y * v.z - z * v.y, z * v.x - x * v.z, x * v.y - y * v.x)
    }
    
    public var normalized: Vector3f {
        let lengthSquared = self.lengthSquared
        if lengthSquared ~= 0 || lengthSquared ~= 1 {
            return self
        }
        return self / sqrt(lengthSquared)
    }
    
    public func interpolated(with v: Vector3f, by t: Float) -> Vector3f {
        return self + (v - self) * t
    }
    
    public static prefix func -(v: Vector3f) -> Vector3f {
        return Vector3f(-v.x, -v.y, -v.z)
    }
    
    public static func +(lhs: Vector3f, rhs: Vector3f) -> Vector3f {
        return Vector3f(lhs.x + rhs.x, lhs.y + rhs.y, lhs.z + rhs.z)
    }
    
    public static func -(lhs: Vector3f, rhs: Vector3f) -> Vector3f {
        return Vector3f(lhs.x - rhs.x, lhs.y - rhs.y, lhs.z - rhs.z)
    }
    
    public static func *(lhs: Vector3f, rhs: Vector3f) -> Vector3f {
        return Vector3f(lhs.x * rhs.x, lhs.y * rhs.y, lhs.z * rhs.z)
    }
    
    public static func *(lhs: Vector3f, rhs: Float) -> Vector3f {
        return Vector3f(lhs.x * rhs, lhs.y * rhs, lhs.z * rhs)
    }
    
    public static func /(lhs: Vector3f, rhs: Vector3f) -> Vector3f {
        return Vector3f(lhs.x / rhs.x, lhs.y / rhs.y, lhs.z / rhs.z)
    }
    
    public static func /(lhs: Vector3f, rhs: Float) -> Vector3f {
        return Vector3f(lhs.x / rhs, lhs.y / rhs, lhs.z / rhs)
    }
    
    public static func ==(lhs: Vector3f, rhs: Vector3f) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y && lhs.z == rhs.z
    }
    
    public static func ~=(lhs: Vector3f, rhs: Vector3f) -> Bool {
        return lhs.x ~= rhs.x && lhs.y ~= rhs.y && lhs.z ~= rhs.z
    }
    
    public static func *(lhs: Vector3f, rhs: Matrix3x3f) -> Vector3f {
        return Vector3f(
            lhs.x * rhs.m11 + lhs.y * rhs.m21 + lhs.z * rhs.m31,
            lhs.x * rhs.m12 + lhs.y * rhs.m22 + lhs.z * rhs.m32,
            lhs.x * rhs.m13 + lhs.y * rhs.m23 + lhs.z * rhs.m33
        )
    }
    
    public static func *(lhs: Matrix3x3f, rhs: Vector3f) -> Vector3f {
        return rhs * lhs
    }
}
#endif
