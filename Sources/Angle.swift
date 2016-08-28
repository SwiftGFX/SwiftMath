// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

public struct Angle<T: BinaryFloatingPoint> {
    public let degrees: T
    
    public var radians: T {
        return degrees * T.pi / 180.0
    }

    @inline(__always)
    public init(radians val: T) {
        degrees = val / T.pi * 180.0
    }
    
    @inline(__always)
    public init(degrees val: T) {
        degrees = val
    }
    
    @inline(__always)
    internal init(_ val: T) {
        degrees = val
    }
}

extension Angle: CustomStringConvertible, CustomDebugStringConvertible, CustomPlaygroundQuickLookable {
    public var description: String {
        return "\(degrees)°"
    }
    
    public var debugDescription: String {
        return "\(degrees)°"
    }
    
    public var customPlaygroundQuickLook: PlaygroundQuickLook {
        return .text(description)
    }
}

extension Int {
    /// Return the integer value as an angle in degrees
    public var degrees: Angle<Float> {
        return Angle(degrees: Float(self))
    }
}

extension Angle {
    // MARK: - operators
    
    // MARK: multiplication (scaling)
    
    @inline(__always)
    public static func *=(lhs: inout Angle<T>, rhs: T) {
        lhs = Angle(lhs.degrees * rhs)
    }
    
    @inline(__always)
    public static func *(lhs: Angle<T>, rhs: T) -> Angle<T> {
        return Angle(lhs.degrees * rhs)
    }
    
    // MARK: division (scaling)
    
    @inline(__always)
    public static func /=(lhs: inout Angle<T>, rhs: T) {
        lhs = Angle(lhs.degrees / rhs)
    }
    
    @inline(__always)
    public static func /(lhs: Angle<T>, rhs: T) -> Angle<T> {
        return Angle(lhs.degrees / rhs)
    }
    
    // MARK: addition
    
    @inline(__always)
    public static func +=(lhs: inout Angle<T>, rhs: Angle<T>) {
        lhs = Angle(lhs.degrees + rhs.degrees)
    }
    
    @inline(__always)
    public static func +(lhs: Angle<T>, rhs: Angle<T>) -> Angle<T> {
        return Angle(lhs.degrees + rhs.degrees)
    }
    
    // MARK: subtraction
    
    @inline(__always)
    public static func -=(lhs: inout Angle<T>, rhs: Angle<T>) {
        lhs = Angle(lhs.degrees - rhs.degrees)
    }
    
    @inline(__always)
    public static func -(lhs: Angle<T>, rhs: Angle<T>) -> Angle<T> {
        return Angle(lhs.degrees - rhs.degrees)
    }
}

/// Degree operator, unicode symbol U+00B0 DEGREE SIGN
postfix operator ° {}

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
