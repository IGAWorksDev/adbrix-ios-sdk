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
            url: "https://github.com/IGAWorksDev/adbrix-ios-sdk/releases/download/v3.2.4/AdbrixSDK.xcframework.zip",
            checksum: "51b62c07ece01aaa768e9a8901a85f9b9b57689d4474bec5d868dd24524b28a4"
        )
    ]
)
