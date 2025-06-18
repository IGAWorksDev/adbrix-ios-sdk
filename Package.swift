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
            url: "https://github.com/IGAWorksDev/adbrix-ios-sdk/releases/download/3.0.2/AdbrixSDK.xcframework.zip",
            checksum: "1a03e7feaa6162d710ab5ef012d244da175fdfe6031e2fbee788bd271deb491e"
        )
    ]
)
