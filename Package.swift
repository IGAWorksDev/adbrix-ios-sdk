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
            url: "https://github.com/IGAWorksDev/adbrix-ios-sdk/releases/download/3.0.0/AdbrixSDK.xcframework.zip",
            checksum: "bb2e95c762c4e05cb3ad8297eee4f2b17c74b5523a0d26c0a50e352cc0442517"
        )
    ]
)
