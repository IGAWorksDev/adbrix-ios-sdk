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
            url: "https://github.com/IGAWorksDev/adbrix-ios-sdk/releases/download/v3.2.2/AdbrixSDK.xcframework.zip",
            checksum: "a4410b8bdf92fc71192cda7f7c30aec1a9020e415cd8f63491c86a094bff593e"
        )
    ]
)
