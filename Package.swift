// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "SwiftMath",
    products: [
        .library(
            name: "SwiftMath",
            targets: ["libSwiftMath"]),
    ],
    targets: [
        .target(
            name: "libSwiftMath",
            path: ".",
            sources: ["Sources"])
    ]
)
