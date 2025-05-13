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
            url: "https://github.com/IGAWorksDev/adbrix-ios-sdk/releases/download/3.0.1/AdbrixSDK.xcframework.zip",
            checksum: "a6c39e16eebb154468c1d11f5dbd04da184dd26b8f5f119d9a2318fe664fe3b6"
        )
    ]
)
