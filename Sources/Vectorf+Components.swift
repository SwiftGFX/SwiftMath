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

    var xx: Vector2f {
        return Vector2f(self.x)
    }

    var xy: Vector2f {
        get { return Vector2f(self.x, self.y) }
        set (v) { self.x = v.x; self.y = v.y; }
    }

    var yx: Vector2f {
        get { return Vector2f(self.y, self.x) }
        set (v) { self.y = v.x; self.x = v.y; }
    }

    var yy: Vector2f {
        return Vector2f(self.y)
    }

    var xxx: Vector3f {
        return Vector3f(self.x)
    }

    var xxy: Vector3f {
        return Vector3f(self.x, self.x, self.y)
    }

    var xyx: Vector3f {
        return Vector3f(self.x, self.y, self.x)
    }

    var xyy: Vector3f {
        return Vector3f(self.x, self.y, self.y)
    }

    var yxx: Vector3f {
        return Vector3f(self.y, self.x, self.x)
    }

    var yxy: Vector3f {
        return Vector3f(self.y, self.x, self.y)
    }

    var yyx: Vector3f {
        return Vector3f(self.y, self.y, self.x)
    }

    var yyy: Vector3f {
        return Vector3f(self.y)
    }

    var xxxx: Vector4f {
        return Vector4f(self.x)
    }

    var xxxy: Vector4f {
        return Vector4f(self.x, self.x, self.x, self.y)
    }

    var xxyx: Vector4f {
        return Vector4f(self.x, self.x, self.y, self.x)
    }

    var xxyy: Vector4f {
        return Vector4f(self.x, self.x, self.y, self.y)
    }

    var xyxx: Vector4f {
        return Vector4f(self.x, self.y, self.x, self.x)
    }

    var xyxy: Vector4f {
        return Vector4f(self.x, self.y, self.x, self.y)
    }

    var xyyx: Vector4f {
        return Vector4f(self.x, self.y, self.y, self.x)
    }

    var xyyy: Vector4f {
        return Vector4f(self.x, self.y, self.y, self.y)
    }

    var yxxx: Vector4f {
        return Vector4f(self.y, self.x, self.x, self.x)
    }

    var yxxy: Vector4f {
        return Vector4f(self.y, self.x, self.x, self.y)
    }

    var yxyx: Vector4f {
        return Vector4f(self.y, self.x, self.y, self.x)
    }

    var yxyy: Vector4f {
        return Vector4f(self.y, self.x, self.y, self.y)
    }

    var yyxx: Vector4f {
        return Vector4f(self.y, self.y, self.x, self.x)
    }

    var yyxy: Vector4f {
        return Vector4f(self.y, self.y, self.x, self.y)
    }

    var yyyx: Vector4f {
        return Vector4f(self.y, self.y, self.y, self.x)
    }

    var yyyy: Vector4f {
        return Vector4f(self.y)
    }

}

public extension VectorfXYZAccess {

    var xz: Vector2f {
        get { return Vector2f(self.x, self.z) }
        set (v) { self.x = v.x; self.z = v.y; }
    }

    var yz: Vector2f {
        get { return Vector2f(self.y, self.z) }
        set (v) { self.y = v.x; self.z = v.y; }
    }

    var zx: Vector2f {
        get { return Vector2f(self.z, self.x) }
        set (v) { self.z = v.x; self.x = v.y; }
    }

    var zy: Vector2f {
        get { return Vector2f(self.z, self.y) }
        set (v) { self.z = v.x; self.y = v.y; }
    }

    var zz: Vector2f {
        return Vector2f(self.z)
    }

    var xxz: Vector3f {
        return Vector3f(self.x, self.x, self.z)
    }

    var xyz: Vector3f {
        get { return Vector3f(self.x, self.y, self.z) }
        set (v) { self.x = v.x; self.y = v.y; self.z = v.z; }
    }

    var xzx: Vector3f {
        return Vector3f(self.x, self.z, self.x)
    }

    var xzy: Vector3f {
        get { return Vector3f(self.x, self.z, self.y) }
        set (v) { self.x = v.x; self.z = v.y; self.y = v.z; }
    }

    var xzz: Vector3f {
        return Vector3f(self.x, self.z, self.z)
    }

    var yxz: Vector3f {
        get { return Vector3f(self.y, self.x, self.z) }
        set (v) { self.y = v.x; self.x = v.y; self.z = v.z; }
    }

    var yyz: Vector3f {
        return Vector3f(self.y, self.y, self.z)
    }

    var yzx: Vector3f {
        get { return Vector3f(self.y, self.z, self.x) }
        set (v) { self.y = v.x; self.z = v.y; self.x = v.z; }
    }

    var yzy: Vector3f {
        return Vector3f(self.y, self.z, self.y)
    }

    var yzz: Vector3f {
        return Vector3f(self.y, self.z, self.z)
    }

    var zxx: Vector3f {
        return Vector3f(self.z, self.x, self.x)
    }

    var zxy: Vector3f {
        get { return Vector3f(self.z, self.x, self.y) }
        set (v) { self.z = v.x; self.x = v.y; self.y = v.z; }
    }

    var zxz: Vector3f {
        return Vector3f(self.z, self.x, self.z)
    }

    var zyx: Vector3f {
        get { return Vector3f(self.z, self.y, self.x) }
        set (v) { self.z = v.x; self.y = v.y; self.x = v.z; }
    }

    var zyy: Vector3f {
        return Vector3f(self.z, self.y, self.y)
    }

    var zyz: Vector3f {
        return Vector3f(self.z, self.y, self.z)
    }

    var zzx: Vector3f {
        return Vector3f(self.z, self.z, self.x)
    }

    var zzy: Vector3f {
        return Vector3f(self.z, self.z, self.y)
    }

    var zzz: Vector3f {
        return Vector3f(self.z)
    }

    var xxxz: Vector4f {
        return Vector4f(self.x, self.x, self.x, self.z)
    }

    var xxyz: Vector4f {
        return Vector4f(self.x, self.x, self.y, self.z)
    }

    var xxzx: Vector4f {
        return Vector4f(self.x, self.x, self.z, self.x)
    }

    var xxzy: Vector4f {
        return Vector4f(self.x, self.x, self.z, self.y)
    }

    var xxzz: Vector4f {
        return Vector4f(self.x, self.x, self.z, self.z)
    }

    var xyxz: Vector4f {
        return Vector4f(self.x, self.y, self.x, self.z)
    }

    var xyyz: Vector4f {
        return Vector4f(self.x, self.y, self.y, self.z)
    }

    var xyzx: Vector4f {
        return Vector4f(self.x, self.y, self.z, self.x)
    }

    var xyzy: Vector4f {
        return Vector4f(self.x, self.y, self.z, self.y)
    }

    var xyzz: Vector4f {
        return Vector4f(self.x, self.y, self.z, self.z)
    }

    var xzxx: Vector4f {
        return Vector4f(self.x, self.z, self.x, self.x)
    }

    var xzxy: Vector4f {
        return Vector4f(self.x, self.z, self.x, self.y)
    }

    var xzxz: Vector4f {
        return Vector4f(self.x, self.z, self.x, self.z)
    }

    var xzyx: Vector4f {
        return Vector4f(self.x, self.z, self.y, self.x)
    }

    var xzyy: Vector4f {
        return Vector4f(self.x, self.z, self.y, self.y)
    }

    var xzyz: Vector4f {
        return Vector4f(self.x, self.z, self.y, self.z)
    }

    var xzzx: Vector4f {
        return Vector4f(self.x, self.z, self.z, self.x)
    }

    var xzzy: Vector4f {
        return Vector4f(self.x, self.z, self.z, self.y)
    }

    var xzzz: Vector4f {
        return Vector4f(self.x, self.z, self.z, self.z)
    }

    var yxxz: Vector4f {
        return Vector4f(self.y, self.x, self.x, self.z)
    }

    var yxyz: Vector4f {
        return Vector4f(self.y, self.x, self.y, self.z)
    }

    var yxzx: Vector4f {
        return Vector4f(self.y, self.x, self.z, self.x)
    }

    var yxzy: Vector4f {
        return Vector4f(self.y, self.x, self.z, self.y)
    }

    var yxzz: Vector4f {
        return Vector4f(self.y, self.x, self.z, self.z)
    }

    var yyxz: Vector4f {
        return Vector4f(self.y, self.y, self.x, self.z)
    }

    var yyyz: Vector4f {
        return Vector4f(self.y, self.y, self.y, self.z)
    }

    var yyzx: Vector4f {
        return Vector4f(self.y, self.y, self.z, self.x)
    }

    var yyzy: Vector4f {
        return Vector4f(self.y, self.y, self.z, self.y)
    }

    var yyzz: Vector4f {
        return Vector4f(self.y, self.y, self.z, self.z)
    }

    var yzxx: Vector4f {
        return Vector4f(self.y, self.z, self.x, self.x)
    }

    var yzxy: Vector4f {
        return Vector4f(self.y, self.z, self.x, self.y)
    }

    var yzxz: Vector4f {
        return Vector4f(self.y, self.z, self.x, self.z)
    }

    var yzyx: Vector4f {
        return Vector4f(self.y, self.z, self.y, self.x)
    }

    var yzyy: Vector4f {
        return Vector4f(self.y, self.z, self.y, self.y)
    }

    var yzyz: Vector4f {
        return Vector4f(self.y, self.z, self.y, self.z)
    }

    var yzzx: Vector4f {
        return Vector4f(self.y, self.z, self.z, self.x)
    }

    var yzzy: Vector4f {
        return Vector4f(self.y, self.z, self.z, self.y)
    }

    var yzzz: Vector4f {
        return Vector4f(self.y, self.z, self.z, self.z)
    }

    var zxxx: Vector4f {
        return Vector4f(self.z, self.x, self.x, self.x)
    }

    var zxxy: Vector4f {
        return Vector4f(self.z, self.x, self.x, self.y)
    }

    var zxxz: Vector4f {
        return Vector4f(self.z, self.x, self.x, self.z)
    }

    var zxyx: Vector4f {
        return Vector4f(self.z, self.x, self.y, self.x)
    }

    var zxyy: Vector4f {
        return Vector4f(self.z, self.x, self.y, self.y)
    }

    var zxyz: Vector4f {
        return Vector4f(self.z, self.x, self.y, self.z)
    }

    var zxzx: Vector4f {
        return Vector4f(self.z, self.x, self.z, self.x)
    }

    var zxzy: Vector4f {
        return Vector4f(self.z, self.x, self.z, self.y)
    }

    var zxzz: Vector4f {
        return Vector4f(self.z, self.x, self.z, self.z)
    }

    var zyxx: Vector4f {
        return Vector4f(self.z, self.y, self.x, self.x)
    }

    var zyxy: Vector4f {
        return Vector4f(self.z, self.y, self.x, self.y)
    }

    var zyxz: Vector4f {
        return Vector4f(self.z, self.y, self.x, self.z)
    }

    var zyyx: Vector4f {
        return Vector4f(self.z, self.y, self.y, self.x)
    }

    var zyyy: Vector4f {
        return Vector4f(self.z, self.y, self.y, self.y)
    }

    var zyyz: Vector4f {
        return Vector4f(self.z, self.y, self.y, self.z)
    }

    var zyzx: Vector4f {
        return Vector4f(self.z, self.y, self.z, self.x)
    }

    var zyzy: Vector4f {
        return Vector4f(self.z, self.y, self.z, self.y)
    }

    var zyzz: Vector4f {
        return Vector4f(self.z, self.y, self.z, self.z)
    }

    var zzxx: Vector4f {
        return Vector4f(self.z, self.z, self.x, self.x)
    }

    var zzxy: Vector4f {
        return Vector4f(self.z, self.z, self.x, self.y)
    }

    var zzxz: Vector4f {
        return Vector4f(self.z, self.z, self.x, self.z)
    }

    var zzyx: Vector4f {
        return Vector4f(self.z, self.z, self.y, self.x)
    }

    var zzyy: Vector4f {
        return Vector4f(self.z, self.z, self.y, self.y)
    }

    var zzyz: Vector4f {
        return Vector4f(self.z, self.z, self.y, self.z)
    }

    var zzzx: Vector4f {
        return Vector4f(self.z, self.z, self.z, self.x)
    }

    var zzzy: Vector4f {
        return Vector4f(self.z, self.z, self.z, self.y)
    }

    var zzzz: Vector4f {
        return Vector4f(self.z)
    }

}

public extension VectorfXYZWAccess {

    var xw: Vector2f {
        get { return Vector2f(self.x, self.w) }
        set (v) { self.x = v.x; self.w = v.y; }
    }

    var yw: Vector2f {
        get { return Vector2f(self.y, self.w) }
        set (v) { self.y = v.x; self.w = v.y; }
    }

    var zw: Vector2f {
        get { return Vector2f(self.z, self.w) }
        set (v) { self.z = v.x; self.w = v.y; }
    }

    var wx: Vector2f {
        get { return Vector2f(self.w, self.x) }
        set (v) { self.w = v.x; self.x = v.y; }
    }

    var wy: Vector2f {
        get { return Vector2f(self.w, self.y) }
        set (v) { self.w = v.x; self.y = v.y; }
    }

    var wz: Vector2f {
        get { return Vector2f(self.w, self.z) }
        set (v) { self.w = v.x; self.z = v.y; }
    }

    var ww: Vector2f {
        return Vector2f(self.w)
    }

    var xxw: Vector3f {
        return Vector3f(self.x, self.x, self.w)
    }

    var xyw: Vector3f {
        get { return Vector3f(self.x, self.y, self.w) }
        set (v) { self.x = v.x; self.y = v.y; self.w = v.z; }
    }

    var xzw: Vector3f {
        get { return Vector3f(self.x, self.z, self.w) }
        set (v) { self.x = v.x; self.z = v.y; self.w = v.z; }
    }

    var xwx: Vector3f {
        return Vector3f(self.x, self.w, self.x)
    }

    var xwy: Vector3f {
        get { return Vector3f(self.x, self.w, self.y) }
        set (v) { self.x = v.x; self.w = v.y; self.y = v.z; }
    }

    var xwz: Vector3f {
        get { return Vector3f(self.x, self.w, self.z) }
        set (v) { self.x = v.x; self.w = v.y; self.z = v.z; }
    }

    var xww: Vector3f {
        return Vector3f(self.x, self.w, self.w)
    }

    var yxw: Vector3f {
        get { return Vector3f(self.y, self.x, self.w) }
        set (v) { self.y = v.x; self.x = v.y; self.w = v.z; }
    }

    var yyw: Vector3f {
        return Vector3f(self.y, self.y, self.w)
    }

    var yzw: Vector3f {
        get { return Vector3f(self.y, self.z, self.w) }
        set (v) { self.y = v.x; self.z = v.y; self.w = v.z; }
    }

    var ywx: Vector3f {
        get { return Vector3f(self.y, self.w, self.x) }
        set (v) { self.y = v.x; self.w = v.y; self.x = v.z; }
    }

    var ywy: Vector3f {
        return Vector3f(self.y, self.w, self.y)
    }

    var ywz: Vector3f {
        get { return Vector3f(self.y, self.w, self.z) }
        set (v) { self.y = v.x; self.w = v.y; self.z = v.z; }
    }

    var yww: Vector3f {
        return Vector3f(self.y, self.w, self.w)
    }

    var zxw: Vector3f {
        get { return Vector3f(self.z, self.x, self.w) }
        set (v) { self.z = v.x; self.x = v.y; self.w = v.z; }
    }

    var zyw: Vector3f {
        get { return Vector3f(self.z, self.y, self.w) }
        set (v) { self.z = v.x; self.y = v.y; self.w = v.z; }
    }

    var zzw: Vector3f {
        return Vector3f(self.z, self.z, self.w)
    }

    var zwx: Vector3f {
        get { return Vector3f(self.z, self.w, self.x) }
        set (v) { self.z = v.x; self.w = v.y; self.x = v.z; }
    }

    var zwy: Vector3f {
        get { return Vector3f(self.z, self.w, self.y) }
        set (v) { self.z = v.x; self.w = v.y; self.y = v.z; }
    }

    var zwz: Vector3f {
        return Vector3f(self.z, self.w, self.z)
    }

    var zww: Vector3f {
        return Vector3f(self.z, self.w, self.w)
    }

    var wxx: Vector3f {
        return Vector3f(self.w, self.x, self.x)
    }

    var wxy: Vector3f {
        get { return Vector3f(self.w, self.x, self.y) }
        set (v) { self.w = v.x; self.x = v.y; self.y = v.z; }
    }

    var wxz: Vector3f {
        get { return Vector3f(self.w, self.x, self.z) }
        set (v) { self.w = v.x; self.x = v.y; self.z = v.z; }
    }

    var wxw: Vector3f {
        return Vector3f(self.w, self.x, self.w)
    }

    var wyx: Vector3f {
        get { return Vector3f(self.w, self.y, self.x) }
        set (v) { self.w = v.x; self.y = v.y; self.x = v.z; }
    }

    var wyy: Vector3f {
        return Vector3f(self.w, self.y, self.y)
    }

    var wyz: Vector3f {
        get { return Vector3f(self.w, self.y, self.z) }
        set (v) { self.w = v.x; self.y = v.y; self.z = v.z; }
    }

    var wyw: Vector3f {
        return Vector3f(self.w, self.y, self.w)
    }

    var wzx: Vector3f {
        get { return Vector3f(self.w, self.z, self.x) }
        set (v) { self.w = v.x; self.z = v.y; self.x = v.z; }
    }

    var wzy: Vector3f {
        get { return Vector3f(self.w, self.z, self.y) }
        set (v) { self.w = v.x; self.z = v.y; self.y = v.z; }
    }

    var wzz: Vector3f {
        return Vector3f(self.w, self.z, self.z)
    }

    var wzw: Vector3f {
        return Vector3f(self.w, self.z, self.w)
    }

    var wwx: Vector3f {
        return Vector3f(self.w, self.w, self.x)
    }

    var wwy: Vector3f {
        return Vector3f(self.w, self.w, self.y)
    }

    var wwz: Vector3f {
        return Vector3f(self.w, self.w, self.z)
    }

    var www: Vector3f {
        return Vector3f(self.w)
    }

    var xxxw: Vector4f {
        return Vector4f(self.x, self.x, self.x, self.w)
    }

    var xxyw: Vector4f {
        return Vector4f(self.x, self.x, self.y, self.w)
    }

    var xxzw: Vector4f {
        return Vector4f(self.x, self.x, self.z, self.w)
    }

    var xxwx: Vector4f {
        return Vector4f(self.x, self.x, self.w, self.x)
    }

    var xxwy: Vector4f {
        return Vector4f(self.x, self.x, self.w, self.y)
    }

    var xxwz: Vector4f {
        return Vector4f(self.x, self.x, self.w, self.z)
    }

    var xxww: Vector4f {
        return Vector4f(self.x, self.x, self.w, self.w)
    }

    var xyxw: Vector4f {
        return Vector4f(self.x, self.y, self.x, self.w)
    }

    var xyyw: Vector4f {
        return Vector4f(self.x, self.y, self.y, self.w)
    }

    var xyzw: Vector4f {
        get { return Vector4f(self.x, self.y, self.z, self.w) }
        set (v) { self.x = v.x; self.y = v.y; self.z = v.z; self.w = v.w; }
    }

    var xywx: Vector4f {
        return Vector4f(self.x, self.y, self.w, self.x)
    }

    var xywy: Vector4f {
        return Vector4f(self.x, self.y, self.w, self.y)
    }

    var xywz: Vector4f {
        get { return Vector4f(self.x, self.y, self.w, self.z) }
        set (v) { self.x = v.x; self.y = v.y; self.w = v.z; self.z = v.w; }
    }

    var xyww: Vector4f {
        return Vector4f(self.x, self.y, self.w, self.w)
    }

    var xzxw: Vector4f {
        return Vector4f(self.x, self.z, self.x, self.w)
    }

    var xzyw: Vector4f {
        get { return Vector4f(self.x, self.z, self.y, self.w) }
        set (v) { self.x = v.x; self.z = v.y; self.y = v.z; self.w = v.w; }
    }

    var xzzw: Vector4f {
        return Vector4f(self.x, self.z, self.z, self.w)
    }

    var xzwx: Vector4f {
        return Vector4f(self.x, self.z, self.w, self.x)
    }

    var xzwy: Vector4f {
        get { return Vector4f(self.x, self.z, self.w, self.y) }
        set (v) { self.x = v.x; self.z = v.y; self.w = v.z; self.y = v.w; }
    }

    var xzwz: Vector4f {
        return Vector4f(self.x, self.z, self.w, self.z)
    }

    var xzww: Vector4f {
        return Vector4f(self.x, self.z, self.w, self.w)
    }

    var xwxx: Vector4f {
        return Vector4f(self.x, self.w, self.x, self.x)
    }

    var xwxy: Vector4f {
        return Vector4f(self.x, self.w, self.x, self.y)
    }

    var xwxz: Vector4f {
        return Vector4f(self.x, self.w, self.x, self.z)
    }

    var xwxw: Vector4f {
        return Vector4f(self.x, self.w, self.x, self.w)
    }

    var xwyx: Vector4f {
        return Vector4f(self.x, self.w, self.y, self.x)
    }

    var xwyy: Vector4f {
        return Vector4f(self.x, self.w, self.y, self.y)
    }

    var xwyz: Vector4f {
        get { return Vector4f(self.x, self.w, self.y, self.z) }
        set (v) { self.x = v.x; self.w = v.y; self.y = v.z; self.z = v.w; }
    }

    var xwyw: Vector4f {
        return Vector4f(self.x, self.w, self.y, self.w)
    }

    var xwzx: Vector4f {
        return Vector4f(self.x, self.w, self.z, self.x)
    }

    var xwzy: Vector4f {
        get { return Vector4f(self.x, self.w, self.z, self.y) }
        set (v) { self.x = v.x; self.w = v.y; self.z = v.z; self.y = v.w; }
    }

    var xwzz: Vector4f {
        return Vector4f(self.x, self.w, self.z, self.z)
    }

    var xwzw: Vector4f {
        return Vector4f(self.x, self.w, self.z, self.w)
    }

    var xwwx: Vector4f {
        return Vector4f(self.x, self.w, self.w, self.x)
    }

    var xwwy: Vector4f {
        return Vector4f(self.x, self.w, self.w, self.y)
    }

    var xwwz: Vector4f {
        return Vector4f(self.x, self.w, self.w, self.z)
    }

    var xwww: Vector4f {
        return Vector4f(self.x, self.w, self.w, self.w)
    }

    var yxxw: Vector4f {
        return Vector4f(self.y, self.x, self.x, self.w)
    }

    var yxyw: Vector4f {
        return Vector4f(self.y, self.x, self.y, self.w)
    }

    var yxzw: Vector4f {
        get { return Vector4f(self.y, self.x, self.z, self.w) }
        set (v) { self.y = v.x; self.x = v.y; self.z = v.z; self.w = v.w; }
    }

    var yxwx: Vector4f {
        return Vector4f(self.y, self.x, self.w, self.x)
    }

    var yxwy: Vector4f {
        return Vector4f(self.y, self.x, self.w, self.y)
    }

    var yxwz: Vector4f {
        get { return Vector4f(self.y, self.x, self.w, self.z) }
        set (v) { self.y = v.x; self.x = v.y; self.w = v.z; self.z = v.w; }
    }

    var yxww: Vector4f {
        return Vector4f(self.y, self.x, self.w, self.w)
    }

    var yyxw: Vector4f {
        return Vector4f(self.y, self.y, self.x, self.w)
    }

    var yyyw: Vector4f {
        return Vector4f(self.y, self.y, self.y, self.w)
    }

    var yyzw: Vector4f {
        return Vector4f(self.y, self.y, self.z, self.w)
    }

    var yywx: Vector4f {
        return Vector4f(self.y, self.y, self.w, self.x)
    }

    var yywy: Vector4f {
        return Vector4f(self.y, self.y, self.w, self.y)
    }

    var yywz: Vector4f {
        return Vector4f(self.y, self.y, self.w, self.z)
    }

    var yyww: Vector4f {
        return Vector4f(self.y, self.y, self.w, self.w)
    }

    var yzxw: Vector4f {
        get { return Vector4f(self.y, self.z, self.x, self.w) }
        set (v) { self.y = v.x; self.z = v.y; self.x = v.z; self.w = v.w; }
    }

    var yzyw: Vector4f {
        return Vector4f(self.y, self.z, self.y, self.w)
    }

    var yzzw: Vector4f {
        return Vector4f(self.y, self.z, self.z, self.w)
    }

    var yzwx: Vector4f {
        get { return Vector4f(self.y, self.z, self.w, self.x) }
        set (v) { self.y = v.x; self.z = v.y; self.w = v.z; self.x = v.w; }
    }

    var yzwy: Vector4f {
        return Vector4f(self.y, self.z, self.w, self.y)
    }

    var yzwz: Vector4f {
        return Vector4f(self.y, self.z, self.w, self.z)
    }

    var yzww: Vector4f {
        return Vector4f(self.y, self.z, self.w, self.w)
    }

    var ywxx: Vector4f {
        return Vector4f(self.y, self.w, self.x, self.x)
    }

    var ywxy: Vector4f {
        return Vector4f(self.y, self.w, self.x, self.y)
    }

    var ywxz: Vector4f {
        get { return Vector4f(self.y, self.w, self.x, self.z) }
        set (v) { self.y = v.x; self.w = v.y; self.x = v.z; self.z = v.w; }
    }

    var ywxw: Vector4f {
        return Vector4f(self.y, self.w, self.x, self.w)
    }

    var ywyx: Vector4f {
        return Vector4f(self.y, self.w, self.y, self.x)
    }

    var ywyy: Vector4f {
        return Vector4f(self.y, self.w, self.y, self.y)
    }

    var ywyz: Vector4f {
        return Vector4f(self.y, self.w, self.y, self.z)
    }

    var ywyw: Vector4f {
        return Vector4f(self.y, self.w, self.y, self.w)
    }

    var ywzx: Vector4f {
        get { return Vector4f(self.y, self.w, self.z, self.x) }
        set (v) { self.y = v.x; self.w = v.y; self.z = v.z; self.x = v.w; }
    }

    var ywzy: Vector4f {
        return Vector4f(self.y, self.w, self.z, self.y)
    }

    var ywzz: Vector4f {
        return Vector4f(self.y, self.w, self.z, self.z)
    }

    var ywzw: Vector4f {
        return Vector4f(self.y, self.w, self.z, self.w)
    }

    var ywwx: Vector4f {
        return Vector4f(self.y, self.w, self.w, self.x)
    }

    var ywwy: Vector4f {
        return Vector4f(self.y, self.w, self.w, self.y)
    }

    var ywwz: Vector4f {
        return Vector4f(self.y, self.w, self.w, self.z)
    }

    var ywww: Vector4f {
        return Vector4f(self.y, self.w, self.w, self.w)
    }

    var zxxw: Vector4f {
        return Vector4f(self.z, self.x, self.x, self.w)
    }

    var zxyw: Vector4f {
        get { return Vector4f(self.z, self.x, self.y, self.w) }
        set (v) { self.z = v.x; self.x = v.y; self.y = v.z; self.w = v.w; }
    }

    var zxzw: Vector4f {
        return Vector4f(self.z, self.x, self.z, self.w)
    }

    var zxwx: Vector4f {
        return Vector4f(self.z, self.x, self.w, self.x)
    }

    var zxwy: Vector4f {
        get { return Vector4f(self.z, self.x, self.w, self.y) }
        set (v) { self.z = v.x; self.x = v.y; self.w = v.z; self.y = v.w; }
    }

    var zxwz: Vector4f {
        return Vector4f(self.z, self.x, self.w, self.z)
    }

    var zxww: Vector4f {
        return Vector4f(self.z, self.x, self.w, self.w)
    }

    var zyxw: Vector4f {
        get { return Vector4f(self.z, self.y, self.x, self.w) }
        set (v) { self.z = v.x; self.y = v.y; self.x = v.z; self.w = v.w; }
    }

    var zyyw: Vector4f {
        return Vector4f(self.z, self.y, self.y, self.w)
    }

    var zyzw: Vector4f {
        return Vector4f(self.z, self.y, self.z, self.w)
    }

    var zywx: Vector4f {
        get { return Vector4f(self.z, self.y, self.w, self.x) }
        set (v) { self.z = v.x; self.y = v.y; self.w = v.z; self.x = v.w; }
    }

    var zywy: Vector4f {
        return Vector4f(self.z, self.y, self.w, self.y)
    }

    var zywz: Vector4f {
        return Vector4f(self.z, self.y, self.w, self.z)
    }

    var zyww: Vector4f {
        return Vector4f(self.z, self.y, self.w, self.w)
    }

    var zzxw: Vector4f {
        return Vector4f(self.z, self.z, self.x, self.w)
    }

    var zzyw: Vector4f {
        return Vector4f(self.z, self.z, self.y, self.w)
    }

    var zzzw: Vector4f {
        return Vector4f(self.z, self.z, self.z, self.w)
    }

    var zzwx: Vector4f {
        return Vector4f(self.z, self.z, self.w, self.x)
    }

    var zzwy: Vector4f {
        return Vector4f(self.z, self.z, self.w, self.y)
    }

    var zzwz: Vector4f {
        return Vector4f(self.z, self.z, self.w, self.z)
    }

    var zzww: Vector4f {
        return Vector4f(self.z, self.z, self.w, self.w)
    }

    var zwxx: Vector4f {
        return Vector4f(self.z, self.w, self.x, self.x)
    }

    var zwxy: Vector4f {
        get { return Vector4f(self.z, self.w, self.x, self.y) }
        set (v) { self.z = v.x; self.w = v.y; self.x = v.z; self.y = v.w; }
    }

    var zwxz: Vector4f {
        return Vector4f(self.z, self.w, self.x, self.z)
    }

    var zwxw: Vector4f {
        return Vector4f(self.z, self.w, self.x, self.w)
    }

    var zwyx: Vector4f {
        get { return Vector4f(self.z, self.w, self.y, self.x) }
        set (v) { self.z = v.x; self.w = v.y; self.y = v.z; self.x = v.w; }
    }

    var zwyy: Vector4f {
        return Vector4f(self.z, self.w, self.y, self.y)
    }

    var zwyz: Vector4f {
        return Vector4f(self.z, self.w, self.y, self.z)
    }

    var zwyw: Vector4f {
        return Vector4f(self.z, self.w, self.y, self.w)
    }

    var zwzx: Vector4f {
        return Vector4f(self.z, self.w, self.z, self.x)
    }

    var zwzy: Vector4f {
        return Vector4f(self.z, self.w, self.z, self.y)
    }

    var zwzz: Vector4f {
        return Vector4f(self.z, self.w, self.z, self.z)
    }

    var zwzw: Vector4f {
        return Vector4f(self.z, self.w, self.z, self.w)
    }

    var zwwx: Vector4f {
        return Vector4f(self.z, self.w, self.w, self.x)
    }

    var zwwy: Vector4f {
        return Vector4f(self.z, self.w, self.w, self.y)
    }

    var zwwz: Vector4f {
        return Vector4f(self.z, self.w, self.w, self.z)
    }

    var zwww: Vector4f {
        return Vector4f(self.z, self.w, self.w, self.w)
    }

    var wxxx: Vector4f {
        return Vector4f(self.w, self.x, self.x, self.x)
    }

    var wxxy: Vector4f {
        return Vector4f(self.w, self.x, self.x, self.y)
    }

    var wxxz: Vector4f {
        return Vector4f(self.w, self.x, self.x, self.z)
    }

    var wxxw: Vector4f {
        return Vector4f(self.w, self.x, self.x, self.w)
    }

    var wxyx: Vector4f {
        return Vector4f(self.w, self.x, self.y, self.x)
    }

    var wxyy: Vector4f {
        return Vector4f(self.w, self.x, self.y, self.y)
    }

    var wxyz: Vector4f {
        get { return Vector4f(self.w, self.x, self.y, self.z) }
        set (v) { self.w = v.x; self.x = v.y; self.y = v.z; self.z = v.w; }
    }

    var wxyw: Vector4f {
        return Vector4f(self.w, self.x, self.y, self.w)
    }

    var wxzx: Vector4f {
        return Vector4f(self.w, self.x, self.z, self.x)
    }

    var wxzy: Vector4f {
        get { return Vector4f(self.w, self.x, self.z, self.y) }
        set (v) { self.w = v.x; self.x = v.y; self.z = v.z; self.y = v.w; }
    }

    var wxzz: Vector4f {
        return Vector4f(self.w, self.x, self.z, self.z)
    }

    var wxzw: Vector4f {
        return Vector4f(self.w, self.x, self.z, self.w)
    }

    var wxwx: Vector4f {
        return Vector4f(self.w, self.x, self.w, self.x)
    }

    var wxwy: Vector4f {
        return Vector4f(self.w, self.x, self.w, self.y)
    }

    var wxwz: Vector4f {
        return Vector4f(self.w, self.x, self.w, self.z)
    }

    var wxww: Vector4f {
        return Vector4f(self.w, self.x, self.w, self.w)
    }

    var wyxx: Vector4f {
        return Vector4f(self.w, self.y, self.x, self.x)
    }

    var wyxy: Vector4f {
        return Vector4f(self.w, self.y, self.x, self.y)
    }

    var wyxz: Vector4f {
        get { return Vector4f(self.w, self.y, self.x, self.z) }
        set (v) { self.w = v.x; self.y = v.y; self.x = v.z; self.z = v.w; }
    }

    var wyxw: Vector4f {
        return Vector4f(self.w, self.y, self.x, self.w)
    }

    var wyyx: Vector4f {
        return Vector4f(self.w, self.y, self.y, self.x)
    }

    var wyyy: Vector4f {
        return Vector4f(self.w, self.y, self.y, self.y)
    }

    var wyyz: Vector4f {
        return Vector4f(self.w, self.y, self.y, self.z)
    }

    var wyyw: Vector4f {
        return Vector4f(self.w, self.y, self.y, self.w)
    }

    var wyzx: Vector4f {
        get { return Vector4f(self.w, self.y, self.z, self.x) }
        set (v) { self.w = v.x; self.y = v.y; self.z = v.z; self.x = v.w; }
    }

    var wyzy: Vector4f {
        return Vector4f(self.w, self.y, self.z, self.y)
    }

    var wyzz: Vector4f {
        return Vector4f(self.w, self.y, self.z, self.z)
    }

    var wyzw: Vector4f {
        return Vector4f(self.w, self.y, self.z, self.w)
    }

    var wywx: Vector4f {
        return Vector4f(self.w, self.y, self.w, self.x)
    }

    var wywy: Vector4f {
        return Vector4f(self.w, self.y, self.w, self.y)
    }

    var wywz: Vector4f {
        return Vector4f(self.w, self.y, self.w, self.z)
    }

    var wyww: Vector4f {
        return Vector4f(self.w, self.y, self.w, self.w)
    }

    var wzxx: Vector4f {
        return Vector4f(self.w, self.z, self.x, self.x)
    }

    var wzxy: Vector4f {
        get { return Vector4f(self.w, self.z, self.x, self.y) }
        set (v) { self.w = v.x; self.z = v.y; self.x = v.z; self.y = v.w; }
    }

    var wzxz: Vector4f {
        return Vector4f(self.w, self.z, self.x, self.z)
    }

    var wzxw: Vector4f {
        return Vector4f(self.w, self.z, self.x, self.w)
    }

    var wzyx: Vector4f {
        get { return Vector4f(self.w, self.z, self.y, self.x) }
        set (v) { self.w = v.x; self.z = v.y; self.y = v.z; self.x = v.w; }
    }

    var wzyy: Vector4f {
        return Vector4f(self.w, self.z, self.y, self.y)
    }

    var wzyz: Vector4f {
        return Vector4f(self.w, self.z, self.y, self.z)
    }

    var wzyw: Vector4f {
        return Vector4f(self.w, self.z, self.y, self.w)
    }

    var wzzx: Vector4f {
        return Vector4f(self.w, self.z, self.z, self.x)
    }

    var wzzy: Vector4f {
        return Vector4f(self.w, self.z, self.z, self.y)
    }

    var wzzz: Vector4f {
        return Vector4f(self.w, self.z, self.z, self.z)
    }

    var wzzw: Vector4f {
        return Vector4f(self.w, self.z, self.z, self.w)
    }

    var wzwx: Vector4f {
        return Vector4f(self.w, self.z, self.w, self.x)
    }

    var wzwy: Vector4f {
        return Vector4f(self.w, self.z, self.w, self.y)
    }

    var wzwz: Vector4f {
        return Vector4f(self.w, self.z, self.w, self.z)
    }

    var wzww: Vector4f {
        return Vector4f(self.w, self.z, self.w, self.w)
    }

    var wwxx: Vector4f {
        return Vector4f(self.w, self.w, self.x, self.x)
    }

    var wwxy: Vector4f {
        return Vector4f(self.w, self.w, self.x, self.y)
    }

    var wwxz: Vector4f {
        return Vector4f(self.w, self.w, self.x, self.z)
    }

    var wwxw: Vector4f {
        return Vector4f(self.w, self.w, self.x, self.w)
    }

    var wwyx: Vector4f {
        return Vector4f(self.w, self.w, self.y, self.x)
    }

    var wwyy: Vector4f {
        return Vector4f(self.w, self.w, self.y, self.y)
    }

    var wwyz: Vector4f {
        return Vector4f(self.w, self.w, self.y, self.z)
    }

    var wwyw: Vector4f {
        return Vector4f(self.w, self.w, self.y, self.w)
    }

    var wwzx: Vector4f {
        return Vector4f(self.w, self.w, self.z, self.x)
    }

    var wwzy: Vector4f {
        return Vector4f(self.w, self.w, self.z, self.y)
    }

    var wwzz: Vector4f {
        return Vector4f(self.w, self.w, self.z, self.z)
    }

    var wwzw: Vector4f {
        return Vector4f(self.w, self.w, self.z, self.w)
    }

    var wwwx: Vector4f {
        return Vector4f(self.w, self.w, self.w, self.x)
    }

    var wwwy: Vector4f {
        return Vector4f(self.w, self.w, self.w, self.y)
    }

    var wwwz: Vector4f {
        return Vector4f(self.w, self.w, self.w, self.z)
    }

    var wwww: Vector4f {
        return Vector4f(self.w)
    }

}
