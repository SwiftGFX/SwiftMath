// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

public typealias vec3 = Vector3f

public extension Vector3f {
    // MARK: - initializers

    init(_ v: Vector4f) {
        self.init(v.x, v.y, v.z)
    }

    init(x: Int, y: Int, z: Int) {
        self.init(x: Float(x), y: Float(y), z: Float(z))
    }

    init(_ x: Int, _ y: Int, _ z: Int) {
        self.init(x: Float(x), y: Float(y), z: Float(z))
    }

    init(_ v: Vector2f, _ z: Float = 0.0) {
        self.init(v.x, v.y, z)
    }

    init(_ v: Vector2f, _ z: Int) {
        self.init(v.x, v.y, Float(z))
    }

    init(_ x: Float, _ v: Vector2f) {
        self.init(x, v.x, v.y)
    }

    init(_ x: Int, _ v: Vector2f) {
        self.init(Float(x), v.x, v.y)
    }
}

public extension Vector3f {
    var isZero: Bool {
        return x == 0.0 && y == 0.0 && z == 0.0
    }

    static let zero = Vector3f()
}

extension Vector3f: CustomStringConvertible {
    public var description: String {
        return "Vector3f(x: \(x), y: \(y), z: \(z))"
    }
}
