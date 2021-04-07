// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CMRSSIView",
    products: [
        .library(
            name: "CMRSSIView",
            targets: ["CMRSSIView"]),
    ],
    targets: [
        .target(
            name: "CMRSSIView",
            path: ".")
    ]
)
