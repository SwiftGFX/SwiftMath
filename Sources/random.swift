//
//  random.swift
//  org.SwiftGFX.SwiftMath
//
//  Created by Andrey Volodin on 29.09.16.
//
//

// @note copied from SwiftRandom which is MIT Licensed

#if (os(OSX) || os(iOS) || os(tvOS) || os(watchOS))
import Darwin
#else
import Glibc
import SwiftGlibc

internal func arc4random() -> UInt32 {
    return UInt32(random())
}

internal func arc4random_uniform(_ val: UInt32) -> UInt32 {
    return UInt32(random()) % val
}
#endif

// each type has its own random
public extension Bool {
    /// SwiftRandom extension
    static func random() -> Bool {
        return Int.random() % 2 == 0
    }
}

public extension Int {
    /// SwiftRandom extension
    static func random(range: Range<Int>) -> Int {
        return random(range.lowerBound, range.upperBound)
    }

    /// SwiftRandom extension
    static func random(_ lower: Int = 0, _ upper: Int = 100) -> Int {
        return lower + Int(arc4random_uniform(UInt32(upper - lower + 1)))
    }
}

public extension Int32 {
    /// SwiftRandom extension
    static func random(range: Range<Int>) -> Int32 {
        return random(range.lowerBound, range.upperBound)
    }

    /// SwiftRandom extension
    ///
    /// - note: Using `Int` as parameter type as we usually just want to write `Int32.random(13, 37)` and not `Int32.random(Int32(13), Int32(37))`
    static func random(_ lower: Int = 0, _ upper: Int = 100) -> Int32 {
        let r = arc4random_uniform(UInt32(Int64(upper) - Int64(lower)))
        return Int32(Int64(r) + Int64(lower))
    }
}

public extension Double {
    /// SwiftRandom extension
    static func random(_ lower: Double = 0, _ upper: Double = 100) -> Double {
        return (Double(arc4random()) / 0xFFFFFFFF) * (upper - lower) + lower
    }
}

public extension Float {
    /// SwiftRandom extension
    static func random(_ lower: Float = 0, _ upper: Float = 100) -> Float {
        return (Float(arc4random()) / 0xFFFFFF) * (upper - lower) + lower
    }
}

public extension Vector2f {
    /**  Returns a random Vector2f with a length equal to 1.0.
     */
    var randomOnUnitCircle: Vector2f {
        while true {
            let p = p2d(Float.random(-1, 1), Float.random(-1, 1))
            let lsq = p.lengthSquared
            if 0.1 < lsq && lsq < 1.0 {
                return p * Float(1.0 / sqrtf(lsq))
            }
        }
    }

    /**Returns a random Vector2f with a length less than 1.0.
    */
    var randomInUnitCircle: Vector2f {
        while true {
            let p = p2d(Float.random(-1, 1), Float.random(-1, 1))
            let lsq = p.lengthSquared
            if lsq < 1.0 { return p }
        }
    }
}
