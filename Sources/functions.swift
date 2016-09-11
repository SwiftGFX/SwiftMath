// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

/// Returns x, such that min ≤ x ≤ max
///
/// - parameter x:   value to be clamped
/// - parameter min: minimum
/// - parameter max: maximum
public func clamp<T:Comparable>(_ x: T, min _min: T, max _max: T) -> T {
    return min(max(x, _min), _max)
}

/// Returns x, where 0.0 ≤ x ≤ 1.0
public func saturate<T:BinaryFloatingPoint>(_ x: T) -> T {
    return clamp(x, min: 0.0, max: 1.0)
}

/// Performs a linear interpolation between a and b by the interpolant t
///
/// - parameter a: start value
/// - parameter b: end value
/// - parameter t: interpolant
///
/// - returns: a value interpolated from a to b
public func interpolate<T:BinaryFloatingPoint>(a: T, b: T, t: T) -> T {
    return a + (b - a) * t
}
