// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "SwiftMath",
    products: [
        .library(
            name: "SwiftMath",
            type: .static,
            targets: ["SwiftMath"])
    ],
    targets: [
        .target(
            name: "SwiftMath",
            path: ".",
            sources: ["Sources"])
    ]
)
