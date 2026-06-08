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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.26.0-traska.11/MapLibre.xcframework.zip",
            checksum: "6b52ff898f6629b299ac95c1c99cdd8b9ed0fdd83afb07f5b0f84c4e8704d7c2")
    ]
)
