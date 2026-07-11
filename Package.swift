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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.66/MapLibre.xcframework.zip",
            checksum: "04b87c867e5300fc59cf96bea405a2f3e67486c007a5fc236b0f5fa9e0214bb6")
    ]
)
