//
//  Vectorf+Components.swift
//  SwiftMath
//
//  Created by Andrey Volodin on 29.11.17.
//

public protocol VectorfXYAccess {
    var x: Float { get set }
    var y: Float { get set }
}

public protocol VectorfXYZAccess: VectorfXYAccess {
    var z: Float { get set }
}

public protocol VectorfXYZWAccess: VectorfXYZAccess {
    var w: Float { get set }
}

extension Vector2f: VectorfXYAccess {}
extension Vector3f: VectorfXYZAccess {}
extension Vector4f: VectorfXYZWAccess {}

// Generated code

public extension VectorfXYAccess {
    
    public var xx: Vector2f {
        return Vector2f(self.x)
    }
    
    public var xy: Vector2f {
        get { return Vector2f(self.x, self.y) }
        set (v) { self.x = v.x; self.y = v.y; }
    }
    
    public var yx: Vector2f {
        get { return Vector2f(self.y, self.x) }
        set (v) { self.y = v.x; self.x = v.y; }
    }
    
    public var yy: Vector2f {
        return Vector2f(self.y)
    }
    
    public var xxx: Vector3f {
        return Vector3f(self.x)
    }
    
    public var xxy: Vector3f {
        return Vector3f(self.x, self.x, self.y)
    }
    
    public var xyx: Vector3f {
        return Vector3f(self.x, self.y, self.x)
    }
    
    public var xyy: Vector3f {
        return Vector3f(self.x, self.y, self.y)
    }
    
    public var yxx: Vector3f {
        return Vector3f(self.y, self.x, self.x)
    }
    
    public var yxy: Vector3f {
        return Vector3f(self.y, self.x, self.y)
    }
    
    public var yyx: Vector3f {
        return Vector3f(self.y, self.y, self.x)
    }
    
    public var yyy: Vector3f {
        return Vector3f(self.y)
    }
    
    public var xxxx: Vector4f {
        return Vector4f(self.x)
    }
    
    public var xxxy: Vector4f {
        return Vector4f(self.x, self.x, self.x, self.y)
    }
    
    public var xxyx: Vector4f {
        return Vector4f(self.x, self.x, self.y, self.x)
    }
    
    public var xxyy: Vector4f {
        return Vector4f(self.x, self.x, self.y, self.y)
    }
    
    public var xyxx: Vector4f {
        return Vector4f(self.x, self.y, self.x, self.x)
    }
    
    public var xyxy: Vector4f {
        return Vector4f(self.x, self.y, self.x, self.y)
    }
    
    public var xyyx: Vector4f {
        return Vector4f(self.x, self.y, self.y, self.x)
    }
    
    public var xyyy: Vector4f {
        return Vector4f(self.x, self.y, self.y, self.y)
    }
    
    public var yxxx: Vector4f {
        return Vector4f(self.y, self.x, self.x, self.x)
    }
    
    public var yxxy: Vector4f {
        return Vector4f(self.y, self.x, self.x, self.y)
    }
    
    public var yxyx: Vector4f {
        return Vector4f(self.y, self.x, self.y, self.x)
    }
    
    public var yxyy: Vector4f {
        return Vector4f(self.y, self.x, self.y, self.y)
    }
    
    public var yyxx: Vector4f {
        return Vector4f(self.y, self.y, self.x, self.x)
    }
    
    public var yyxy: Vector4f {
        return Vector4f(self.y, self.y, self.x, self.y)
    }
    
    public var yyyx: Vector4f {
        return Vector4f(self.y, self.y, self.y, self.x)
    }
    
    public var yyyy: Vector4f {
        return Vector4f(self.y)
    }
    
}

public extension VectorfXYZAccess {
    
    public var xz: Vector2f {
        get { return Vector2f(self.x, self.z) }
        set (v) { self.x = v.x; self.z = v.y; }
    }
    
    public var yz: Vector2f {
        get { return Vector2f(self.y, self.z) }
        set (v) { self.y = v.x; self.z = v.y; }
    }
    
    public var zx: Vector2f {
        get { return Vector2f(self.z, self.x) }
        set (v) { self.z = v.x; self.x = v.y; }
    }
    
    public var zy: Vector2f {
        get { return Vector2f(self.z, self.y) }
        set (v) { self.z = v.x; self.y = v.y; }
    }
    
    public var zz: Vector2f {
        return Vector2f(self.z)
    }
    
    public var xxz: Vector3f {
        return Vector3f(self.x, self.x, self.z)
    }
    
    public var xyz: Vector3f {
        get { return Vector3f(self.x, self.y, self.z) }
        set (v) { self.x = v.x; self.y = v.y; self.z = v.z; }
    }
    
    public var xzx: Vector3f {
        return Vector3f(self.x, self.z, self.x)
    }
    
    public var xzy: Vector3f {
        get { return Vector3f(self.x, self.z, self.y) }
        set (v) { self.x = v.x; self.z = v.y; self.y = v.z; }
    }
    
    public var xzz: Vector3f {
        return Vector3f(self.x, self.z, self.z)
    }
    
    public var yxz: Vector3f {
        get { return Vector3f(self.y, self.x, self.z) }
        set (v) { self.y = v.x; self.x = v.y; self.z = v.z; }
    }
    
    public var yyz: Vector3f {
        return Vector3f(self.y, self.y, self.z)
    }
    
    public var yzx: Vector3f {
        get { return Vector3f(self.y, self.z, self.x) }
        set (v) { self.y = v.x; self.z = v.y; self.x = v.z; }
    }
    
    public var yzy: Vector3f {
        return Vector3f(self.y, self.z, self.y)
    }
    
    public var yzz: Vector3f {
        return Vector3f(self.y, self.z, self.z)
    }
    
    public var zxx: Vector3f {
        return Vector3f(self.z, self.x, self.x)
    }
    
    public var zxy: Vector3f {
        get { return Vector3f(self.z, self.x, self.y) }
        set (v) { self.z = v.x; self.x = v.y; self.y = v.z; }
    }
    
    public var zxz: Vector3f {
        return Vector3f(self.z, self.x, self.z)
    }
    
    public var zyx: Vector3f {
        get { return Vector3f(self.z, self.y, self.x) }
        set (v) { self.z = v.x; self.y = v.y; self.x = v.z; }
    }
    
    public var zyy: Vector3f {
        return Vector3f(self.z, self.y, self.y)
    }
    
    public var zyz: Vector3f {
        return Vector3f(self.z, self.y, self.z)
    }
    
    public var zzx: Vector3f {
        return Vector3f(self.z, self.z, self.x)
    }
    
    public var zzy: Vector3f {
        return Vector3f(self.z, self.z, self.y)
    }
    
    public var zzz: Vector3f {
        return Vector3f(self.z)
    }
    
    public var xxxz: Vector4f {
        return Vector4f(self.x, self.x, self.x, self.z)
    }
    
    public var xxyz: Vector4f {
        return Vector4f(self.x, self.x, self.y, self.z)
    }
    
    public var xxzx: Vector4f {
        return Vector4f(self.x, self.x, self.z, self.x)
    }
    
    public var xxzy: Vector4f {
        return Vector4f(self.x, self.x, self.z, self.y)
    }
    
    public var xxzz: Vector4f {
        return Vector4f(self.x, self.x, self.z, self.z)
    }
    
    public var xyxz: Vector4f {
        return Vector4f(self.x, self.y, self.x, self.z)
    }
    
    public var xyyz: Vector4f {
        return Vector4f(self.x, self.y, self.y, self.z)
    }
    
    public var xyzx: Vector4f {
        return Vector4f(self.x, self.y, self.z, self.x)
    }
    
    public var xyzy: Vector4f {
        return Vector4f(self.x, self.y, self.z, self.y)
    }
    
    public var xyzz: Vector4f {
        return Vector4f(self.x, self.y, self.z, self.z)
    }
    
    public var xzxx: Vector4f {
        return Vector4f(self.x, self.z, self.x, self.x)
    }
    
    public var xzxy: Vector4f {
        return Vector4f(self.x, self.z, self.x, self.y)
    }
    
    public var xzxz: Vector4f {
        return Vector4f(self.x, self.z, self.x, self.z)
    }
    
    public var xzyx: Vector4f {
        return Vector4f(self.x, self.z, self.y, self.x)
    }
    
    public var xzyy: Vector4f {
        return Vector4f(self.x, self.z, self.y, self.y)
    }
    
    public var xzyz: Vector4f {
        return Vector4f(self.x, self.z, self.y, self.z)
    }
    
    public var xzzx: Vector4f {
        return Vector4f(self.x, self.z, self.z, self.x)
    }
    
    public var xzzy: Vector4f {
        return Vector4f(self.x, self.z, self.z, self.y)
    }
    
    public var xzzz: Vector4f {
        return Vector4f(self.x, self.z, self.z, self.z)
    }
    
    public var yxxz: Vector4f {
        return Vector4f(self.y, self.x, self.x, self.z)
    }
    
    public var yxyz: Vector4f {
        return Vector4f(self.y, self.x, self.y, self.z)
    }
    
    public var yxzx: Vector4f {
        return Vector4f(self.y, self.x, self.z, self.x)
    }
    
    public var yxzy: Vector4f {
        return Vector4f(self.y, self.x, self.z, self.y)
    }
    
    public var yxzz: Vector4f {
        return Vector4f(self.y, self.x, self.z, self.z)
    }
    
    public var yyxz: Vector4f {
        return Vector4f(self.y, self.y, self.x, self.z)
    }
    
    public var yyyz: Vector4f {
        return Vector4f(self.y, self.y, self.y, self.z)
    }
    
    public var yyzx: Vector4f {
        return Vector4f(self.y, self.y, self.z, self.x)
    }
    
    public var yyzy: Vector4f {
        return Vector4f(self.y, self.y, self.z, self.y)
    }
    
    public var yyzz: Vector4f {
        return Vector4f(self.y, self.y, self.z, self.z)
    }
    
    public var yzxx: Vector4f {
        return Vector4f(self.y, self.z, self.x, self.x)
    }
    
    public var yzxy: Vector4f {
        return Vector4f(self.y, self.z, self.x, self.y)
    }
    
    public var yzxz: Vector4f {
        return Vector4f(self.y, self.z, self.x, self.z)
    }
    
    public var yzyx: Vector4f {
        return Vector4f(self.y, self.z, self.y, self.x)
    }
    
    public var yzyy: Vector4f {
        return Vector4f(self.y, self.z, self.y, self.y)
    }
    
    public var yzyz: Vector4f {
        return Vector4f(self.y, self.z, self.y, self.z)
    }
    
    public var yzzx: Vector4f {
        return Vector4f(self.y, self.z, self.z, self.x)
    }
    
    public var yzzy: Vector4f {
        return Vector4f(self.y, self.z, self.z, self.y)
    }
    
    public var yzzz: Vector4f {
        return Vector4f(self.y, self.z, self.z, self.z)
    }
    
    public var zxxx: Vector4f {
        return Vector4f(self.z, self.x, self.x, self.x)
    }
    
    public var zxxy: Vector4f {
        return Vector4f(self.z, self.x, self.x, self.y)
    }
    
    public var zxxz: Vector4f {
        return Vector4f(self.z, self.x, self.x, self.z)
    }
    
    public var zxyx: Vector4f {
        return Vector4f(self.z, self.x, self.y, self.x)
    }
    
    public var zxyy: Vector4f {
        return Vector4f(self.z, self.x, self.y, self.y)
    }
    
    public var zxyz: Vector4f {
        return Vector4f(self.z, self.x, self.y, self.z)
    }
    
    public var zxzx: Vector4f {
        return Vector4f(self.z, self.x, self.z, self.x)
    }
    
    public var zxzy: Vector4f {
        return Vector4f(self.z, self.x, self.z, self.y)
    }
    
    public var zxzz: Vector4f {
        return Vector4f(self.z, self.x, self.z, self.z)
    }
    
    public var zyxx: Vector4f {
        return Vector4f(self.z, self.y, self.x, self.x)
    }
    
    public var zyxy: Vector4f {
        return Vector4f(self.z, self.y, self.x, self.y)
    }
    
    public var zyxz: Vector4f {
        return Vector4f(self.z, self.y, self.x, self.z)
    }
    
    public var zyyx: Vector4f {
        return Vector4f(self.z, self.y, self.y, self.x)
    }
    
    public var zyyy: Vector4f {
        return Vector4f(self.z, self.y, self.y, self.y)
    }
    
    public var zyyz: Vector4f {
        return Vector4f(self.z, self.y, self.y, self.z)
    }
    
    public var zyzx: Vector4f {
        return Vector4f(self.z, self.y, self.z, self.x)
    }
    
    public var zyzy: Vector4f {
        return Vector4f(self.z, self.y, self.z, self.y)
    }
    
    public var zyzz: Vector4f {
        return Vector4f(self.z, self.y, self.z, self.z)
    }
    
    public var zzxx: Vector4f {
        return Vector4f(self.z, self.z, self.x, self.x)
    }
    
    public var zzxy: Vector4f {
        return Vector4f(self.z, self.z, self.x, self.y)
    }
    
    public var zzxz: Vector4f {
        return Vector4f(self.z, self.z, self.x, self.z)
    }
    
    public var zzyx: Vector4f {
        return Vector4f(self.z, self.z, self.y, self.x)
    }
    
    public var zzyy: Vector4f {
        return Vector4f(self.z, self.z, self.y, self.y)
    }
    
    public var zzyz: Vector4f {
        return Vector4f(self.z, self.z, self.y, self.z)
    }
    
    public var zzzx: Vector4f {
        return Vector4f(self.z, self.z, self.z, self.x)
    }
    
    public var zzzy: Vector4f {
        return Vector4f(self.z, self.z, self.z, self.y)
    }
    
    public var zzzz: Vector4f {
        return Vector4f(self.z)
    }
    
}

public extension VectorfXYZWAccess {
    
    public var xw: Vector2f {
        get { return Vector2f(self.x, self.w) }
        set (v) { self.x = v.x; self.w = v.y; }
    }
    
    public var yw: Vector2f {
        get { return Vector2f(self.y, self.w) }
        set (v) { self.y = v.x; self.w = v.y; }
    }
    
    public var zw: Vector2f {
        get { return Vector2f(self.z, self.w) }
        set (v) { self.z = v.x; self.w = v.y; }
    }
    
    public var wx: Vector2f {
        get { return Vector2f(self.w, self.x) }
        set (v) { self.w = v.x; self.x = v.y; }
    }
    
    public var wy: Vector2f {
        get { return Vector2f(self.w, self.y) }
        set (v) { self.w = v.x; self.y = v.y; }
    }
    
    public var wz: Vector2f {
        get { return Vector2f(self.w, self.z) }
        set (v) { self.w = v.x; self.z = v.y; }
    }
    
    public var ww: Vector2f {
        return Vector2f(self.w)
    }
    
    public var xxw: Vector3f {
        return Vector3f(self.x, self.x, self.w)
    }
    
    public var xyw: Vector3f {
        get { return Vector3f(self.x, self.y, self.w) }
        set (v) { self.x = v.x; self.y = v.y; self.w = v.z; }
    }
    
    public var xzw: Vector3f {
        get { return Vector3f(self.x, self.z, self.w) }
        set (v) { self.x = v.x; self.z = v.y; self.w = v.z; }
    }
    
    public var xwx: Vector3f {
        return Vector3f(self.x, self.w, self.x)
    }
    
    public var xwy: Vector3f {
        get { return Vector3f(self.x, self.w, self.y) }
        set (v) { self.x = v.x; self.w = v.y; self.y = v.z; }
    }
    
    public var xwz: Vector3f {
        get { return Vector3f(self.x, self.w, self.z) }
        set (v) { self.x = v.x; self.w = v.y; self.z = v.z; }
    }
    
    public var xww: Vector3f {
        return Vector3f(self.x, self.w, self.w)
    }
    
    public var yxw: Vector3f {
        get { return Vector3f(self.y, self.x, self.w) }
        set (v) { self.y = v.x; self.x = v.y; self.w = v.z; }
    }
    
    public var yyw: Vector3f {
        return Vector3f(self.y, self.y, self.w)
    }
    
    public var yzw: Vector3f {
        get { return Vector3f(self.y, self.z, self.w) }
        set (v) { self.y = v.x; self.z = v.y; self.w = v.z; }
    }
    
    public var ywx: Vector3f {
        get { return Vector3f(self.y, self.w, self.x) }
        set (v) { self.y = v.x; self.w = v.y; self.x = v.z; }
    }
    
    public var ywy: Vector3f {
        return Vector3f(self.y, self.w, self.y)
    }
    
    public var ywz: Vector3f {
        get { return Vector3f(self.y, self.w, self.z) }
        set (v) { self.y = v.x; self.w = v.y; self.z = v.z; }
    }
    
    public var yww: Vector3f {
        return Vector3f(self.y, self.w, self.w)
    }
    
    public var zxw: Vector3f {
        get { return Vector3f(self.z, self.x, self.w) }
        set (v) { self.z = v.x; self.x = v.y; self.w = v.z; }
    }
    
    public var zyw: Vector3f {
        get { return Vector3f(self.z, self.y, self.w) }
        set (v) { self.z = v.x; self.y = v.y; self.w = v.z; }
    }
    
    public var zzw: Vector3f {
        return Vector3f(self.z, self.z, self.w)
    }
    
    public var zwx: Vector3f {
        get { return Vector3f(self.z, self.w, self.x) }
        set (v) { self.z = v.x; self.w = v.y; self.x = v.z; }
    }
    
    public var zwy: Vector3f {
        get { return Vector3f(self.z, self.w, self.y) }
        set (v) { self.z = v.x; self.w = v.y; self.y = v.z; }
    }
    
    public var zwz: Vector3f {
        return Vector3f(self.z, self.w, self.z)
    }
    
    public var zww: Vector3f {
        return Vector3f(self.z, self.w, self.w)
    }
    
    public var wxx: Vector3f {
        return Vector3f(self.w, self.x, self.x)
    }
    
    public var wxy: Vector3f {
        get { return Vector3f(self.w, self.x, self.y) }
        set (v) { self.w = v.x; self.x = v.y; self.y = v.z; }
    }
    
    public var wxz: Vector3f {
        get { return Vector3f(self.w, self.x, self.z) }
        set (v) { self.w = v.x; self.x = v.y; self.z = v.z; }
    }
    
    public var wxw: Vector3f {
        return Vector3f(self.w, self.x, self.w)
    }
    
    public var wyx: Vector3f {
        get { return Vector3f(self.w, self.y, self.x) }
        set (v) { self.w = v.x; self.y = v.y; self.x = v.z; }
    }
    
    public var wyy: Vector3f {
        return Vector3f(self.w, self.y, self.y)
    }
    
    public var wyz: Vector3f {
        get { return Vector3f(self.w, self.y, self.z) }
        set (v) { self.w = v.x; self.y = v.y; self.z = v.z; }
    }
    
    public var wyw: Vector3f {
        return Vector3f(self.w, self.y, self.w)
    }
    
    public var wzx: Vector3f {
        get { return Vector3f(self.w, self.z, self.x) }
        set (v) { self.w = v.x; self.z = v.y; self.x = v.z; }
    }
    
    public var wzy: Vector3f {
        get { return Vector3f(self.w, self.z, self.y) }
        set (v) { self.w = v.x; self.z = v.y; self.y = v.z; }
    }
    
    public var wzz: Vector3f {
        return Vector3f(self.w, self.z, self.z)
    }
    
    public var wzw: Vector3f {
        return Vector3f(self.w, self.z, self.w)
    }
    
    public var wwx: Vector3f {
        return Vector3f(self.w, self.w, self.x)
    }
    
    public var wwy: Vector3f {
        return Vector3f(self.w, self.w, self.y)
    }
    
    public var wwz: Vector3f {
        return Vector3f(self.w, self.w, self.z)
    }
    
    public var www: Vector3f {
        return Vector3f(self.w)
    }
    
    public var xxxw: Vector4f {
        return Vector4f(self.x, self.x, self.x, self.w)
    }
    
    public var xxyw: Vector4f {
        return Vector4f(self.x, self.x, self.y, self.w)
    }
    
    public var xxzw: Vector4f {
        return Vector4f(self.x, self.x, self.z, self.w)
    }
    
    public var xxwx: Vector4f {
        return Vector4f(self.x, self.x, self.w, self.x)
    }
    
    public var xxwy: Vector4f {
        return Vector4f(self.x, self.x, self.w, self.y)
    }
    
    public var xxwz: Vector4f {
        return Vector4f(self.x, self.x, self.w, self.z)
    }
    
    public var xxww: Vector4f {
        return Vector4f(self.x, self.x, self.w, self.w)
    }
    
    public var xyxw: Vector4f {
        return Vector4f(self.x, self.y, self.x, self.w)
    }
    
    public var xyyw: Vector4f {
        return Vector4f(self.x, self.y, self.y, self.w)
    }
    
    public var xyzw: Vector4f {
        get { return Vector4f(self.x, self.y, self.z, self.w) }
        set (v) { self.x = v.x; self.y = v.y; self.z = v.z; self.w = v.w; }
    }
    
    public var xywx: Vector4f {
        return Vector4f(self.x, self.y, self.w, self.x)
    }
    
    public var xywy: Vector4f {
        return Vector4f(self.x, self.y, self.w, self.y)
    }
    
    public var xywz: Vector4f {
        get { return Vector4f(self.x, self.y, self.w, self.z) }
        set (v) { self.x = v.x; self.y = v.y; self.w = v.z; self.z = v.w; }
    }
    
    public var xyww: Vector4f {
        return Vector4f(self.x, self.y, self.w, self.w)
    }
    
    public var xzxw: Vector4f {
        return Vector4f(self.x, self.z, self.x, self.w)
    }
    
    public var xzyw: Vector4f {
        get { return Vector4f(self.x, self.z, self.y, self.w) }
        set (v) { self.x = v.x; self.z = v.y; self.y = v.z; self.w = v.w; }
    }
    
    public var xzzw: Vector4f {
        return Vector4f(self.x, self.z, self.z, self.w)
    }
    
    public var xzwx: Vector4f {
        return Vector4f(self.x, self.z, self.w, self.x)
    }
    
    public var xzwy: Vector4f {
        get { return Vector4f(self.x, self.z, self.w, self.y) }
        set (v) { self.x = v.x; self.z = v.y; self.w = v.z; self.y = v.w; }
    }
    
    public var xzwz: Vector4f {
        return Vector4f(self.x, self.z, self.w, self.z)
    }
    
    public var xzww: Vector4f {
        return Vector4f(self.x, self.z, self.w, self.w)
    }
    
    public var xwxx: Vector4f {
        return Vector4f(self.x, self.w, self.x, self.x)
    }
    
    public var xwxy: Vector4f {
        return Vector4f(self.x, self.w, self.x, self.y)
    }
    
    public var xwxz: Vector4f {
        return Vector4f(self.x, self.w, self.x, self.z)
    }
    
    public var xwxw: Vector4f {
        return Vector4f(self.x, self.w, self.x, self.w)
    }
    
    public var xwyx: Vector4f {
        return Vector4f(self.x, self.w, self.y, self.x)
    }
    
    public var xwyy: Vector4f {
        return Vector4f(self.x, self.w, self.y, self.y)
    }
    
    public var xwyz: Vector4f {
        get { return Vector4f(self.x, self.w, self.y, self.z) }
        set (v) { self.x = v.x; self.w = v.y; self.y = v.z; self.z = v.w; }
    }
    
    public var xwyw: Vector4f {
        return Vector4f(self.x, self.w, self.y, self.w)
    }
    
    public var xwzx: Vector4f {
        return Vector4f(self.x, self.w, self.z, self.x)
    }
    
    public var xwzy: Vector4f {
        get { return Vector4f(self.x, self.w, self.z, self.y) }
        set (v) { self.x = v.x; self.w = v.y; self.z = v.z; self.y = v.w; }
    }
    
    public var xwzz: Vector4f {
        return Vector4f(self.x, self.w, self.z, self.z)
    }
    
    public var xwzw: Vector4f {
        return Vector4f(self.x, self.w, self.z, self.w)
    }
    
    public var xwwx: Vector4f {
        return Vector4f(self.x, self.w, self.w, self.x)
    }
    
    public var xwwy: Vector4f {
        return Vector4f(self.x, self.w, self.w, self.y)
    }
    
    public var xwwz: Vector4f {
        return Vector4f(self.x, self.w, self.w, self.z)
    }
    
    public var xwww: Vector4f {
        return Vector4f(self.x, self.w, self.w, self.w)
    }
    
    public var yxxw: Vector4f {
        return Vector4f(self.y, self.x, self.x, self.w)
    }
    
    public var yxyw: Vector4f {
        return Vector4f(self.y, self.x, self.y, self.w)
    }
    
    public var yxzw: Vector4f {
        get { return Vector4f(self.y, self.x, self.z, self.w) }
        set (v) { self.y = v.x; self.x = v.y; self.z = v.z; self.w = v.w; }
    }
    
    public var yxwx: Vector4f {
        return Vector4f(self.y, self.x, self.w, self.x)
    }
    
    public var yxwy: Vector4f {
        return Vector4f(self.y, self.x, self.w, self.y)
    }
    
    public var yxwz: Vector4f {
        get { return Vector4f(self.y, self.x, self.w, self.z) }
        set (v) { self.y = v.x; self.x = v.y; self.w = v.z; self.z = v.w; }
    }
    
    public var yxww: Vector4f {
        return Vector4f(self.y, self.x, self.w, self.w)
    }
    
    public var yyxw: Vector4f {
        return Vector4f(self.y, self.y, self.x, self.w)
    }
    
    public var yyyw: Vector4f {
        return Vector4f(self.y, self.y, self.y, self.w)
    }
    
    public var yyzw: Vector4f {
        return Vector4f(self.y, self.y, self.z, self.w)
    }
    
    public var yywx: Vector4f {
        return Vector4f(self.y, self.y, self.w, self.x)
    }
    
    public var yywy: Vector4f {
        return Vector4f(self.y, self.y, self.w, self.y)
    }
    
    public var yywz: Vector4f {
        return Vector4f(self.y, self.y, self.w, self.z)
    }
    
    public var yyww: Vector4f {
        return Vector4f(self.y, self.y, self.w, self.w)
    }
    
    public var yzxw: Vector4f {
        get { return Vector4f(self.y, self.z, self.x, self.w) }
        set (v) { self.y = v.x; self.z = v.y; self.x = v.z; self.w = v.w; }
    }
    
    public var yzyw: Vector4f {
        return Vector4f(self.y, self.z, self.y, self.w)
    }
    
    public var yzzw: Vector4f {
        return Vector4f(self.y, self.z, self.z, self.w)
    }
    
    public var yzwx: Vector4f {
        get { return Vector4f(self.y, self.z, self.w, self.x) }
        set (v) { self.y = v.x; self.z = v.y; self.w = v.z; self.x = v.w; }
    }
    
    public var yzwy: Vector4f {
        return Vector4f(self.y, self.z, self.w, self.y)
    }
    
    public var yzwz: Vector4f {
        return Vector4f(self.y, self.z, self.w, self.z)
    }
    
    public var yzww: Vector4f {
        return Vector4f(self.y, self.z, self.w, self.w)
    }
    
    public var ywxx: Vector4f {
        return Vector4f(self.y, self.w, self.x, self.x)
    }
    
    public var ywxy: Vector4f {
        return Vector4f(self.y, self.w, self.x, self.y)
    }
    
    public var ywxz: Vector4f {
        get { return Vector4f(self.y, self.w, self.x, self.z) }
        set (v) { self.y = v.x; self.w = v.y; self.x = v.z; self.z = v.w; }
    }
    
    public var ywxw: Vector4f {
        return Vector4f(self.y, self.w, self.x, self.w)
    }
    
    public var ywyx: Vector4f {
        return Vector4f(self.y, self.w, self.y, self.x)
    }
    
    public var ywyy: Vector4f {
        return Vector4f(self.y, self.w, self.y, self.y)
    }
    
    public var ywyz: Vector4f {
        return Vector4f(self.y, self.w, self.y, self.z)
    }
    
    public var ywyw: Vector4f {
        return Vector4f(self.y, self.w, self.y, self.w)
    }
    
    public var ywzx: Vector4f {
        get { return Vector4f(self.y, self.w, self.z, self.x) }
        set (v) { self.y = v.x; self.w = v.y; self.z = v.z; self.x = v.w; }
    }
    
    public var ywzy: Vector4f {
        return Vector4f(self.y, self.w, self.z, self.y)
    }
    
    public var ywzz: Vector4f {
        return Vector4f(self.y, self.w, self.z, self.z)
    }
    
    public var ywzw: Vector4f {
        return Vector4f(self.y, self.w, self.z, self.w)
    }
    
    public var ywwx: Vector4f {
        return Vector4f(self.y, self.w, self.w, self.x)
    }
    
    public var ywwy: Vector4f {
        return Vector4f(self.y, self.w, self.w, self.y)
    }
    
    public var ywwz: Vector4f {
        return Vector4f(self.y, self.w, self.w, self.z)
    }
    
    public var ywww: Vector4f {
        return Vector4f(self.y, self.w, self.w, self.w)
    }
    
    public var zxxw: Vector4f {
        return Vector4f(self.z, self.x, self.x, self.w)
    }
    
    public var zxyw: Vector4f {
        get { return Vector4f(self.z, self.x, self.y, self.w) }
        set (v) { self.z = v.x; self.x = v.y; self.y = v.z; self.w = v.w; }
    }
    
    public var zxzw: Vector4f {
        return Vector4f(self.z, self.x, self.z, self.w)
    }
    
    public var zxwx: Vector4f {
        return Vector4f(self.z, self.x, self.w, self.x)
    }
    
    public var zxwy: Vector4f {
        get { return Vector4f(self.z, self.x, self.w, self.y) }
        set (v) { self.z = v.x; self.x = v.y; self.w = v.z; self.y = v.w; }
    }
    
    public var zxwz: Vector4f {
        return Vector4f(self.z, self.x, self.w, self.z)
    }
    
    public var zxww: Vector4f {
        return Vector4f(self.z, self.x, self.w, self.w)
    }
    
    public var zyxw: Vector4f {
        get { return Vector4f(self.z, self.y, self.x, self.w) }
        set (v) { self.z = v.x; self.y = v.y; self.x = v.z; self.w = v.w; }
    }
    
    public var zyyw: Vector4f {
        return Vector4f(self.z, self.y, self.y, self.w)
    }
    
    public var zyzw: Vector4f {
        return Vector4f(self.z, self.y, self.z, self.w)
    }
    
    public var zywx: Vector4f {
        get { return Vector4f(self.z, self.y, self.w, self.x) }
        set (v) { self.z = v.x; self.y = v.y; self.w = v.z; self.x = v.w; }
    }
    
    public var zywy: Vector4f {
        return Vector4f(self.z, self.y, self.w, self.y)
    }
    
    public var zywz: Vector4f {
        return Vector4f(self.z, self.y, self.w, self.z)
    }
    
    public var zyww: Vector4f {
        return Vector4f(self.z, self.y, self.w, self.w)
    }
    
    public var zzxw: Vector4f {
        return Vector4f(self.z, self.z, self.x, self.w)
    }
    
    public var zzyw: Vector4f {
        return Vector4f(self.z, self.z, self.y, self.w)
    }
    
    public var zzzw: Vector4f {
        return Vector4f(self.z, self.z, self.z, self.w)
    }
    
    public var zzwx: Vector4f {
        return Vector4f(self.z, self.z, self.w, self.x)
    }
    
    public var zzwy: Vector4f {
        return Vector4f(self.z, self.z, self.w, self.y)
    }
    
    public var zzwz: Vector4f {
        return Vector4f(self.z, self.z, self.w, self.z)
    }
    
    public var zzww: Vector4f {
        return Vector4f(self.z, self.z, self.w, self.w)
    }
    
    public var zwxx: Vector4f {
        return Vector4f(self.z, self.w, self.x, self.x)
    }
    
    public var zwxy: Vector4f {
        get { return Vector4f(self.z, self.w, self.x, self.y) }
        set (v) { self.z = v.x; self.w = v.y; self.x = v.z; self.y = v.w; }
    }
    
    public var zwxz: Vector4f {
        return Vector4f(self.z, self.w, self.x, self.z)
    }
    
    public var zwxw: Vector4f {
        return Vector4f(self.z, self.w, self.x, self.w)
    }
    
    public var zwyx: Vector4f {
        get { return Vector4f(self.z, self.w, self.y, self.x) }
        set (v) { self.z = v.x; self.w = v.y; self.y = v.z; self.x = v.w; }
    }
    
    public var zwyy: Vector4f {
        return Vector4f(self.z, self.w, self.y, self.y)
    }
    
    public var zwyz: Vector4f {
        return Vector4f(self.z, self.w, self.y, self.z)
    }
    
    public var zwyw: Vector4f {
        return Vector4f(self.z, self.w, self.y, self.w)
    }
    
    public var zwzx: Vector4f {
        return Vector4f(self.z, self.w, self.z, self.x)
    }
    
    public var zwzy: Vector4f {
        return Vector4f(self.z, self.w, self.z, self.y)
    }
    
    public var zwzz: Vector4f {
        return Vector4f(self.z, self.w, self.z, self.z)
    }
    
    public var zwzw: Vector4f {
        return Vector4f(self.z, self.w, self.z, self.w)
    }
    
    public var zwwx: Vector4f {
        return Vector4f(self.z, self.w, self.w, self.x)
    }
    
    public var zwwy: Vector4f {
        return Vector4f(self.z, self.w, self.w, self.y)
    }
    
    public var zwwz: Vector4f {
        return Vector4f(self.z, self.w, self.w, self.z)
    }
    
    public var zwww: Vector4f {
        return Vector4f(self.z, self.w, self.w, self.w)
    }
    
    public var wxxx: Vector4f {
        return Vector4f(self.w, self.x, self.x, self.x)
    }
    
    public var wxxy: Vector4f {
        return Vector4f(self.w, self.x, self.x, self.y)
    }
    
    public var wxxz: Vector4f {
        return Vector4f(self.w, self.x, self.x, self.z)
    }
    
    public var wxxw: Vector4f {
        return Vector4f(self.w, self.x, self.x, self.w)
    }
    
    public var wxyx: Vector4f {
        return Vector4f(self.w, self.x, self.y, self.x)
    }
    
    public var wxyy: Vector4f {
        return Vector4f(self.w, self.x, self.y, self.y)
    }
    
    public var wxyz: Vector4f {
        get { return Vector4f(self.w, self.x, self.y, self.z) }
        set (v) { self.w = v.x; self.x = v.y; self.y = v.z; self.z = v.w; }
    }
    
    public var wxyw: Vector4f {
        return Vector4f(self.w, self.x, self.y, self.w)
    }
    
    public var wxzx: Vector4f {
        return Vector4f(self.w, self.x, self.z, self.x)
    }
    
    public var wxzy: Vector4f {
        get { return Vector4f(self.w, self.x, self.z, self.y) }
        set (v) { self.w = v.x; self.x = v.y; self.z = v.z; self.y = v.w; }
    }
    
    public var wxzz: Vector4f {
        return Vector4f(self.w, self.x, self.z, self.z)
    }
    
    public var wxzw: Vector4f {
        return Vector4f(self.w, self.x, self.z, self.w)
    }
    
    public var wxwx: Vector4f {
        return Vector4f(self.w, self.x, self.w, self.x)
    }
    
    public var wxwy: Vector4f {
        return Vector4f(self.w, self.x, self.w, self.y)
    }
    
    public var wxwz: Vector4f {
        return Vector4f(self.w, self.x, self.w, self.z)
    }
    
    public var wxww: Vector4f {
        return Vector4f(self.w, self.x, self.w, self.w)
    }
    
    public var wyxx: Vector4f {
        return Vector4f(self.w, self.y, self.x, self.x)
    }
    
    public var wyxy: Vector4f {
        return Vector4f(self.w, self.y, self.x, self.y)
    }
    
    public var wyxz: Vector4f {
        get { return Vector4f(self.w, self.y, self.x, self.z) }
        set (v) { self.w = v.x; self.y = v.y; self.x = v.z; self.z = v.w; }
    }
    
    public var wyxw: Vector4f {
        return Vector4f(self.w, self.y, self.x, self.w)
    }
    
    public var wyyx: Vector4f {
        return Vector4f(self.w, self.y, self.y, self.x)
    }
    
    public var wyyy: Vector4f {
        return Vector4f(self.w, self.y, self.y, self.y)
    }
    
    public var wyyz: Vector4f {
        return Vector4f(self.w, self.y, self.y, self.z)
    }
    
    public var wyyw: Vector4f {
        return Vector4f(self.w, self.y, self.y, self.w)
    }
    
    public var wyzx: Vector4f {
        get { return Vector4f(self.w, self.y, self.z, self.x) }
        set (v) { self.w = v.x; self.y = v.y; self.z = v.z; self.x = v.w; }
    }
    
    public var wyzy: Vector4f {
        return Vector4f(self.w, self.y, self.z, self.y)
    }
    
    public var wyzz: Vector4f {
        return Vector4f(self.w, self.y, self.z, self.z)
    }
    
    public var wyzw: Vector4f {
        return Vector4f(self.w, self.y, self.z, self.w)
    }
    
    public var wywx: Vector4f {
        return Vector4f(self.w, self.y, self.w, self.x)
    }
    
    public var wywy: Vector4f {
        return Vector4f(self.w, self.y, self.w, self.y)
    }
    
    public var wywz: Vector4f {
        return Vector4f(self.w, self.y, self.w, self.z)
    }
    
    public var wyww: Vector4f {
        return Vector4f(self.w, self.y, self.w, self.w)
    }
    
    public var wzxx: Vector4f {
        return Vector4f(self.w, self.z, self.x, self.x)
    }
    
    public var wzxy: Vector4f {
        get { return Vector4f(self.w, self.z, self.x, self.y) }
        set (v) { self.w = v.x; self.z = v.y; self.x = v.z; self.y = v.w; }
    }
    
    public var wzxz: Vector4f {
        return Vector4f(self.w, self.z, self.x, self.z)
    }
    
    public var wzxw: Vector4f {
        return Vector4f(self.w, self.z, self.x, self.w)
    }
    
    public var wzyx: Vector4f {
        get { return Vector4f(self.w, self.z, self.y, self.x) }
        set (v) { self.w = v.x; self.z = v.y; self.y = v.z; self.x = v.w; }
    }
    
    public var wzyy: Vector4f {
        return Vector4f(self.w, self.z, self.y, self.y)
    }
    
    public var wzyz: Vector4f {
        return Vector4f(self.w, self.z, self.y, self.z)
    }
    
    public var wzyw: Vector4f {
        return Vector4f(self.w, self.z, self.y, self.w)
    }
    
    public var wzzx: Vector4f {
        return Vector4f(self.w, self.z, self.z, self.x)
    }
    
    public var wzzy: Vector4f {
        return Vector4f(self.w, self.z, self.z, self.y)
    }
    
    public var wzzz: Vector4f {
        return Vector4f(self.w, self.z, self.z, self.z)
    }
    
    public var wzzw: Vector4f {
        return Vector4f(self.w, self.z, self.z, self.w)
    }
    
    public var wzwx: Vector4f {
        return Vector4f(self.w, self.z, self.w, self.x)
    }
    
    public var wzwy: Vector4f {
        return Vector4f(self.w, self.z, self.w, self.y)
    }
    
    public var wzwz: Vector4f {
        return Vector4f(self.w, self.z, self.w, self.z)
    }
    
    public var wzww: Vector4f {
        return Vector4f(self.w, self.z, self.w, self.w)
    }
    
    public var wwxx: Vector4f {
        return Vector4f(self.w, self.w, self.x, self.x)
    }
    
    public var wwxy: Vector4f {
        return Vector4f(self.w, self.w, self.x, self.y)
    }
    
    public var wwxz: Vector4f {
        return Vector4f(self.w, self.w, self.x, self.z)
    }
    
    public var wwxw: Vector4f {
        return Vector4f(self.w, self.w, self.x, self.w)
    }
    
    public var wwyx: Vector4f {
        return Vector4f(self.w, self.w, self.y, self.x)
    }
    
    public var wwyy: Vector4f {
        return Vector4f(self.w, self.w, self.y, self.y)
    }
    
    public var wwyz: Vector4f {
        return Vector4f(self.w, self.w, self.y, self.z)
    }
    
    public var wwyw: Vector4f {
        return Vector4f(self.w, self.w, self.y, self.w)
    }
    
    public var wwzx: Vector4f {
        return Vector4f(self.w, self.w, self.z, self.x)
    }
    
    public var wwzy: Vector4f {
        return Vector4f(self.w, self.w, self.z, self.y)
    }
    
    public var wwzz: Vector4f {
        return Vector4f(self.w, self.w, self.z, self.z)
    }
    
    public var wwzw: Vector4f {
        return Vector4f(self.w, self.w, self.z, self.w)
    }
    
    public var wwwx: Vector4f {
        return Vector4f(self.w, self.w, self.w, self.x)
    }
    
    public var wwwy: Vector4f {
        return Vector4f(self.w, self.w, self.w, self.y)
    }
    
    public var wwwz: Vector4f {
        return Vector4f(self.w, self.w, self.w, self.z)
    }
    
    public var wwww: Vector4f {
        return Vector4f(self.w)
    }
    
}
