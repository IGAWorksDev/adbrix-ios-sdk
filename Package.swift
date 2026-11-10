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
            url: "https://github.com/IGAWorksDev/adbrix-ios-sdk/releases/download/v3.2.5/AdbrixSDK.xcframework.zip",
            checksum: "cf10c9389d17b3445a6a505c56a68d4ff2b0f3651c773f0b23dbc3fd35b8e528"
        )
    ]
)
