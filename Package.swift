// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "NutCase",
    platforms: [
        .macOS(.v13),
        .iOS(.v16),
        .tvOS(.v16),
        .watchOS(.v9),
    ],
    products: [
        .library(
            name: "NutCase",
            targets: ["NutCase"]),
    ],
    targets: [
        .target(
            name: "NutCase"),
        .testTarget(
            name: "NutCaseTests",
            dependencies: ["NutCase"]),
    ]
)
