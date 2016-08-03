//
//  Vector4.swift
//  SwiftBGFX
//
//  Created by Stuart Carnie on 6/29/16.
//  Copyright © 2016 SGC. All rights reserved.
//

#if !NOSIMD
import simd
#endif

public typealias vec4 = Vector4f

public struct Vector4f {
    var d: float4
    
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
    
    public init() {
        self.d = float4()
    }
    
    public init(_ scalar: Float) {
        self.d = float4(scalar)
    }
    
    public init(_ x: Float, _ y: Float, _ z: Float, _ w: Float) {
        self.d = float4(x, y, z, w)
    }
    
    public init(x: Float, y: Float, z: Float, w: Float) {
        self.d = float4(x, y, z, w)
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
    
    public func normalize() -> Vector4f {
        return unsafeBitCast(simd.normalize(self.d), to: Vector4f.self)
    }
    
    public func dot(x: Vector4f) -> Float {
        return simd.dot(self.d, x.d)
    }
    
    //MARK:- operators
    
    public static prefix func -(lhs: Vector4f) -> Vector4f {
        return unsafeBitCast(-lhs.d, to: Vector4f.self)
    }

    public static func *(lhs: Vector4f, rhs: Float) -> Vector4f {
        return unsafeBitCast(lhs.d * rhs, to: Vector4f.self)
    }
    
    public static func *(lhs: Vector4f, rhs: Vector4f) -> Vector4f {
        return unsafeBitCast(lhs.d * rhs.d, to: Vector4f.self)
    }
    
    public static func *(lhs: Vector4f, rhs: Matrix4x4f) -> Vector4f {
        return unsafeBitCast(lhs.d * rhs.d, to: Vector4f.self)
    }
}
