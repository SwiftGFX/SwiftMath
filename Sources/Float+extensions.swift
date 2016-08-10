// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

public extension Float {
    
    /// convert the float value from degrees to radians
    public var radians: Float {
        return self * Float.pi/180.0
    }
    
    /// convert the float value from radians to degrees
    public var degrees: Float {
        return self * 180.0 / Float.pi
    }
}
