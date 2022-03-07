// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let packageName = "CardIO"
let libraryName = "CardIO"

let package = Package(
    name: packageName,
    products: [
        .library(name: libraryName, targets: [libraryName])
    ],
    targets: [
        .binaryTarget(name: libraryName, path: "./CardIO.xcframework")
    ]
)
