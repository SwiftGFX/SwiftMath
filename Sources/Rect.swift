//
//  Rect.swift
//  org.SwiftGFX.SwiftMath
//
//  Created by Andrey Volodin on 10.08.16.
//
//

// TODO:  
// - rect union
// - rect intersection
// - offset, scale
public struct Rect {
    public var origin: Point
    // TODO: Gracefully handle negative size case or forbid it
    public var size:   Vector2f
    
    public var minX: Float { return origin.x }
    public var minY: Float { return origin.y }
    public var midX: Float { return origin.x + size.x / 2.0 }
    public var midY: Float { return origin.y + size.y / 2.0 }
    public var maxX: Float { return origin.x + size.x }
    public var maxY: Float { return origin.y + size.y }
    
    public var bottomLeft:  Point { return Point(minX, minY) }
    public var bottomRight: Point { return Point(maxX, maxY) }
    public var topLeft:     Point { return Point(minX, maxY) }
    public var topRight:    Point { return Point(maxX, maxY) }
    
    init(bottomLeft: Point, topRight: Point) {
        origin = bottomLeft
        size = topRight - bottomLeft
    }
    
    init(origin: Point, size: Vector2f) {
        self.origin = origin
        self.size   = size
    }
    
    public static let zero = Rect(origin: Point.zero, size: Vector2f.zero)
}

extension Rect: CustomStringConvertible {
    public var description: String {
        return "Rect(origin: (\(origin.x), \(origin.x)), size: (\(size.x), \(size.y)))"
    }
}

public extension Rect {
    /* Transform `self' by `matrix' and return the result. Since affine transforms do
     not preserve rectangles in general, this function returns the smallest
     rectangle which contains the transformed corner points of `self'. If `matrix'
     consists solely of scales, flips and translations, then the returned
     rectangle coincides with the rectangle constructed from the four
     transformed corners. */
    public nonmutating func applying(matrix: Matrix4x4f) -> Rect {
        let bl = matrix * bottomLeft
        let br = matrix * bottomRight
        let tl = matrix * topLeft
        let tr = matrix * topRight
        
        // TODO: Add test for simple matrix (without rotation, skew, etc)
        // return (bl, tr) in that case
        var newBL = bl
        var newTR = tr
        
        for v in [bl, br, tl, tr] {
            newBL.x = min(v.x, newBL.x)
            newBL.y = min(v.y, newBL.y)
            
            newTR.x = max(v.x, newTR.x)
            newTR.y = max(v.y, newTR.y)
        }
        
        return Rect(bottomLeft: newBL, topRight: newTR)
    }
}
