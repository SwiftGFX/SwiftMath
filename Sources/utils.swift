//
//  utils.swift
//  org.SwiftGFX.SwiftMath
//
//  Created by Andrey Volodin on 29.09.16.
//
//

public extension UInt {
    
    /** returns the Next Power of Two value.
     
     Examples:
     - If "value" is 15, it will return 16.
     - If "value" is 16, it will return 16.
     - If "value" is 17, it will return 32.
     */
    var nextPOT: UInt {
        var x = self - 1
        x = x | (x >> 1)
        x = x | (x >> 2)
        x = x | (x >> 4)
        x = x | (x >> 8)
        x = x | (x >> 16)
        return x + 1
    }
}
