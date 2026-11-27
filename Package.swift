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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.107/MapLibre.xcframework.zip",
            checksum: "796d7da057643bc6d5c53fca9b1344a6f1599f54d88ff5b8cc56ee16d1a2e0cb")
    ]
)
