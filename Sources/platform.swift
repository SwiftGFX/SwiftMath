// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

#if !(os(OSX) || os(iOS) || os(tvOS) || os(watchOS))

import Glibc
    
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

#else
    
import Darwin

#endif

@inline(__always)
internal func sincosf(_ a: Angle) -> (sin: Float, cos: Float) {
    var s: Float = 0.0
    var c: Float = 0.0
    __sincospif(a.degrees / 180.0, &s, &c)
    
    return (sin: s, cos: c)
}

@inline(__always)
internal func sinf(_ a: Angle) -> Float {
	return __sinpif(a.degrees / 180.0)
}

@inline(__always)
internal func cosf(_ a: Angle) -> Float {
	return __cospif(a.degrees / 180.0)
}

@inline(__always)
internal func tanf(_ a: Angle) -> Float {
    return __tanpif(a.degrees / 180.0)
}
