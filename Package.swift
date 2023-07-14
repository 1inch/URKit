// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "URKit",
    platforms: [
        .macOS(.v11),
        .iOS(.v14),
        .macCatalyst(.v14)
    ],
    products: [
        .library(
            name: "URKit",
            targets: ["URKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/BlockchainCommons/BCSwiftDCBOR", from: "0.2.0"),
    ],
    targets: [
        .target(
            name: "URKit",
            dependencies: [
                .product(name: "DCBOR", package: "BCSwiftDCBOR"),
            ]
        ),
        .testTarget(
            name: "URKitTests",
            dependencies: [
                "URKit",
            ]
        ),
    ]
)
