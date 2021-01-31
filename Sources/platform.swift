// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

#if (os(Linux) || os(Android) || os(Windows))

#if os(Linux) || os(Android)
import Glibc
#elseif os(Windows)

import ucrt

@inline(__always)
internal func sin(_ a: Float) -> Float {
    return ucrt.sinf(a)
}

@inline(__always)
internal func sin(_ a: Double) -> Double {
    return ucrt.sin(a)
}

@inline(__always)
internal func cos(_ a: Float) -> Float {
    return ucrt.cosf(a)
}

@inline(__always)
internal func cos(_ a: Double) -> Double {
    return ucrt.cos(a)
}

@inline(__always)
internal func tan(_ a: Float) -> Float {
    return ucrt.tanf(a)
}

@inline(__always)
internal func tan(_ a: Double) -> Double {
    return ucrt.tan(a)
}

@inline(__always)
internal func sqrtf(_ a: Float) -> Float {
    return ucrt.sqrtf(a)
}

@inline(__always)
internal func sqrt(_ a: Float) -> Float {
    return ucrt.sqrtf(a)
}

@inline(__always)
internal func sqrt(_ a: Double) -> Double {
    return ucrt.sqrt(a)
}

@inline(__always)
internal func powf(_ a: Float, _ b: Float) -> Float {
    return ucrt.powf(a, b)
}

#endif
    
@inline(__always)
internal func __sincospif(_ a: Float, _ sina: inout Float, _ cosa: inout Float) {
    sina = sin(a * Float.pi)
    cosa = cos(a * Float.pi)
}
	
@inline(__always)
internal func __sinpif(_ a: Float) -> Float {
	return sin(a * Float.pi)
}


@inline(__always)
internal func __cospif(_ a: Float) -> Float {
	return cos(a * Float.pi)
}

@inline(__always)
internal func __tanpif(_ a: Float) -> Float {
    return tan(a * Float.pi)
}

#elseif (os(OSX) || os(iOS) || os(tvOS) || os(watchOS))
    
import Darwin

#endif

public func sincos(_ a: Angle, _ sina: inout Float, _ cosa: inout Float)  {
    __sincospif(a.degrees / 180.0, &sina, &cosa)
}

public func sincos(_ a: Angle) -> (sin: Float, cos: Float) {
    var s: Float = 0.0
    var c: Float = 0.0
    sincos(a, &s, &c)
    
    return (sin: s, cos: c)
}

public func sin(_ a: Angle) -> Float {
	return __sinpif(a.degrees / 180.0)
}

public func cos(_ a: Angle) -> Float {
	return __cospif(a.degrees / 180.0)
}

public func tan(_ a: Angle) -> Float {
    return __tanpif(a.degrees / 180.0)
}
