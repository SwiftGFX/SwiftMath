// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

#if !(os(OSX) || os(iOS) || os(tvOS) || os(watchOS))

@inline(__always)
internal func __sincosf(_ a: Float, _ sina: inout Float, cosa: inout Float) {
    sina = sin(a)
    cosa = cos(a)
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
internal func tanf(_ a: Angle) -> Float {
    return __tanpif(a.degrees / 180.0)
}
