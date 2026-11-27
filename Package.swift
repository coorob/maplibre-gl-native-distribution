// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MapLibre Native",
    products: [
        .library(
            name: "MapLibre",
            targets: ["MapLibre"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "MapLibre",
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.108/MapLibre.xcframework.zip",
            checksum: "bfe6924fcb5450022c3b5c7e5da4643fea90e4900f7c0d0dc5ac119350560a86")
    ]
)
