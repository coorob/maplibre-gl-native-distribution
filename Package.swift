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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.80-rc1/MapLibre.xcframework.zip",
            checksum: "55a2661226cc6e985bf3bf0720ad30e8e45a787042421791cb4efc721e7fb6fd")
    ]
)
