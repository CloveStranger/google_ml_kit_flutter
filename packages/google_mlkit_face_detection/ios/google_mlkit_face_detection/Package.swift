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
            revision: "aac64bbc2601100ab28b2abb0a9a4cd910c55eec"
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
