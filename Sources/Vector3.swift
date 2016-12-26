// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

public typealias vec3 = Vector3f

public extension Vector3f {
    //MARK: - initializers
    
    public init(_ v: Vector4f) {
        self.init(v.x, v.y, v.z)
    }
    
    public init(_ v: Vector2f) {
        self.init(v.x, v.y, 0.0)
    }
    
    public init(x: Int, y: Int, z: Int) {
        self.init(x: Float(x), y: Float(y), z: Float(z))
    }
    
    public init(_ x: Int, _ y: Int, _ z: Int) {
        self.init(x: Float(x), y: Float(y), z: Float(z))
    }
}

public extension Vector3f {
    public var isZero: Bool {
        return x == 0.0 && y == 0.0 && z == 0.0
    }
    
    public static let zero = Vector3f()
}

public extension Vector3f {
    public var xy: Vector2f {
        get {
            return Vector2f(x, y)
        }
        set (v) {
            x = v.x
            y = v.y
        }
    }
    
    public var xz: Vector2f {
        get {
            return Vector2f(x, z)
        }
        set (v) {
            x = v.x
            z = v.y
        }
    }
    
    public var yz: Vector2f {
        get {
            return Vector2f(y, z)
        }
        set (v) {
            y = v.x
            z = v.y
        }
    }
}

extension Vector3f: CustomStringConvertible {
    public var description: String {
        return "Vector3f(x: \(x), y: \(y), z: \(z))"
    }
}
