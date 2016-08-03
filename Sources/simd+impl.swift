#if NOSIMD
    
    // TODO: implement simd compatibility layer
    
    struct float2 : ExpressibleByArrayLiteral {
        var x: Float
        var y: Float
        
        /// Initialize to the zero vector.
        init() {
            self.x = 0
            self.y = 0
        }
        
        /// Initialize a vector with the specified elements.
        init(_ x: Float, _ y: Float) {
            self.x = x
            self.y = y
        }
        
        /// Initialize a vector with the specified elements.
        init(x: Float, y: Float) {
            
        }
        
        /// Initialize to a vector with all elements equal to `scalar`.
        init(_ scalar: Float) {
            
        }
        
        /// Initialize to a vector with elements taken from `array`.
        ///
        /// - Precondition: `array` must have exactly two elements.
        init(_ array: [Float]) {
            
        }
        
        /// Initialize using `arrayLiteral`.
        ///
        /// - Precondition: the array literal must exactly two elements.
        init(arrayLiteral elements: Float...) {
            
        }
        
        /// Access individual elements of the vector via subscript.
        public subscript(i: Int) -> Float {
            get {
                switch i {
                case 0:
                    return x
                case 1:
                    return y
                default:
                    fatalError("vector index out of range")
                }
            }
            
            set {
                switch i {
                case 0:
                    x = newValue
                case 1:
                    y = newValue
                default:
                    fatalError("vector index out of range")
                }
            }
        }
    }
    
#endif
