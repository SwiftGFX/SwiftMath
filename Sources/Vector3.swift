// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

public typealias vec3 = Vector3f

public extension Vector3f {
    
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
    
    //MARK:- initializers
    
    @inline(__always)
    public init(_ v: Vector4f) {
        self.init(v.d.x, v.d.y, v.d.z)
    }
    
    @inline(__always)
    public init(_ v: Vector2f) {
        self.init(v.d.x, v.d.y, 0.0)
    }
}

public extension Vector3f {
    public var isZero: Bool {
        return x == 0.0 && y == 0.0 && z == 0.0
    }
}

public extension Vector3f {
    public var xy: Vector2f {
        return Vector2f(x, y)
    }
}
