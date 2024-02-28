// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CardIO",
    platforms: [ .iOS(.v13) ],
    products: [
        .library(name: "CardIO", 
                 targets: ["CardIOScanner"])
    ],
    targets: [
        .target(
            name: "CardIOScanner",
            dependencies: [.target(name: "CardIO")],
            resources: [.copy("Resources/PrivacyInfo.xcprivacy")]),
        .binaryTarget(name: "CardIO",
                      path: "./CardIO.xcframework")
    ]
)
