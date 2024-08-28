// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// swift-arch-target: DPNetworking
// swift-arch-layer: Foundation
// swift-arch-level: 2

let package = Package(
    name: "DPNetworking",
    products: [
        .library(
            name: "DPNetworking",
            targets: ["DPNetworking"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.9.1")
    ],
    targets: [
        .target(
            name: "DPNetworking",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire")
            ]
        ),
        .testTarget(
            name: "DPNetworkingTests",
            dependencies: ["DPNetworking"]
        ),
    ]
)
