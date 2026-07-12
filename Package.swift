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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.71/MapLibre.xcframework.zip",
            checksum: "8b8df5650a58324650f001d8ed96af34a93bfc9c9c369fb6b5a5ae441a92cbb7")
    ]
)
