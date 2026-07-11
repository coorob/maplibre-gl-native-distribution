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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.68/MapLibre.xcframework.zip",
            checksum: "07748ea6f226a92bf5dc1d7a19c1522a9d3fdcd3d13b961888824cbf28e74749")
    ]
)
