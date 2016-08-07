// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

/// converts value from degrees to radians
///
/// - parameter deg: value in degrees
///
/// - returns: value in radians
public func radians<T:BinaryFloatingPoint>(_ deg: T) -> T {
    return deg * T.pi / 180.0
}


/// convert value from radians to degrees
///
/// - parameter rad: value in radians
///
/// - returns: value in degrees
public func degrees<T:BinaryFloatingPoint>(_ rad: T) -> T {
    return rad * 180.0 / T.pi
}


/// clamps x, where min ≤ x ≤ max
///
/// - parameter x:    value to be clamped
/// - parameter min: minimum
/// - parameter max: maximum
///
/// - returns: x
public func clamp<T:Comparable>(_ x: T, min _min: T, max _max: T) -> T {
    return min(max(x, _min), _max)
}

public func saturate<T:BinaryFloatingPoint>(x: T) -> T {
    return clamp(x, min: 0.0, max: 1.0)
}

/// performs a linear interpolation between a and b by the interpolant t
///
/// - parameter a: start value
/// - parameter b: end value
/// - parameter t: interpolant
///
/// - returns: a value interpolated from a to b
public func interpolate<T:BinaryFloatingPoint>(a: T, b: T, t: T) -> T {
    return a + (b - a) * t
}
