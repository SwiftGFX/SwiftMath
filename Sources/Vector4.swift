// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

public typealias vec4 = Vector4f

public extension Vector4f {
    // MARK: - initializers

    init(_ v: Vector2f, _ z: Float = 0.0, _ w: Float = 1.0) {
        self.init(v.x, v.y, z, w)
    }

    init(_ x: Float, _ v: Vector2f, _ w: Float) {
        self.init(x, v.x, v.y, w)
    }

    init(_ x: Float, _ y: Float, _ v: Vector2f) {
        self.init(x, y, v.x, v.y)
    }

    init(_ v: Vector2f, _ z: Int, _ w: Int) {
        self.init(v.x, v.y, Float(z), Float(w))
    }

    init(_ x: Int, _ v: Vector2f, _ w: Int) {
        self.init(Float(x), v.x, v.y, Float(w))
    }

    init(_ x: Int, _ y: Int, _ v: Vector2f) {
        self.init(Float(x), Float(y), v.x, v.y)
    }

    init(_ v: Vector3f, _ w: Float = 1.0) {
        self.init(v.x, v.y, v.z, w)
    }

    init(_ x: Float, _ v: Vector3f) {
        self.init(x, v.x, v.y, v.z)
    }

    init(_ v: Vector3f, _ w: Int) {
        self.init(v.x, v.y, v.z, Float(w))
    }

    init(_ x: Int, _ v: Vector3f) {
        self.init(Float(x), v.x, v.y, v.z)
    }

    init(x: Int, y: Int, z: Int, w: Int) {
        self.init(x: Float(x), y: Float(y), z: Float(z), w: Float(w))
    }

    init(_ x: Int, _ y: Int, _ z: Int, _ w: Int) {
        self.init(x: Float(x), y: Float(y), z: Float(z), w: Float(w))
    }

}

public extension Vector4f {
    var isZero: Bool {
        return x == 0.0 && y == 0.0 && z == 0.0 && w == 0.0
    }

    static let zero = Vector4f()
}

extension Vector4f: CustomStringConvertible {
    public var description: String {
        return "Vector4f(x: \(x), y: \(y), z: \(z), w: \(w))"
    }
}
