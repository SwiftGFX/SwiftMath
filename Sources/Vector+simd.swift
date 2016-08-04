#if !NOSIMD
    
    import simd
    
    public protocol Vector {
        associatedtype VectorType
        
        var d: VectorType { get set }
        
        var length: Float { get }
        var lengthSquared: Float { get }
    }
    
    public extension Vector {
        public var length: Float {
            return simd.length(unsafeBitCast(d, to: VectorType.self))
        }
    }
    
#endif
