//
//  Vector3.swift
//  SwiftBGFX
//
//  Created by Stuart Carnie on 6/29/16.
//  Copyright © 2016 SGC. All rights reserved.
//

#if !NOSIMD
import simd
#endif

public typealias vec3 = Vector3f

public struct Vector3f {
    var d: float3
    
    public var x: Float { get { return d.x } set { d.x = newValue } }
    public var y: Float { get { return d.y } set { d.y = newValue } }
    public var z: Float { get { return d.z } set { d.z = newValue } }
    
    public var r: Float { get { return d.x } set { d.x = newValue } }
    public var g: Float { get { return d.y } set { d.y = newValue } }
    public var b: Float { get { return d.z } set { d.z = newValue } }
    
    public var s: Float { get { return d.x } set { d.x = newValue } }
    public var t: Float { get { return d.y } set { d.y = newValue } }
    public var p: Float { get { return d.z } set { d.z = newValue } }
    
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
    
    public subscript(x: Int) -> Float {
        get {
            return d[x]
        }
        
        set {
            d[x] = newValue
        }
    }

    //MARK:- functions
    
    public func normalize() -> Vector3f {
        return unsafeBitCast(simd.normalize(self.d), to: Vector3f.self)
    }
    
    public func dot(_ y: Vector3f) -> Float {
        return simd.dot(self.d, y.d)
    }
    
    public func cross(_ y: Vector3f) -> Vector3f {
        return unsafeBitCast(simd.cross(self.d, y.d), to: Vector3f.self)
    }

    //MARK:- operators
    
    public static prefix func -(lhs: Vector3f) -> Vector3f {
        return unsafeBitCast(-lhs.d, to: Vector3f.self)
    }
    
    public static func -(lhs: Vector3f, rhs: Vector3f) -> Vector3f {
        return unsafeBitCast(lhs.d - rhs.d, to: Vector3f.self)
    }
    
    public static func *(lhs: Vector3f, rhs: Float) -> Vector3f {
        return unsafeBitCast(lhs.d * rhs, to: Vector3f.self)
    }
    
    public static func *(lhs: Vector3f, rhs: Vector3f) -> Vector3f {
        return unsafeBitCast(lhs.d * rhs.d, to: Vector3f.self)
    }

}
