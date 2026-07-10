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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.30/MapLibre.xcframework.zip",
            checksum: "9b3d65cfef9cbb9cd214bf4baa8bcbd40f5d165326b4c843c81c1d57c7cda8fc")
    ]
)
