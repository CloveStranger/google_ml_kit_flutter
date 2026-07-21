// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "google-mlkit-commons",
    platforms: [
        .iOS("15.5")
    ],
    products: [
        .library(
            name: "google-mlkit-commons",
            targets: ["google_mlkit_commons"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/CloveStranger/google-mlkit-swiftpm",
            revision: "9b63ccf8d6b4a0bd1dc50aae5a6de0e974983b69"
        )
    ],
    targets: [
        .target(
            name: "google_mlkit_commons",
            dependencies: [
                // google-mlkit-swiftpm does not expose standalone MLKitVision or MLKitCommon
                // library products.
                .product(name: "MLKitBarcodeScanning", package: "google-mlkit-swiftpm")
            ],
            path: "Sources/google_mlkit_commons"
        )
    ]
)
