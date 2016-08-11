// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

public typealias radf = Radians<Float>
public typealias degf = Degrees<Float>

public struct Radians<T: BinaryFloatingPoint> {
    public let value: T
    
    public var degrees: T {
        return value * 180.0 / T.pi
    }
    
    public init(_ rad: T) {
        self.value = rad
    }
    
    public init(_ deg: Degrees<T>) {
        self.value = deg.radians
    }
}

public struct Degrees<T: BinaryFloatingPoint> {
    public let value: T
    
    public var radians: T {
        return value * T.pi / 180.0
    }
    
    public init(_ deg: T) {
        self.value = deg
    }
    
    public init(_ rad: Radians<T>) {
        self.value = rad.degrees
    }
}


