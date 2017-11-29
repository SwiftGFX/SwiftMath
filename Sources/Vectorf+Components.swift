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

public extension VectorfXYAccess {
    
    public var xx: Vector2f{
        return Vector2f(self.x)
    }
    
    public var xy: Vector2f{
        get { return Vector2f(x, y) }
        set (v) { self.x = v.x; self.y = v.y }
    }
    
    public var yx: Vector2f{
        get { return Vector2f(y, x) }
        set (v) { self.x = v.y; self.y = v.x }
    }
    
    public var yy: Vector2f{
        return Vector2f(self.y)
    }
    
}

public extension VectorfXYZAccess {
    
    public var xxx: Vector3f {
        return Vector3f(self.x)
    }
    
    public var xxy: Vector3f {
        return Vector3f(x, x, y)
    }
    
    public var xxz: Vector3f {
        return Vector3f(x, x, z)
    }
    
    public var xyx: Vector3f {
        return Vector3f(x, y, x)
    }
    
    public var xyy: Vector3f {
        return Vector3f(x, y, y)
    }
    
    public var xyz: Vector3f {
        get { return Vector3f(x, y, z) }
        set (v) { self.x = v.x; self.y = v.y; self.z = v.z }
    }
    
    public var xzx: Vector3f {
        return Vector3f(x, z, x)
    }
    
    public var xzy: Vector3f {
        get { return Vector3f(x, z, y) }
        set (v) { self.x = v.x; self.y = v.z; self.z = v.y }
    }
    
    public var xzz: Vector3f {
        return Vector3f(x, z, z)
    }
    
    public var yxx: Vector3f {
        return Vector3f(y, x, x)
    }
    
    public var yxy: Vector3f {
        return Vector3f(y, x, y)
    }
    
    public var yxz: Vector3f {
        get { return Vector3f(y, x, z) }
        set (v) { self.x = v.y; self.y = v.x; self.z = v.z }
    }
    
    public var yyx: Vector3f {
        return Vector3f(y, y, x)
    }
    
    public var yyy: Vector3f {
        return Vector3f(self.y)
    }
    
    public var yyz: Vector3f {
        return Vector3f(y, y, z)
    }
    
    public var yzx: Vector3f {
        get { return Vector3f(y, z, x) }
        set (v) { self.x = v.y; self.y = v.z; self.z = v.x }
    }
    
    public var yzy: Vector3f {
        return Vector3f(y, z, y)
    }
    
    public var yzz: Vector3f {
        return Vector3f(y, z, z)
    }
    
    public var zxx: Vector3f {
        return Vector3f(z, x, x)
    }
    
    public var zxy: Vector3f {
        get { return Vector3f(z, x, y) }
        set (v) { self.x = v.z; self.y = v.x; self.z = v.y }
    }
    
    public var zxz: Vector3f {
        return Vector3f(z, x, z)
    }
    
    public var zyx: Vector3f {
        get { return Vector3f(z, y, x) }
        set (v) { self.x = v.z; self.y = v.y; self.z = v.x }
    }
    
    public var zyy: Vector3f {
        return Vector3f(z, y, y)
    }
    
    public var zyz: Vector3f {
        return Vector3f(z, y, z)
    }
    
    public var zzx: Vector3f {
        return Vector3f(z, z, x)
    }
    
    public var zzy: Vector3f {
        return Vector3f(z, z, y)
    }
    
    public var zzz: Vector3f {
        return Vector3f(self.z)
    }
    
}

public extension VectorfXYZWAccess {
    
    public var xxxx: Vector4f {
        return Vector4f(self.x)
    }
    
    public var xxxy: Vector4f {
        return Vector4f(x, x, x, y)
    }
    
    public var xxxz: Vector4f {
        return Vector4f(x, x, x, z)
    }
    
    public var xxxw: Vector4f {
        return Vector4f(x, x, x, w)
    }
    
    public var xxyx: Vector4f {
        return Vector4f(x, x, y, x)
    }
    
    public var xxyy: Vector4f {
        return Vector4f(x, x, y, y)
    }
    
    public var xxyz: Vector4f {
        return Vector4f(x, x, y, z)
    }
    
    public var xxyw: Vector4f {
        return Vector4f(x, x, y, w)
    }
    
    public var xxzx: Vector4f {
        return Vector4f(x, x, z, x)
    }
    
    public var xxzy: Vector4f {
        return Vector4f(x, x, z, y)
    }
    
    public var xxzz: Vector4f {
        return Vector4f(x, x, z, z)
    }
    
    public var xxzw: Vector4f {
        return Vector4f(x, x, z, w)
    }
    
    public var xxwx: Vector4f {
        return Vector4f(x, x, w, x)
    }
    
    public var xxwy: Vector4f {
        return Vector4f(x, x, w, y)
    }
    
    public var xxwz: Vector4f {
        return Vector4f(x, x, w, z)
    }
    
    public var xxww: Vector4f {
        return Vector4f(x, x, w, w)
    }
    
    public var xyxx: Vector4f {
        return Vector4f(x, y, x, x)
    }
    
    public var xyxy: Vector4f {
        return Vector4f(x, y, x, y)
    }
    
    public var xyxz: Vector4f {
        return Vector4f(x, y, x, z)
    }
    
    public var xyxw: Vector4f {
        return Vector4f(x, y, x, w)
    }
    
    public var xyyx: Vector4f {
        return Vector4f(x, y, y, x)
    }
    
    public var xyyy: Vector4f {
        return Vector4f(x, y, y, y)
    }
    
    public var xyyz: Vector4f {
        return Vector4f(x, y, y, z)
    }
    
    public var xyyw: Vector4f {
        return Vector4f(x, y, y, w)
    }
    
    public var xyzx: Vector4f {
        return Vector4f(x, y, z, x)
    }
    
    public var xyzy: Vector4f {
        return Vector4f(x, y, z, y)
    }
    
    public var xyzz: Vector4f {
        return Vector4f(x, y, z, z)
    }
    
    public var xyzw: Vector4f {
        get { return Vector4f(x, y, z, w) }
        set (v) { self.x = v.x; self.y = v.y; self.z = v.z; self.w = v.w }
    }
    
    public var xywx: Vector4f {
        return Vector4f(x, y, w, x)
    }
    
    public var xywy: Vector4f {
        return Vector4f(x, y, w, y)
    }
    
    public var xywz: Vector4f {
        get { return Vector4f(x, y, w, z) }
        set (v) { self.x = v.x; self.y = v.y; self.z = v.w; self.w = v.z }
    }
    
    public var xyww: Vector4f {
        return Vector4f(x, y, w, w)
    }
    
    public var xzxx: Vector4f {
        return Vector4f(x, z, x, x)
    }
    
    public var xzxy: Vector4f {
        return Vector4f(x, z, x, y)
    }
    
    public var xzxz: Vector4f {
        return Vector4f(x, z, x, z)
    }
    
    public var xzxw: Vector4f {
        return Vector4f(x, z, x, w)
    }
    
    public var xzyx: Vector4f {
        return Vector4f(x, z, y, x)
    }
    
    public var xzyy: Vector4f {
        return Vector4f(x, z, y, y)
    }
    
    public var xzyz: Vector4f {
        return Vector4f(x, z, y, z)
    }
    
    public var xzyw: Vector4f {
        get { return Vector4f(x, z, y, w) }
        set (v) { self.x = v.x; self.y = v.z; self.z = v.y; self.w = v.w }
    }
    
    public var xzzx: Vector4f {
        return Vector4f(x, z, z, x)
    }
    
    public var xzzy: Vector4f {
        return Vector4f(x, z, z, y)
    }
    
    public var xzzz: Vector4f {
        return Vector4f(x, z, z, z)
    }
    
    public var xzzw: Vector4f {
        return Vector4f(x, z, z, w)
    }
    
    public var xzwx: Vector4f {
        return Vector4f(x, z, w, x)
    }
    
    public var xzwy: Vector4f {
        get { return Vector4f(x, z, w, y) }
        set (v) { self.x = v.x; self.y = v.z; self.z = v.w; self.w = v.y }
    }
    
    public var xzwz: Vector4f {
        return Vector4f(x, z, w, z)
    }
    
    public var xzww: Vector4f {
        return Vector4f(x, z, w, w)
    }
    
    public var xwxx: Vector4f {
        return Vector4f(x, w, x, x)
    }
    
    public var xwxy: Vector4f {
        return Vector4f(x, w, x, y)
    }
    
    public var xwxz: Vector4f {
        return Vector4f(x, w, x, z)
    }
    
    public var xwxw: Vector4f {
        return Vector4f(x, w, x, w)
    }
    
    public var xwyx: Vector4f {
        return Vector4f(x, w, y, x)
    }
    
    public var xwyy: Vector4f {
        return Vector4f(x, w, y, y)
    }
    
    public var xwyz: Vector4f {
        get { return Vector4f(x, w, y, z) }
        set (v) { self.x = v.x; self.y = v.w; self.z = v.y; self.w = v.z }
    }
    
    public var xwyw: Vector4f {
        return Vector4f(x, w, y, w)
    }
    
    public var xwzx: Vector4f {
        return Vector4f(x, w, z, x)
    }
    
    public var xwzy: Vector4f {
        get { return Vector4f(x, w, z, y) }
        set (v) { self.x = v.x; self.y = v.w; self.z = v.z; self.w = v.y }
    }
    
    public var xwzz: Vector4f {
        return Vector4f(x, w, z, z)
    }
    
    public var xwzw: Vector4f {
        return Vector4f(x, w, z, w)
    }
    
    public var xwwx: Vector4f {
        return Vector4f(x, w, w, x)
    }
    
    public var xwwy: Vector4f {
        return Vector4f(x, w, w, y)
    }
    
    public var xwwz: Vector4f {
        return Vector4f(x, w, w, z)
    }
    
    public var xwww: Vector4f {
        return Vector4f(x, w, w, w)
    }
    
    public var yxxx: Vector4f {
        return Vector4f(y, x, x, x)
    }
    
    public var yxxy: Vector4f {
        return Vector4f(y, x, x, y)
    }
    
    public var yxxz: Vector4f {
        return Vector4f(y, x, x, z)
    }
    
    public var yxxw: Vector4f {
        return Vector4f(y, x, x, w)
    }
    
    public var yxyx: Vector4f {
        return Vector4f(y, x, y, x)
    }
    
    public var yxyy: Vector4f {
        return Vector4f(y, x, y, y)
    }
    
    public var yxyz: Vector4f {
        return Vector4f(y, x, y, z)
    }
    
    public var yxyw: Vector4f {
        return Vector4f(y, x, y, w)
    }
    
    public var yxzx: Vector4f {
        return Vector4f(y, x, z, x)
    }
    
    public var yxzy: Vector4f {
        return Vector4f(y, x, z, y)
    }
    
    public var yxzz: Vector4f {
        return Vector4f(y, x, z, z)
    }
    
    public var yxzw: Vector4f {
        get { return Vector4f(y, x, z, w) }
        set (v) { self.x = v.y; self.y = v.x; self.z = v.z; self.w = v.w }
    }
    
    public var yxwx: Vector4f {
        return Vector4f(y, x, w, x)
    }
    
    public var yxwy: Vector4f {
        return Vector4f(y, x, w, y)
    }
    
    public var yxwz: Vector4f {
        get { return Vector4f(y, x, w, z) }
        set (v) { self.x = v.y; self.y = v.x; self.z = v.w; self.w = v.z }
    }
    
    public var yxww: Vector4f {
        return Vector4f(y, x, w, w)
    }
    
    public var yyxx: Vector4f {
        return Vector4f(y, y, x, x)
    }
    
    public var yyxy: Vector4f {
        return Vector4f(y, y, x, y)
    }
    
    public var yyxz: Vector4f {
        return Vector4f(y, y, x, z)
    }
    
    public var yyxw: Vector4f {
        return Vector4f(y, y, x, w)
    }
    
    public var yyyx: Vector4f {
        return Vector4f(y, y, y, x)
    }
    
    public var yyyy: Vector4f {
        return Vector4f(self.y)
    }
    
    public var yyyz: Vector4f {
        return Vector4f(y, y, y, z)
    }
    
    public var yyyw: Vector4f {
        return Vector4f(y, y, y, w)
    }
    
    public var yyzx: Vector4f {
        return Vector4f(y, y, z, x)
    }
    
    public var yyzy: Vector4f {
        return Vector4f(y, y, z, y)
    }
    
    public var yyzz: Vector4f {
        return Vector4f(y, y, z, z)
    }
    
    public var yyzw: Vector4f {
        return Vector4f(y, y, z, w)
    }
    
    public var yywx: Vector4f {
        return Vector4f(y, y, w, x)
    }
    
    public var yywy: Vector4f {
        return Vector4f(y, y, w, y)
    }
    
    public var yywz: Vector4f {
        return Vector4f(y, y, w, z)
    }
    
    public var yyww: Vector4f {
        return Vector4f(y, y, w, w)
    }
    
    public var yzxx: Vector4f {
        return Vector4f(y, z, x, x)
    }
    
    public var yzxy: Vector4f {
        return Vector4f(y, z, x, y)
    }
    
    public var yzxz: Vector4f {
        return Vector4f(y, z, x, z)
    }
    
    public var yzxw: Vector4f {
        get { return Vector4f(y, z, x, w) }
        set (v) { self.x = v.y; self.y = v.z; self.z = v.x; self.w = v.w }
    }
    
    public var yzyx: Vector4f {
        return Vector4f(y, z, y, x)
    }
    
    public var yzyy: Vector4f {
        return Vector4f(y, z, y, y)
    }
    
    public var yzyz: Vector4f {
        return Vector4f(y, z, y, z)
    }
    
    public var yzyw: Vector4f {
        return Vector4f(y, z, y, w)
    }
    
    public var yzzx: Vector4f {
        return Vector4f(y, z, z, x)
    }
    
    public var yzzy: Vector4f {
        return Vector4f(y, z, z, y)
    }
    
    public var yzzz: Vector4f {
        return Vector4f(y, z, z, z)
    }
    
    public var yzzw: Vector4f {
        return Vector4f(y, z, z, w)
    }
    
    public var yzwx: Vector4f {
        get { return Vector4f(y, z, w, x) }
        set (v) { self.x = v.y; self.y = v.z; self.z = v.w; self.w = v.x }
    }
    
    public var yzwy: Vector4f {
        return Vector4f(y, z, w, y)
    }
    
    public var yzwz: Vector4f {
        return Vector4f(y, z, w, z)
    }
    
    public var yzww: Vector4f {
        return Vector4f(y, z, w, w)
    }
    
    public var ywxx: Vector4f {
        return Vector4f(y, w, x, x)
    }
    
    public var ywxy: Vector4f {
        return Vector4f(y, w, x, y)
    }
    
    public var ywxz: Vector4f {
        get { return Vector4f(y, w, x, z) }
        set (v) { self.x = v.y; self.y = v.w; self.z = v.x; self.w = v.z }
    }
    
    public var ywxw: Vector4f {
        return Vector4f(y, w, x, w)
    }
    
    public var ywyx: Vector4f {
        return Vector4f(y, w, y, x)
    }
    
    public var ywyy: Vector4f {
        return Vector4f(y, w, y, y)
    }
    
    public var ywyz: Vector4f {
        return Vector4f(y, w, y, z)
    }
    
    public var ywyw: Vector4f {
        return Vector4f(y, w, y, w)
    }
    
    public var ywzx: Vector4f {
        get { return Vector4f(y, w, z, x) }
        set (v) { self.x = v.y; self.y = v.w; self.z = v.z; self.w = v.x }
    }
    
    public var ywzy: Vector4f {
        return Vector4f(y, w, z, y)
    }
    
    public var ywzz: Vector4f {
        return Vector4f(y, w, z, z)
    }
    
    public var ywzw: Vector4f {
        return Vector4f(y, w, z, w)
    }
    
    public var ywwx: Vector4f {
        return Vector4f(y, w, w, x)
    }
    
    public var ywwy: Vector4f {
        return Vector4f(y, w, w, y)
    }
    
    public var ywwz: Vector4f {
        return Vector4f(y, w, w, z)
    }
    
    public var ywww: Vector4f {
        return Vector4f(y, w, w, w)
    }
    
    public var zxxx: Vector4f {
        return Vector4f(z, x, x, x)
    }
    
    public var zxxy: Vector4f {
        return Vector4f(z, x, x, y)
    }
    
    public var zxxz: Vector4f {
        return Vector4f(z, x, x, z)
    }
    
    public var zxxw: Vector4f {
        return Vector4f(z, x, x, w)
    }
    
    public var zxyx: Vector4f {
        return Vector4f(z, x, y, x)
    }
    
    public var zxyy: Vector4f {
        return Vector4f(z, x, y, y)
    }
    
    public var zxyz: Vector4f {
        return Vector4f(z, x, y, z)
    }
    
    public var zxyw: Vector4f {
        get { return Vector4f(z, x, y, w) }
        set (v) { self.x = v.z; self.y = v.x; self.z = v.y; self.w = v.w }
    }
    
    public var zxzx: Vector4f {
        return Vector4f(z, x, z, x)
    }
    
    public var zxzy: Vector4f {
        return Vector4f(z, x, z, y)
    }
    
    public var zxzz: Vector4f {
        return Vector4f(z, x, z, z)
    }
    
    public var zxzw: Vector4f {
        return Vector4f(z, x, z, w)
    }
    
    public var zxwx: Vector4f {
        return Vector4f(z, x, w, x)
    }
    
    public var zxwy: Vector4f {
        get { return Vector4f(z, x, w, y) }
        set (v) { self.x = v.z; self.y = v.x; self.z = v.w; self.w = v.y }
    }
    
    public var zxwz: Vector4f {
        return Vector4f(z, x, w, z)
    }
    
    public var zxww: Vector4f {
        return Vector4f(z, x, w, w)
    }
    
    public var zyxx: Vector4f {
        return Vector4f(z, y, x, x)
    }
    
    public var zyxy: Vector4f {
        return Vector4f(z, y, x, y)
    }
    
    public var zyxz: Vector4f {
        return Vector4f(z, y, x, z)
    }
    
    public var zyxw: Vector4f {
        get { return Vector4f(z, y, x, w) }
        set (v) { self.x = v.z; self.y = v.y; self.z = v.x; self.w = v.w }
    }
    
    public var zyyx: Vector4f {
        return Vector4f(z, y, y, x)
    }
    
    public var zyyy: Vector4f {
        return Vector4f(z, y, y, y)
    }
    
    public var zyyz: Vector4f {
        return Vector4f(z, y, y, z)
    }
    
    public var zyyw: Vector4f {
        return Vector4f(z, y, y, w)
    }
    
    public var zyzx: Vector4f {
        return Vector4f(z, y, z, x)
    }
    
    public var zyzy: Vector4f {
        return Vector4f(z, y, z, y)
    }
    
    public var zyzz: Vector4f {
        return Vector4f(z, y, z, z)
    }
    
    public var zyzw: Vector4f {
        return Vector4f(z, y, z, w)
    }
    
    public var zywx: Vector4f {
        get { return Vector4f(z, y, w, x) }
        set (v) { self.x = v.z; self.y = v.y; self.z = v.w; self.w = v.x }
    }
    
    public var zywy: Vector4f {
        return Vector4f(z, y, w, y)
    }
    
    public var zywz: Vector4f {
        return Vector4f(z, y, w, z)
    }
    
    public var zyww: Vector4f {
        return Vector4f(z, y, w, w)
    }
    
    public var zzxx: Vector4f {
        return Vector4f(z, z, x, x)
    }
    
    public var zzxy: Vector4f {
        return Vector4f(z, z, x, y)
    }
    
    public var zzxz: Vector4f {
        return Vector4f(z, z, x, z)
    }
    
    public var zzxw: Vector4f {
        return Vector4f(z, z, x, w)
    }
    
    public var zzyx: Vector4f {
        return Vector4f(z, z, y, x)
    }
    
    public var zzyy: Vector4f {
        return Vector4f(z, z, y, y)
    }
    
    public var zzyz: Vector4f {
        return Vector4f(z, z, y, z)
    }
    
    public var zzyw: Vector4f {
        return Vector4f(z, z, y, w)
    }
    
    public var zzzx: Vector4f {
        return Vector4f(z, z, z, x)
    }
    
    public var zzzy: Vector4f {
        return Vector4f(z, z, z, y)
    }
    
    public var zzzz: Vector4f {
        return Vector4f(self.z)
    }
    
    public var zzzw: Vector4f {
        return Vector4f(z, z, z, w)
    }
    
    public var zzwx: Vector4f {
        return Vector4f(z, z, w, x)
    }
    
    public var zzwy: Vector4f {
        return Vector4f(z, z, w, y)
    }
    
    public var zzwz: Vector4f {
        return Vector4f(z, z, w, z)
    }
    
    public var zzww: Vector4f {
        return Vector4f(z, z, w, w)
    }
    
    public var zwxx: Vector4f {
        return Vector4f(z, w, x, x)
    }
    
    public var zwxy: Vector4f {
        get { return Vector4f(z, w, x, y) }
        set (v) { self.x = v.z; self.y = v.w; self.z = v.x; self.w = v.y }
    }
    
    public var zwxz: Vector4f {
        return Vector4f(z, w, x, z)
    }
    
    public var zwxw: Vector4f {
        return Vector4f(z, w, x, w)
    }
    
    public var zwyx: Vector4f {
        get { return Vector4f(z, w, y, x) }
        set (v) { self.x = v.z; self.y = v.w; self.z = v.y; self.w = v.x }
    }
    
    public var zwyy: Vector4f {
        return Vector4f(z, w, y, y)
    }
    
    public var zwyz: Vector4f {
        return Vector4f(z, w, y, z)
    }
    
    public var zwyw: Vector4f {
        return Vector4f(z, w, y, w)
    }
    
    public var zwzx: Vector4f {
        return Vector4f(z, w, z, x)
    }
    
    public var zwzy: Vector4f {
        return Vector4f(z, w, z, y)
    }
    
    public var zwzz: Vector4f {
        return Vector4f(z, w, z, z)
    }
    
    public var zwzw: Vector4f {
        return Vector4f(z, w, z, w)
    }
    
    public var zwwx: Vector4f {
        return Vector4f(z, w, w, x)
    }
    
    public var zwwy: Vector4f {
        return Vector4f(z, w, w, y)
    }
    
    public var zwwz: Vector4f {
        return Vector4f(z, w, w, z)
    }
    
    public var zwww: Vector4f {
        return Vector4f(z, w, w, w)
    }
    
    public var wxxx: Vector4f {
        return Vector4f(w, x, x, x)
    }
    
    public var wxxy: Vector4f {
        return Vector4f(w, x, x, y)
    }
    
    public var wxxz: Vector4f {
        return Vector4f(w, x, x, z)
    }
    
    public var wxxw: Vector4f {
        return Vector4f(w, x, x, w)
    }
    
    public var wxyx: Vector4f {
        return Vector4f(w, x, y, x)
    }
    
    public var wxyy: Vector4f {
        return Vector4f(w, x, y, y)
    }
    
    public var wxyz: Vector4f {
        get { return Vector4f(w, x, y, z) }
        set (v) { self.x = v.w; self.y = v.x; self.z = v.y; self.w = v.z }
    }
    
    public var wxyw: Vector4f {
        return Vector4f(w, x, y, w)
    }
    
    public var wxzx: Vector4f {
        return Vector4f(w, x, z, x)
    }
    
    public var wxzy: Vector4f {
        get { return Vector4f(w, x, z, y) }
        set (v) { self.x = v.w; self.y = v.x; self.z = v.z; self.w = v.y }
    }
    
    public var wxzz: Vector4f {
        return Vector4f(w, x, z, z)
    }
    
    public var wxzw: Vector4f {
        return Vector4f(w, x, z, w)
    }
    
    public var wxwx: Vector4f {
        return Vector4f(w, x, w, x)
    }
    
    public var wxwy: Vector4f {
        return Vector4f(w, x, w, y)
    }
    
    public var wxwz: Vector4f {
        return Vector4f(w, x, w, z)
    }
    
    public var wxww: Vector4f {
        return Vector4f(w, x, w, w)
    }
    
    public var wyxx: Vector4f {
        return Vector4f(w, y, x, x)
    }
    
    public var wyxy: Vector4f {
        return Vector4f(w, y, x, y)
    }
    
    public var wyxz: Vector4f {
        get { return Vector4f(w, y, x, z) }
        set (v) { self.x = v.w; self.y = v.y; self.z = v.x; self.w = v.z }
    }
    
    public var wyxw: Vector4f {
        return Vector4f(w, y, x, w)
    }
    
    public var wyyx: Vector4f {
        return Vector4f(w, y, y, x)
    }
    
    public var wyyy: Vector4f {
        return Vector4f(w, y, y, y)
    }
    
    public var wyyz: Vector4f {
        return Vector4f(w, y, y, z)
    }
    
    public var wyyw: Vector4f {
        return Vector4f(w, y, y, w)
    }
    
    public var wyzx: Vector4f {
        get { return Vector4f(w, y, z, x) }
        set (v) { self.x = v.w; self.y = v.y; self.z = v.z; self.w = v.x }
    }
    
    public var wyzy: Vector4f {
        return Vector4f(w, y, z, y)
    }
    
    public var wyzz: Vector4f {
        return Vector4f(w, y, z, z)
    }
    
    public var wyzw: Vector4f {
        return Vector4f(w, y, z, w)
    }
    
    public var wywx: Vector4f {
        return Vector4f(w, y, w, x)
    }
    
    public var wywy: Vector4f {
        return Vector4f(w, y, w, y)
    }
    
    public var wywz: Vector4f {
        return Vector4f(w, y, w, z)
    }
    
    public var wyww: Vector4f {
        return Vector4f(w, y, w, w)
    }
    
    public var wzxx: Vector4f {
        return Vector4f(w, z, x, x)
    }
    
    public var wzxy: Vector4f {
        get { return Vector4f(w, z, x, y) }
        set (v) { self.x = v.w; self.y = v.z; self.z = v.x; self.w = v.y }
    }
    
    public var wzxz: Vector4f {
        return Vector4f(w, z, x, z)
    }
    
    public var wzxw: Vector4f {
        return Vector4f(w, z, x, w)
    }
    
    public var wzyx: Vector4f {
        get { return Vector4f(w, z, y, x) }
        set (v) { self.x = v.w; self.y = v.z; self.z = v.y; self.w = v.x }
    }
    
    public var wzyy: Vector4f {
        return Vector4f(w, z, y, y)
    }
    
    public var wzyz: Vector4f {
        return Vector4f(w, z, y, z)
    }
    
    public var wzyw: Vector4f {
        return Vector4f(w, z, y, w)
    }
    
    public var wzzx: Vector4f {
        return Vector4f(w, z, z, x)
    }
    
    public var wzzy: Vector4f {
        return Vector4f(w, z, z, y)
    }
    
    public var wzzz: Vector4f {
        return Vector4f(w, z, z, z)
    }
    
    public var wzzw: Vector4f {
        return Vector4f(w, z, z, w)
    }
    
    public var wzwx: Vector4f {
        return Vector4f(w, z, w, x)
    }
    
    public var wzwy: Vector4f {
        return Vector4f(w, z, w, y)
    }
    
    public var wzwz: Vector4f {
        return Vector4f(w, z, w, z)
    }
    
    public var wzww: Vector4f {
        return Vector4f(w, z, w, w)
    }
    
    public var wwxx: Vector4f {
        return Vector4f(w, w, x, x)
    }
    
    public var wwxy: Vector4f {
        return Vector4f(w, w, x, y)
    }
    
    public var wwxz: Vector4f {
        return Vector4f(w, w, x, z)
    }
    
    public var wwxw: Vector4f {
        return Vector4f(w, w, x, w)
    }
    
    public var wwyx: Vector4f {
        return Vector4f(w, w, y, x)
    }
    
    public var wwyy: Vector4f {
        return Vector4f(w, w, y, y)
    }
    
    public var wwyz: Vector4f {
        return Vector4f(w, w, y, z)
    }
    
    public var wwyw: Vector4f {
        return Vector4f(w, w, y, w)
    }
    
    public var wwzx: Vector4f {
        return Vector4f(w, w, z, x)
    }
    
    public var wwzy: Vector4f {
        return Vector4f(w, w, z, y)
    }
    
    public var wwzz: Vector4f {
        return Vector4f(w, w, z, z)
    }
    
    public var wwzw: Vector4f {
        return Vector4f(w, w, z, w)
    }
    
    public var wwwx: Vector4f {
        return Vector4f(w, w, w, x)
    }
    
    public var wwwy: Vector4f {
        return Vector4f(w, w, w, y)
    }
    
    public var wwwz: Vector4f {
        return Vector4f(w, w, w, z)
    }
    
    public var wwww: Vector4f {
        return Vector4f(self.w)
    }
    
}
