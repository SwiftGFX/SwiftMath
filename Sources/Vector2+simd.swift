#if !NOSIMD
    
    import simd
    
    public struct Vector2f {
        var d: float2
    }
    
    public extension Vector2f {
        
        //MARK:- initializers
        
        public init() {
            self.d = float2()
        }
        
        public init(_ scalar: Float) {
            self.d = float2(scalar)
        }
        
        public init(_ x: Float, _ y: Float) {
            self.d = float2(x, y)
        }
        
        public init(x: Float, y: Float) {
            self.d = float2(x, y)
        }

        
        //MARK:- functions
        
        public func normalize() -> Vector2f {
            return unsafeBitCast(simd.normalize(d), to: Vector2f.self)
        }
        
        public func dot(_ x: Vector2f) -> Float {
            return simd.dot(d, x.d)
        }
        
        public func cross(_ x: Vector2f) -> Vector2f {
            return unsafeBitCast(simd.cross(d, x.d), to: Vector2f.self)
        }
        
        /// Length (two-norm or “Euclidean norm”) of x.
        public func length() -> Float {
            return simd.length(d)
        }
        
        /// Length of x, squared. This is more efficient to compute than the length,
        /// so you should use it if you only need to compare lengths to each other.
        /// I.e. instead of writing:
        ///
        /// `if (length(x) < length(y)) { … }`
        ///
        /// use:
        ///
        /// `if (length_squared(x) < length_squared(y)) { … }`
        ///
        /// Doing it this way avoids one or two square roots, which is a fairly costly operation.
        public func lengthSquared() -> Float {
            return simd.length_squared(d)
        }
        
        //MARK:- operators
        
        public static prefix func -(lhs: Vector2f) -> Vector2f {
            return unsafeBitCast(-lhs.d, to: Vector2f.self)
        }
        
        public static func -(lhs: Vector2f, rhs: Vector2f) -> Vector2f {
            return unsafeBitCast(lhs.d - rhs.d, to: Vector2f.self)
        }
        
        public static func *(lhs: Vector2f, rhs: Float) -> Vector2f {
            return unsafeBitCast(lhs.d * rhs, to: Vector2f.self)
        }
        
        public static func *(lhs: Vector2f, rhs: Vector2f) -> Vector2f {
            return unsafeBitCast(lhs.d * rhs.d, to: Vector2f.self)
        }
    }
    
#endif
