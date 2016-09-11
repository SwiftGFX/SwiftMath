// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

public typealias vec2 = Vector2f

public extension Vector2f {
    
    public static let zero = Vector2f()
    
    public var x: Float { get { return d.x } set { d.x = newValue } }
    public var y: Float { get { return d.y } set { d.y = newValue } }
    
    public var r: Float { get { return d.x } set { d.x = newValue } }
    public var g: Float { get { return d.y } set { d.y = newValue } }
    
    public var s: Float { get { return d.x } set { d.x = newValue } }
    public var t: Float { get { return d.y } set { d.y = newValue } }
    
    public subscript(x: Int) -> Float {
        get {
            return d[x]
        }
        
        set {
            d[x] = newValue
        }
    }
    
    //MARK: - initializers
    
    @inline(__always)
    public init(_ v: Vector4f) {
        self.init(v.d.x, v.d.y)
    }
    
    @inline(__always)
    public init(_ v: Vector3f) {
        self.init(v.d.x, v.d.y)
    }
}

public extension Vector2f {
    public var isZero: Bool {
        return x == 0.0 && y == 0.0
    }
}

public extension Vector2f {
    public var extendedToVec3: Vector3f {
        return Vector3f(x, y, 0.0)
    }
}

extension Vector2f: CustomStringConvertible {
    public var description: String {
        return "Vector2f(x: \(d.x), y: \(d.y))"
    }
}
