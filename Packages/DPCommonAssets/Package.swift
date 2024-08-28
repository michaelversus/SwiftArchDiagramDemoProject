// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// swift-arch-target: DPCommonAssets
// swift-arch-layer: Foundation
// swift-arch-level: 2

let package = Package(
    name: "DPCommonAssets",
    products: [
        .library(
            name: "DPCommonAssets",
            targets: ["DPCommonAssets"]
        ),
    ],
    targets: [
        .target(
            name: "DPCommonAssets"
        ),
        .testTarget(
            name: "DPCommonAssetsTests",
            dependencies: ["DPCommonAssets"]
        ),
    ]
)
