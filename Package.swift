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
            checksum: "abb28a773e763c693797d44c91661265d99d0dbf113e250d2ade2fef9fb18373"
        )
    ]
)
