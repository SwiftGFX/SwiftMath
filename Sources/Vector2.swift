//
//  Vector2.swift
//  SwiftBGFX
//
//  Created by Stuart Carnie on 6/29/16.
//  Copyright © 2016 SGC. All rights reserved.
//

#if !NOSIMD
import simd
#endif

public typealias vec2 = Vector2f

public struct Vector2f {
    var d: float2
    
    public var x: Float { get { return d.x } set { d.x = newValue } }
    public var y: Float { get { return d.y } set { d.y = newValue } }
    
    public var r: Float { get { return d.x } set { d.x = newValue } }
    public var g: Float { get { return d.y } set { d.y = newValue } }
    
    public var s: Float { get { return d.x } set { d.x = newValue } }
    public var t: Float { get { return d.y } set { d.y = newValue } }
    
    public init() {
        self.d = float2()
    }
    
    public init(_ scalar: Float) {
        self.d = float2(scalar)
    }
    
    public init(_ x: Float, _ y: Float) {
        self.d = float2(x, y)
    }
    
    public init(x: Float, y: Float) {
        self.d = float2(x, y)
    }
    
    public subscript(x: Int) -> Float {
        get {
            return d[x]
        }
        
        set {
            d[x] = newValue
        }
    }
    
    //MARK:- functions
    
    public func normalize(_ x: Vector2f) -> Vector2f {
        return unsafeBitCast(simd.normalize(x.d), to: Vector2f.self)
    }
    
    public func dot(_ x: Vector2f, _ y: Vector2f) -> Float {
        return simd.dot(x.d, y.d)
    }
    
    public func cross(_ x: Vector2f, _ y: Vector2f) -> Vector2f {
        return unsafeBitCast(simd.cross(x.d, y.d), to: Vector2f.self)
    }

    //MARK:- operators
    
    public static prefix func -(lhs: Vector2f) -> Vector2f {
        return unsafeBitCast(-lhs.d, to: Vector2f.self)
    }

    public static func -(lhs: Vector2f, rhs: Vector2f) -> Vector2f {
        return unsafeBitCast(lhs.d - rhs.d, to: Vector2f.self)
    }

    public static func *(lhs: Vector2f, rhs: Float) -> Vector2f {
        return unsafeBitCast(lhs.d * rhs, to: Vector2f.self)
    }

    public static func *(lhs: Vector2f, rhs: Vector2f) -> Vector2f {
        return unsafeBitCast(lhs.d * rhs.d, to: Vector2f.self)
    }

}
