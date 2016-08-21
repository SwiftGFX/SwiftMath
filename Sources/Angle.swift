// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

public struct Angle<T: BinaryFloatingPoint> {
    public let radians: T
    
    public var degrees: T {
        return radians * 180.0 / T.pi
    }
    
    @inline(__always)
    public init(radians val: T) {
        radians = val
    }
    
    @inline(__always)
    public init(degrees val: T) {
        radians = val * T.pi / 180.0
    }
}

extension Angle: ExpressibleByFloatLiteral {
    
    /// Initializes a new angle from a floating point value specified in radians
    public init(floatLiteral value: FloatLiteralType) {
        radians = T(value)
    }
}

/// Degree operator, unicode symbol U+00B0 DEGREE SIGN
postfix operator °

/// The degree operator constructs an `Angle` from the specified floating point value in degrees
///
/// - remark: 
/// * Degree operator is the unicode symbol U+00B0 DEGREE SIGN
/// * macOS shortcut is ⌘+⇧+8
@inline(__always)
public postfix func °<T: BinaryFloatingPoint>(lhs: T) -> Angle<T> {
    return Angle(degrees: lhs)
}

/// Constructs an `Angle` from the specified `Int` value in degrees
@inline(__always)
public postfix func °(lhs: Int) -> Angle<Float> {
    return Angle(degrees: Float(lhs))
}

/// Constructs an `Angle` from the specified floating point value in degrees
@inline(__always)
public func deg<T: BinaryFloatingPoint>(_ a: T) -> Angle<T> {
    return Angle(degrees: a)
}

/// Constructs an `Angle` from the specified floating point value in radians
@inline(__always)
public func rad<T: BinaryFloatingPoint>(_ a: T) -> Angle<T> {
    return Angle(radians: a)
}
