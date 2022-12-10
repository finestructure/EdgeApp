// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "EdgeApp",
    dependencies: [
        .package(url: "https://github.com/AndrewBarba/swift-compute-runtime", from: "1.0.0"),
        .package(url: "https://github.com/soto-project/soto-s3-file-transfer.git", from: "0.4.2"),
    ],
    targets: [
        .executableTarget(
            name: "EdgeApp",
            dependencies: [
                .product(name: "Compute", package: "swift-compute-runtime"),
                .product(name: "SotoS3FileTransfer", package: "soto-s3-file-transfer"),
            ]),
        .testTarget(
            name: "EdgeAppTests",
            dependencies: ["EdgeApp"]),
    ]
)
