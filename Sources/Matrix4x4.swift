// Copyright 2016 Stuart Carnie.
// License: https://github.com/SwiftGFX/SwiftMath#license-bsd-2-clause
//

#if !NOSIMD
    import simd
#endif

public extension Matrix4x4f {
    /// returns the identity matrix
    public static let identity = Matrix4x4f(diagonal: vec4(1.0))
    
    public init(
        _ r00: Float, _ r01: Float, _ r02: Float, _ r03: Float,
        _ r10: Float, _ r11: Float, _ r12: Float, _ r13: Float,
        _ r20: Float, _ r21: Float, _ r22: Float, _ r23: Float,
        _ r30: Float, _ r31: Float, _ r32: Float, _ r33: Float) {
        self.init(
            vec4(r00, r10, r20, r30),
            vec4(r01, r11, r21, r31),
            vec4(r02, r12, r22, r32),
            vec4(r03, r13, r23, r33)
        )
    }
    
    //MARK: matrix operations
    
    public static func lookAt(eye: Vector3f, at: Vector3f, up: Vector3f = Vector3f(0.0, 1.0, 0.0)) -> Matrix4x4f {
        return lookAtLH(eye: eye, at: at, up: up)
    }
    
    public static func lookAtLH(eye: Vector3f, at: Vector3f, up: Vector3f) -> Matrix4x4f {
        let view = (at - eye).normalized
        return lookAt(eye: eye, view: view, up: up)
    }
    
    static func lookAt(eye: Vector3f, view: Vector3f, up: Vector3f) -> Matrix4x4f {
        let right = up.cross(view).normalized
        let u     = view.cross(right)
        
        return Matrix4x4f(
            vec4(right[0],        u[0],        view[0],        0.0),
            vec4(right[1],        u[1],        view[1],        0.0),
            vec4(right[2],        u[2],        view[2],        0.0),
            vec4(-right.dot(eye), -u.dot(eye), -view.dot(eye), 1.0)
        )
    }
    
    /// Creates a left-handed perspective projection matrix
    public static func proj(fovy: Angle, aspect: Float, near: Float, far: Float) -> Matrix4x4f {
        let height = 1.0 / tanf(fovy * 0.5)
        let width  = height * 1.0/aspect;
        return projLH(x: 0, y: 0, w: width, h: height, near: near, far: far)
    }
    
    /// Creates a left-handed perspective projection matrix
    public static func projLH(x: Float, y: Float, w: Float, h: Float, near: Float, far: Float) -> Matrix4x4f {
        let diff = far - near
        let aa   = far / diff
        let bb   = near * aa
        
        var r = Matrix4x4f()
        r[0,0] = w
        r[1,1] = h
        r[2,0] = -x
        r[2,1] = -y
        r[2,2] = aa
        r[2,3] = 1.0
        r[3,2] = -bb
        
        return r
    }
    
    /// Creates a right-handed perspective projection matrix
    public static func projRH(x: Float, y: Float, w: Float, h: Float, near: Float, far: Float) -> Matrix4x4f {
        let diff = far - near
        let aa   = far / diff
        let bb   = near * aa
        
        var r = Matrix4x4f()
        r[0,0] = w
        r[1,1] = h
        r[2,0] = x
        r[2,1] = y
        r[2,2] = -aa
        r[2,3] = -1.0
        r[3,2] = -bb
        
        return r
    }
    
    /// Creates a left-handed orthographic projection matrix
    public static func ortho(left: Float, right: Float, bottom: Float, top: Float, near: Float, far: Float) -> Matrix4x4f {
        return orthoLH(left: left, right: right, bottom: bottom, top: top, near: near, far: far)
    }
    
    /// Creates a left-handed orthographic projection matrix
    public static func orthoLH(left: Float, right: Float, bottom: Float, top: Float, near: Float, far: Float, offset: Float = 0.0) -> Matrix4x4f {
        let aa = 2.0 / (right - left)
        let bb = 2.0 / (top - bottom)
        let cc = 1.0 / (far - near)
        let dd = (left + right) / (left - right)
        let ee = (top + bottom) / (bottom - top)
        let ff = near / (near - far)
        
        var r = Matrix4x4f()
        r[0,0] = aa
        r[1,1] = bb
        r[2,2] = cc
        r[3,0] = dd + offset
        r[3,1] = ee
        r[3,2] = ff
        r[3,3] = 1.0
        
        return r
    }
    
    /// Creates a right-handed orthographic projection matrix
    public static func orthoRH(left: Float, right: Float, bottom: Float, top: Float, near: Float, far: Float, offset: Float = 0.0) -> Matrix4x4f {
        let aa = 2.0 / (right - left)
        let bb = 2.0 / (top - bottom)
        let cc = 1.0 / (far - near)
        let dd = (left + right) / (left - right)
        let ee = (top + bottom) / (bottom - top)
        let ff = near / (near - far)
        
        var r = Matrix4x4f()
        r[0,0] = aa
        r[1,1] = bb
        r[2,2] = -cc
        r[3,0] = dd + offset
        r[3,1] = ee
        r[3,2] = ff
        r[3,3] = 1.0
        
        return r
    }
    
    
    //MARK: subscript operations
    
    public subscript(col: Int) -> Vector4f {
        get {
            return unsafeBitCast(d[col], to: Vector4f.self)
        }
        
        set {
            d[col] = newValue.d
        }
    }
    
    public subscript(col: Int, row: Int) -> Float {
        get {
            return d[col, row]
        }
        
        set {
            d[col, row] = newValue
        }
    }
    
    //MARK: matrix operations
    
    public static func scale(sx: Float, sy: Float, sz: Float) -> Matrix4x4f {
        return Matrix4x4f(diagonal: vec4(sx, sy, sz, 1.0))
    }
    
    public static func translate(tx: Float, ty: Float, tz: Float) -> Matrix4x4f {
        return Matrix4x4f(
            vec4(1.0, 0.0, 0.0, 0.0),
            vec4(0.0, 1.0, 0.0, 0.0),
            vec4(0.0, 0.0, 1.0, 0.0),
            vec4(tx,  ty,  tz,  1.0)
        )
    }
    
    
    /// Create a matrix with rotates around the x axis
    ///
    /// - parameter x: angle
    ///
    /// - returns: a new rotation matrix
    public static func rotate(x: Angle) -> Matrix4x4f {
        let (sin: sx, cos: cx) = sincosf(x)
        
        var r = Matrix4x4f()
        r[0,0] = 1.0
        r[1,1] = cx
        r[1,2] = -sx
        r[2,1] = sx
        r[2,2] = cx
        r[3,3] = 1.0
        
        return r
    }
    
    public static func rotate(y: Angle) -> Matrix4x4f {
        let (sin: sy, cos: cy) = sincosf(y)
        
        var r = Matrix4x4f()
        r[0,0] = cy
        r[0,2] = sy
        r[1,1] = 1.0
        r[2,0] = -sy
        r[2,2] = cy
        r[3,3] = 1.0
        
        return r
    }
    
    /// rotate returns a rotation matrix around the z plane
    public static func rotate(z: Angle) -> Matrix4x4f {
        let (sin: sz, cos: cz) = sincosf(z)
        
        var r = Matrix4x4f()
        r[0,0] = cz
        r[0,1] = -sz
        r[1,0] = sz
        r[1,1] = cz
        r[2,2] = 1.0
        r[3,3] = 1.0
        
        return r
    }
    
    /// rotate returns a rotation matrix around the x and y planes
    public static func rotate(x: Angle, y: Angle) -> Matrix4x4f {
        let (sin: sx, cos: cx) = sincosf(x)
        let (sin: sy, cos: cy) = sincosf(y)
        
        return Matrix4x4f(
            vec4(cy,     0.0, sy,     0.0),
            vec4(sx*sy,  cx,  -sx*cy, 0.0),
            vec4(-cx*sy, sx,  cx*cy,  0.0),
            vec4(0.0,    0.0, 0.0,    1.0)
        )
    }
    
    public static func rotate(x: Angle, y: Angle, z: Angle) -> Matrix4x4f {
        let (sin: sx, cos: cx) = sincosf(x)
        let (sin: sy, cos: cy) = sincosf(y)
        let (sin: sz, cos: cz) = sincosf(z)
        
        var r = Matrix4x4f()
        r[0,0] = cy*cz
        r[0,1] = -cy*sz
        r[0,2] = sy
        r[1,0] = cz*sx*sy + cx*sz
        r[1,1] = cx*cz - sx*sy*sz
        r[1,2] = -cy*sx
        r[2,0] = -cx*cz*sy + sx*sz
        r[2,1] = cz*sx + cx*sy*sz
        r[2,2] = cx*cy
        r[3,3] = 1.0
        
        return r
    }
    
    public static func rotate(z: Angle, y: Angle, x: Angle) -> Matrix4x4f {
        let (sin: sx, cos: cx) = sincosf(x)
        let (sin: sy, cos: cy) = sincosf(y)
        let (sin: sz, cos: cz) = sincosf(z)
        
        var r = Matrix4x4f()
        r[0,0] = cy*cz
        r[0,1] = cz*sx*sy-cx*sz
        r[0,2] = cx*cz*sy+sx*sz
        r[1,0] = cy*sz
        r[1,1] = cx*cz + sx*sy*sz
        r[1,2] = -cz*sx + cx*sy*sz
        r[2,0] = -sy
        r[2,1] = cy*sx
        r[2,2] = cx*cy
        r[3,3] = 1.0
        
        return r
    }
    
    /// Creates a matrix which can be used to scale, rotate and translate vectors
    public static func scaleRotateTranslate(sx _sx: Float, sy _sy: Float, sz _sz: Float,
                                            ax: Angle, ay: Angle, az: Angle,
                                            tx: Float, ty: Float, tz: Float) -> Matrix4x4f {
        let (sin: sx, cos: cx) = sincosf(ax)
        let (sin: sy, cos: cy) = sincosf(ay)
        let (sin: sz, cos: cz) = sincosf(az)
        
        let sxsz = sx*sz
        let cycz = cy*cz
        
        return Matrix4x4f(
            vec4(_sx * (cycz - sxsz*sy),   _sx * -cx*sz, _sx * (cz*sy + cy*sxsz), 0.0),
            vec4(_sy * (cz*sx*sy + cy*sz), _sy * cx*cz,  _sy * (sy*sz - cycz*sx), 0.0),
            vec4(_sz * -cx*sy,             _sz * sx,     cx*cy,                   0.0),
            vec4(tx,                       ty,           tz,                      1.0)
        )
    }
}

extension Matrix4x4f: CustomStringConvertible {
    /// Displays the matrix in row-major order
    public var description: String {
        return "Matrix4x4f(\n" +
            "m00: \(d[0,0]), m01: \(d[1,0]), m02: \(d[2,0]), m03: \(d[3,0]),\n" +
            "m10: \(d[0,1]), m11: \(d[1,1]), m12: \(d[2,1]), m13: \(d[3,1]),\n" +
            "m20: \(d[0,2]), m21: \(d[1,2]), m22: \(d[2,2]), m23: \(d[3,2]),\n" +
            "m30: \(d[0,3]), m31: \(d[1,3]), m32: \(d[2,3]), m33: \(d[3,3]),\n" +
        ")"
    }
}
