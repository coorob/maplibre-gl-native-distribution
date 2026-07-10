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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.34/MapLibre.xcframework.zip",
            checksum: "bb23e7b2e706262ce4b8fe45675ee334e3cb0e3fe720c5915a57d223b745e968")
    ]
)
