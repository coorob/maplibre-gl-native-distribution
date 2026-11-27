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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.106/MapLibre.xcframework.zip",
            checksum: "35699f1556d6d9b7899231ce2bba2803b7c0f242550822047d5ade288105a0bb")
    ]
)
