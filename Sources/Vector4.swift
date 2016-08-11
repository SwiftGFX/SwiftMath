// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

public typealias vec4 = Vector4f

public extension Vector4f {
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
    
    //MARK:- initializers
    
    @inline(__always)
    public init(_ v: Vector2f) {
        self.init(v.d.x, v.d.y, 0.0, 1.0)
    }
    
    @inline(__always)
    public init(_ v: Vector3f) {
        self.init(v.d.x, v.d.y,v.d.z, 1.0)
    }
}

public extension Vector4f {
    public var isZero: Bool {
        return x == 0.0 && y == 0.0 && z == 0.0 && w == 0.0
    }
}

public extension Vector4f {
    public var xy: Vector2f {
        return Vector2f(x, y)
    }
    
    public var xyz: Vector3f {
        return Vector3f(x, y, z)
    }
}
