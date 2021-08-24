// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SwiftMath",
    products: [
        .library(
            name: "SwiftMath",
            type: .static,
            targets: ["SwiftMath"]),
    ],
    targets: [
        .target(
            name: "SwiftMath",
            path: ".",
            exclude: ["SwiftMath.podspec", "README.md", "Tests", "LICENSE"],
            sources: ["Sources"],
            swiftSettings: [ .define("NOSIMD", .when(platforms: [.linux, .android, .windows, .wasi, ])),]),
        
        .testTarget(
            name: "SwiftMathTests",
            dependencies: ["SwiftMath"]),
    ]
)
