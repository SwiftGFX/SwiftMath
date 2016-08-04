// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

#if !(os(OSX) || os(iOS) || os(tvOS) || os(watchOS))
    
func __sincosf(_ a: Float, _ sina: inout Float, cosa: inout Float) {
    sina = sin(a)
    cosa = cos(a)
}

func __tanpif(_ a: Float) -> Float {
    return tan(a * Float.pi)
}
    
#endif
