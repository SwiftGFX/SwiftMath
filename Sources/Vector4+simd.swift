//
//  Vector4.swift
//  SwiftBGFX
//
//  Created by Stuart Carnie on 6/29/16.
//  Copyright © 2016 SGC. All rights reserved.
//

#if !NOSIMD
    import simd
    
    public struct Vector4f {
        var d: float4
        
        //MARK:- initializers
        
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
    
#endif
