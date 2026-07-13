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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.75/MapLibre.xcframework.zip",
            checksum: "37a9df56df298dae0f44e46de736d19f1dff37f624bb0b3766634cbe058903f0")
    ]
)
