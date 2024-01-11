// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GildedRose",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "GildedRose",
            targets: ["GildedRose"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/approvals/ApprovalTests.Swift",
            branch: "master"
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "GildedRose"),
        .testTarget(
            name: "GildedRoseTests",
            dependencies: [
                "GildedRose",
                "ApprovalTests.Swift"
            ]),
    ]
)
