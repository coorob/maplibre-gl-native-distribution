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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.97/MapLibre.xcframework.zip",
            checksum: "01757c27c496c683c78b59954d7fdb0cfeac0bc18f90c6000686034737393d4f")
    ]
)
