//
//  String+Math.swift
//  SwiftMath
//
//  Created by Andrey Volodin on 02.11.16.
//
//

import Foundation
internal extension String {
    internal var floatArray: [Float] {
        let ignoredCharacters = CharacterSet(charactersIn: "{} ,")
        let components = self.components(separatedBy: ignoredCharacters)
        return components.filter { $0.characters.count > 0 }
                         .map { return Float($0)! }
    }
}

public extension Vector2f {
    // String should be {p.x, p.y}
    public init(_ string: String) {
        let components = string.floatArray
        
        if components.count == 2 {
            self.init(components[0], components[1])
        } else {
            self.init()
        }
    }
}

public extension Rect {
    // String should be {o.x, o.y, s.w, s.h}
    public init(_ string: String) {
        let components = string.floatArray
        
        if components.count == 2 {
            self.init(origin: Point(components[0], components[1]),
                      size:    Size(components[2], components[3]))
        } else {
            self.init()
        }
    }
}
