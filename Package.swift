// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "VaporStencil",
    platforms: [
            .macOS(.v10_15),
            .iOS(.v13),
            .tvOS(.v13),
            .watchOS(.v6)
        ],
    dependencies: [
        .package(url: "https://github.com/kylef/Stencil.git", from: "0.15.1"),
        .package(url: "https://github.com/tannernelson/vapor.git", from: "2.0.0")
    ],
    targets: [
        .target(name: "vapor-stencil", dependencies: ["Stencil", .product(name: "Vapor", package: "vapor")], path: "Sources")
    ],
    swiftLanguageModes: [.v6]
)
