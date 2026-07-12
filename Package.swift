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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.70/MapLibre.xcframework.zip",
            checksum: "a7ae4b533cb91538696c9be292c72531adb90f387d3c33879a13eb3809ed2c46")
    ]
)
