// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// swift-arch-target: DPCommonUI
// swift-arch-layer: Framework
// swift-arch-level: 1

// swift-arch-target: DPCommonUIUtilities
// swift-arch-layer: Foundation
// swift-arch-level: 2

let package = Package(
    name: "DPCommonUI",
    products: [
        .library(
            name: "DPCommonUI",
            targets: ["DPCommonUI"]
        ),
        .library(
            name: "DPCommonUIUtilities",
            targets: ["DPCommonUIUtilities"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/onevcat/Kingfisher", exact: "7.12.0"),
        .package(path: "../DPCommonAssets"),
    ],
    targets: [
        .target(
            name: "DPCommonUI",
            dependencies: [
                .product(name: "Kingfisher", package: "Kingfisher"),
                .product(name: "DPCommonAssets", package: "DPCommonAssets"),
            ]
        ),
        .target(
            name: "DPCommonUIUtilities"
        ),
        .testTarget(
            name: "DPCommonUITests",
            dependencies: ["DPCommonUI"]
        ),
    ]
)
