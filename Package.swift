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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.9/MapLibre.xcframework.zip",
            checksum: "bad85bd64d6b9831f655f5d627e2dc81f7571247366a68b63fe2c8287f48d36d")
    ]
)
