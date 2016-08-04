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
            vec4(r00, r01, r02, r03),
            vec4(r10, r11, r12, r13),
            vec4(r20, r21, r22, r23),
            vec4(r30, r31, r32, r33)
        )
    }
    
    //MARK: matrix operations
    
    public static func lookAt(eye: Vector3f, at: Vector3f, up: Vector3f = Vector3f(0.0, 1.0, 0.0)) -> Matrix4x4f {
        return lookAtLH(eye: eye, at: at, up: up)
    }
    
    public static func lookAtLH(eye: Vector3f, at: Vector3f, up: Vector3f) -> Matrix4x4f {
        let view = (at - eye).normalized()
        return lookAt(eye: eye, view: view, up: up)
    }
    
    static func lookAt(eye: Vector3f, view: Vector3f, up: Vector3f) -> Matrix4x4f {
        let right = up.cross(view).normalized()
        let u     = view.cross(right)
        
        return Matrix4x4f(
            right[0],        u[0],        view[0],       0.0,
            right[1],        u[1],        view[1],       0.0,
            right[2],        u[2],        view[2],       0.0,
            -right.dot(eye), -u.dot(eye), -view.dot(eye), 1.0
        )
    }
    
    /// Creates a left-handed perspective projection matrix
    public static func proj(fovy: Float, aspect: Float, near: Float, far: Float) -> Matrix4x4f {
        let height = 1.0 / __tanpif(fovy / 180.0 * 0.5)
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
            1.0, 0.0, 0.0, 0.0,
            0.0, 1.0, 0.0, 0.0,
            0.0, 0.0, 1.0, 0.0,
            tx,  ty,  tz,  1.0
        )
    }
    
    public static func rotate(x: Float) -> Matrix4x4f {
        var sx: Float = 0.0, cx: Float = 0.0
        __sincosf(x, &sx, &cx)
        
        var r = Matrix4x4f()
        r[0,0] = 1.0
        r[1,1] = cx
        r[1,2] = -sx
        r[2,1] = sx
        r[2,2] = cx
        r[3,3] = 1.0
        
        return r
    }
    
    public static func rotate(y: Float) -> Matrix4x4f {
        var sy: Float = 0.0, cy: Float = 0.0
        __sincosf(y, &sy, &cy)
        
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
    public static func rotate(z: Float) -> Matrix4x4f {
        var sz: Float = 0.0, cz: Float = 0.0
        __sincosf(z, &sz, &cz)
        
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
    public static func rotate(x: Float, y: Float) -> Matrix4x4f {
        var sx: Float = 0.0, cx: Float = 0.0
        __sincosf(x, &sx, &cx)
        var sy: Float = 0.0, cy: Float = 0.0
        __sincosf(y, &sy, &cy)
        
        return Matrix4x4f(
            vec4(cy,     0.0, sy,     0.0),
            vec4(sx*sy,  cx,  -sx*cy, 0.0),
            vec4(-cx*sy, sx,  cx*cy,  0.0),
            vec4(0.0,    0.0, 0.0,    1.0)
        )
    }
    
    public static func rotate(x: Float, y: Float, z: Float) -> Matrix4x4f {
        var sx: Float = 0.0, cx: Float = 0.0
        __sincosf(x, &sx, &cx)
        var sy: Float = 0.0, cy: Float = 0.0
        __sincosf(y, &sy, &cy)
        var sz: Float = 0.0, cz: Float = 0.0
        __sincosf(z, &sz, &cz)
        
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
    
    public static func rotate(z: Float, y: Float, x: Float) -> Matrix4x4f {
        var sx: Float = 0.0, cx: Float = 0.0
        __sincosf(x, &sx, &cx)
        var sy: Float = 0.0, cy: Float = 0.0
        __sincosf(y, &sy, &cy)
        var sz: Float = 0.0, cz: Float = 0.0
        __sincosf(z, &sz, &cz)
        
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
                                            ax: Float, ay: Float, az: Float,
                                            tx: Float, ty: Float, tz: Float) -> Matrix4x4f {
        var sx: Float = 0.0, cx: Float = 0.0
        __sincosf(ax, &sx, &cx)
        var sy: Float = 0.0, cy: Float = 0.0
        __sincosf(ay, &sy, &cy)
        var sz: Float = 0.0, cz: Float = 0.0
        __sincosf(az, &sz, &cz)
        
        let sxsz = sx*sz
        let cycz = cy*cz
        
        return Matrix4x4f(
            _sx * (cycz - sxsz*sy),   _sx * -cx*sz, _sx * (cz*sy + cy*sxsz), 0.0,
            _sy * (cz*sx*sy + cy*sz), _sy * cx*cz,  _sy * (sy*sz - cycz*sx), 0.0,
            _sz * -cx*sy,             _sz * sx,     cx*cy,                   0.0,
            tx,                       ty,           tz,                      1.0
        )
    }
}
