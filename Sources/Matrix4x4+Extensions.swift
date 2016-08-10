//
//  Matrix4x4+Extensions.swift
//  org.SwiftGFX.SwiftMath
//
//  Created by Andrey Volodin on 10.08.16.
//
//

public extension Matrix4x4f {
    public func translated(by v: Vector3f) -> Matrix4x4f {
        return Matrix4x4f(
            self[0],
            self[1],
            self[2],
            vec4(self[0, 0] * v.x + self[1, 0] * v.y + self[2, 0] * v.z + self[3, 0],
                 self[0, 1] * v.x + self[1, 1] * v.y + self[2, 1] * v.z + self[3, 1],
                 self[0, 2] * v.x + self[1, 2] * v.y + self[2, 2] * v.z + self[3, 2],
                 self[0, 3] * v.x + self[1, 3] * v.y + self[2, 3] * v.z + self[3, 3])
        )
    }
}
