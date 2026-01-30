// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "vapor-stencil",
    platforms: [
            .macOS(.v10_15),
            .iOS(.v13),
            .tvOS(.v13),
            .watchOS(.v6)
        ],
    products: [
        .library(name: "vapor-stencil", targets: ["vapor-stencil"])
    ],
    dependencies: [
        .package(url: "https://github.com/kylef/Stencil.git", from: "0.15.1"),
        .package(url: "https://github.com/tannernelson/vapor.git", from: "4.121.1")
    ],
    targets: [
        .target(name: "vapor-stencil", dependencies: ["Stencil", .product(name: "Vapor", package: "vapor")], path: "Sources")
    ],
    swiftLanguageModes: [.v6]
)
