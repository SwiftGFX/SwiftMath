// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

public typealias vec2 = Vector2f

public extension Vector2f {
    //MARK: - initializers
    
    init(_ v: Vector4f) {
        self.init(v.x, v.y)
    }
    
    init(_ v: Vector3f) {
        self.init(v.x, v.y)
    }
    
    init(x: Int, y: Int) {
        self.init(x: Float(x), y: Float(y))
    }
    
    init(_ x: Int, _ y: Int) {
        self.init(x: Float(x), y: Float(y))
    }
}

public extension Vector2f {
    
    static let zero = Vector2f()
    
    var isZero: Bool {
        x == 0.0 && y == 0.0
    }
    
    var perpendicular: Vector2f {
        .init(-y, x)
    }
}

extension Vector2f: CustomStringConvertible {
    public var description: String {
        return "Vector2f(x: \(x), y: \(y))"
    }
}

