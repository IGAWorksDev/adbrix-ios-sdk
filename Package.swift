// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdbrixSDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdbrixSDK",
            targets: ["AdbrixSDK"])
    ],
    targets: [
        .binaryTarget(
            name: "AdbrixSDK",
            url: "https://github.com/IGAWorksDev/adbrix-ios-sdk/releases/download/v3.2.3/AdbrixSDK.xcframework.zip",
            checksum: "5c30f0a5a1f0c957cea44ee7292faa82cfde666e8baf756bc897353e2bf4dc3a"
        )
    ]
)
