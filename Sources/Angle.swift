// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

public struct Angle {
    public let degrees: Float
    
    public var radians: Float {
        return degrees * Float.pi / 180.0
    }

    @inline(__always)
    public init(radians val: Float) {
        degrees = val / Float.pi * 180.0
    }
    
    @inline(__always)
    public init(degrees val: Float) {
        degrees = val
    }
    
    @inline(__always)
    internal init(_ val: Float) {
        degrees = val
    }
    
    // MARK: Constants
    public static let zero  = 0°
    public static let pi_6  = 30°
    public static let pi_4  = 45°
    public static let pi_3  = 60°
    public static let pi_2  = 90°
    public static let pi2_3 = 120°
    public static let pi    = 180°
    public static let pi3_2 = 270°
    public static let pi2   = 360°
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
    public var degrees: Angle {
        return Angle(degrees: Float(self))
    }
}

extension Angle {
    // MARK: - operators
    
    // MARK: multiplication (scaling)
    
    @inline(__always)
    public static func *=(lhs: inout Angle, rhs: Float) {
        lhs = Angle(lhs.degrees * rhs)
    }
    
    @inline(__always)
    public static func *(lhs: Angle, rhs: Float) -> Angle {
        return Angle(lhs.degrees * rhs)
    }
    
    // MARK: division (scaling)
    
    @inline(__always)
    public static func /=(lhs: inout Angle, rhs: Float) {
        lhs = Angle(lhs.degrees / rhs)
    }
    
    @inline(__always)
    public static func /(lhs: Angle, rhs: Float) -> Angle {
        return Angle(lhs.degrees / rhs)
    }
    
    // MARK: addition
    
    @inline(__always)
    public static func +=(lhs: inout Angle, rhs: Angle) {
        lhs = Angle(lhs.degrees + rhs.degrees)
    }
    
    @inline(__always)
    public static func +(lhs: Angle, rhs: Angle) -> Angle {
        return Angle(lhs.degrees + rhs.degrees)
    }
    
    // MARK: subtraction
    
    @inline(__always)
    public static func -=(lhs: inout Angle, rhs: Angle) {
        lhs = Angle(lhs.degrees - rhs.degrees)
    }
    
    @inline(__always)
    public static func -(lhs: Angle, rhs: Angle) -> Angle {
        return Angle(lhs.degrees - rhs.degrees)
    }
}

// MARK: - Equatable

extension Angle: Equatable {
	@inline(__always)
    public static func ==(lhs: Angle, rhs: Angle) -> Bool {
        return
            lhs.degrees == rhs.degrees
    }
}

// MARK: - Comparable

extension Angle: Comparable {
	@inline(__always)
	public static func <(lhs: Angle, rhs: Angle) -> Bool {
		return lhs.degrees < rhs.degrees
	}
	
	@inline(__always)
	public static func <=(lhs: Angle, rhs: Angle) -> Bool {
		return lhs.degrees <= rhs.degrees
	}
	
	@inline(__always)
	public static func >(lhs: Angle, rhs: Angle) -> Bool {
		return lhs.degrees > rhs.degrees
	}
	
	@inline(__always)
	public static func >=(lhs: Angle, rhs: Angle) -> Bool {
		return lhs.degrees >= rhs.degrees
	}
}

// MARK: - Degrees

/// Degree operator, unicode symbol U+00B0 DEGREE SIGN
postfix operator °

/// The degree operator constructs an `Angle` from the specified floating point value in degrees
///
/// - remark: 
/// * Degree operator is the unicode symbol U+00B0 DEGREE SIGN
/// * macOS shortcut is ⌘+⇧+8
@inline(__always)
public postfix func °(lhs: Float) -> Angle {
    return Angle(degrees: lhs)
}

/// Constructs an `Angle` from the specified `Int` value in degrees
@inline(__always)
public postfix func °(lhs: Int) -> Angle {
    return Angle(degrees: Float(lhs))
}

// MARK: - Convenience functions

/// Constructs an `Angle` from the specified floating point value in degrees
@inline(__always)
public func deg(_ a: Float) -> Angle {
    return Angle(degrees: a)
}

/// Constructs an `Angle` from the specified floating point value in radians
@inline(__always)
public func rad(_ a: Float) -> Angle {
    return Angle(radians: a)
}
