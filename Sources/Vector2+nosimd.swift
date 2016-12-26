//
//  Vector2f+nosimd.swift
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
    
    public struct Vector2f {
        public var x: Float = 0.0
        public var y: Float = 0.0
        
        public init() { }
        
        public init(x: Float, y: Float) {
            self.x = x
            self.y = y
        }
        
        public init(_ scalar: Float) {
            self.init(x: scalar, y: scalar)
        }
        
        public init(_ x: Float, _ y: Float) {
            self.init(x: x, y: y)
        }
    }
    
    extension Vector2f: Equatable {
        
        public var r: Float { get { return x } set { x = newValue } }
        public var g: Float { get { return y } set { y = newValue } }
        
        public var s: Float { get { return x } set { x = newValue } }
        public var t: Float { get { return y } set { y = newValue } }
        
        public subscript(x: Int) -> Float {
            get {
                if x == 0 { return self.x }
                if x == 1 { return self.y }
                fatalError("Index outside of bounds")
            }
            
            set {
                if x == 0 { self.x = newValue; return }
                if x == 1 { self.y = newValue; return }
                fatalError("Index outside of bounds")
            }
        }
        
        public var lengthSquared: Float {
            return x * x + y * y
        }
        
        public var length: Float {
            return sqrt(lengthSquared)
        }
        
        public func dot(_ v: Vector2f) -> Float {
            return x * v.x + y * v.y
        }
        
        public func cross(_ v: Vector2f) -> Float {
            return x * v.y - y * v.x
        }
        
        public var normalized: Vector2f {
            let lengthSquared = self.lengthSquared
            if lengthSquared ~= 0 || lengthSquared ~= 1 {
                return self
            }
            return self / sqrt(lengthSquared)
        }
        
        public func interpolated(to v: Vector2f, factor t: Float) -> Vector2f {
            return self + (v - self) * t
        }
        
        public static prefix func -(v: Vector2f) -> Vector2f {
            return Vector2f(-v.x, -v.y)
        }
        
        public static func +(lhs: Vector2f, rhs: Vector2f) -> Vector2f {
            return Vector2f(lhs.x + rhs.x, lhs.y + rhs.y)
        }
        
        public static func -(lhs: Vector2f, rhs: Vector2f) -> Vector2f {
            return Vector2f(lhs.x - rhs.x, lhs.y - rhs.y)
        }
        
        public static func *(lhs: Vector2f, rhs: Vector2f) -> Vector2f {
            return Vector2f(lhs.x * rhs.x, lhs.y * rhs.y)
        }
        
        public static func *(lhs: Vector2f, rhs: Float) -> Vector2f {
            return Vector2f(lhs.x * rhs, lhs.y * rhs)
        }
        
        public static func /(lhs: Vector2f, rhs: Vector2f) -> Vector2f {
            return Vector2f(lhs.x / rhs.x, lhs.y / rhs.y)
        }
        
        public static func /(lhs: Vector2f, rhs: Float) -> Vector2f {
            return Vector2f(lhs.x / rhs, lhs.y / rhs)
        }
        
        public static func ==(lhs: Vector2f, rhs: Vector2f) -> Bool {
            return lhs.x == rhs.x && lhs.y == rhs.y
        }
        
        public static func ~=(lhs: Vector2f, rhs: Vector2f) -> Bool {
            return lhs.x ~= rhs.x && lhs.y ~= rhs.y
        }
        
        public static func *(lhs: Matrix4x4f, rhs: Vector2f) -> Vector2f {
            return (lhs * Vector4f(rhs)).xy
        }
        
        public static func * (lhs: Vector2f, rhs: Matrix3x3f) -> Vector2f {
            return Vector2f(
                lhs.x * rhs.m11 + lhs.y * rhs.m21 + rhs.m31,
                lhs.x * rhs.m12 + lhs.y * rhs.m22 + rhs.m32
            )
        }
        
        public static func * (lhs: Matrix3x3f, rhs: Vector2f) -> Vector2f {
            return rhs * lhs
        }
        
        public static func *(lhs: Vector2f, rhs: Matrix4x4f) -> Vector2f {
            return (Vector4f(lhs) * rhs).xy
        }
        
    }
#endif
