// swift-tools-version: 5.8
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
            targets: ["Amani"])
    ],
    dependencies: [
        .package(url: "https://github.com/socketio/socket.io-client-swift", .upToNextMinor(from: "15.0.0")),
        .package(url: "https://github.com/stasel/WebRTC.git", .upToNextMajor(from: "114.0.0"))
    ],
    targets: [
        .binaryTarget(
            name: "Amani",
            path: "./Amani.xcframework"
        )
    ]
)
