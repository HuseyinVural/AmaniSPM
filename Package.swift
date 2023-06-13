// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AmaniSPM",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AmaniSPM",
            targets: ["AmaniVideoSDK"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/socketio/socket.io-client-swift", .upToNextMinor(from: "15.0.0")),
        .package(url: "https://github.com/stasel/WebRTC.git", branch: "latest")
    ],
    targets: [
        .binaryTarget(
            name: "AmaniVideoSDK",
            url: "https://github.com/AmaniTechnologiesLtd/Public-IOS-SDK/blob/main/Carthage/AmaniVideoSDK/1.0.0/AmaniVideoSDK.xcframework.zip?raw=true",
            checksum: "d6f940c40060529d4854a306dd48ec573bce383028ae7aade62cec8522668cc3")
    ]
)
