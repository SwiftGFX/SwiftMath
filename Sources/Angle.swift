// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

/// A floating point value that represents an angle
public struct Angle {
	
    /// The value of the angle in degrees
    public let degrees: Float
	
    /// The value of the angle in radians
    public var radians: Float {
        return degrees * Float.pi / 180.0
    }

	/// Creates an instance using the value in radians
    public init(radians val: Float) {
        degrees = val / Float.pi * 180.0
    }
	
	/// Creates an instance using the value in degrees
    public init(degrees val: Float) {
        degrees = val
    }
    
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
    /// Returns the integer value as an angle in degrees
    public var degrees: Angle {
        return Angle(degrees: Float(self))
    }
}

extension Angle {
    // MARK: - operators
    
    // MARK: multiplication (scaling)
  
    public static func *=(lhs: inout Angle, rhs: Float) {
        lhs = Angle(lhs.degrees * rhs)
    }
    
    public static func *(lhs: Angle, rhs: Float) -> Angle {
        return Angle(lhs.degrees * rhs)
    }
    
    public static func *(lhs: Float, rhs: Angle) -> Angle {
        return Angle(rhs.degrees * lhs)
    }
    
    // MARK: division (scaling)
    
    public static func /=(lhs: inout Angle, rhs: Float) {
        lhs = Angle(lhs.degrees / rhs)
    }
    
    public static func /(lhs: Angle, rhs: Float) -> Angle {
        return Angle(lhs.degrees / rhs)
    }
    
    // MARK: addition
  
    public static func +=(lhs: inout Angle, rhs: Angle) {
        lhs = Angle(lhs.degrees + rhs.degrees)
    }
    
    public static func +(lhs: Angle, rhs: Angle) -> Angle {
        return Angle(lhs.degrees + rhs.degrees)
    }
    
    // MARK: subtraction
    
    public static func -=(lhs: inout Angle, rhs: Angle) {
        lhs = Angle(lhs.degrees - rhs.degrees)
    }
  
    public static func -(lhs: Angle, rhs: Angle) -> Angle {
        return Angle(lhs.degrees - rhs.degrees)
    }
    
    // MARK: Modulus
    
    public static func %(lhs: Angle, rhs: Angle) -> Angle {
        return Angle(lhs.degrees.truncatingRemainder(dividingBy: rhs.degrees))
    }
    
    // MARK: Unary
    
    public static prefix func -(lhs: Angle) -> Angle {
        return Angle(-lhs.degrees)
    }
}

// MARK: - Equatable

extension Angle: Equatable {
    public static func ==(lhs: Angle, rhs: Angle) -> Bool {
        return lhs.degrees == rhs.degrees
    }
}

// MARK: - Comparable

extension Angle: Comparable {
	public static func <(lhs: Angle, rhs: Angle) -> Bool {
		return lhs.degrees < rhs.degrees
	}
	
	public static func <=(lhs: Angle, rhs: Angle) -> Bool {
		return lhs.degrees <= rhs.degrees
	}
	
	public static func >(lhs: Angle, rhs: Angle) -> Bool {
		return lhs.degrees > rhs.degrees
	}
	
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
public postfix func °(lhs: Float) -> Angle {
    return Angle(degrees: lhs)
}

/// Constructs an `Angle` from the specified `Int` value in degrees
public postfix func °(lhs: Int) -> Angle {
    return Angle(degrees: Float(lhs))
}

// MARK: - Convenience functions

/// Constructs an `Angle` from the specified floating point value in degrees
public func deg(_ a: Float) -> Angle {
    return Angle(degrees: a)
}

/// Constructs an `Angle` from the specified floating point value in radians
public func rad(_ a: Float) -> Angle {
    return Angle(radians: a)
}
