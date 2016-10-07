import PackageDescription

let package = Package(
    name: "SwiftMath"
)

let ar = Product(name: "SwiftMath", type: .Library(.Static), modules: ["SwiftMath"])

products.append(ar)
