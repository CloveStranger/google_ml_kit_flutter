// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "google-mlkit-face-detection",
    platforms: [
        .iOS("15.5")
    ],
    products: [
        .library(
            name: "google-mlkit-face-detection",
            targets: ["google_mlkit_face_detection"])
    ],
    dependencies: [
        .package(path: "../../../google_mlkit_commons/ios/google_mlkit_commons"),
        .package(
            url: "https://github.com/CloveStranger/google-mlkit-swiftpm",
            revision: "9b63ccf8d6b4a0bd1dc50aae5a6de0e974983b69"
        )
    ],
    targets: [
        .target(
            name: "google_mlkit_face_detection",
            dependencies: [
                .product(name: "MLKitFaceDetection", package: "google-mlkit-swiftpm"),
                .product(name: "google-mlkit-commons", package: "google_mlkit_commons")
            ],
            path: "Sources/google_mlkit_face_detection"
        )
    ]
)
