// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Domain",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Domain",
            targets: [
                "Domain",
            ]
        ),
    ],
    dependencies: [
        // Local
        .package(name: "Injected", path: "../Injected"),
    ],
    targets: [
        .target(
            name: "Domain",
            dependencies: [
                // Local
                .product(name: "Injected", package: "Injected"),
            ]
        ),
        .testTarget(
            name: "DomainTests",
            dependencies: ["Domain"]),
    ]
)
