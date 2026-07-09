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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.24/MapLibre.xcframework.zip",
            checksum: "1f71e7990d5d0853fb7513ef916d17ad3f018159c0b7cf06b9ae8a8926385a89")
    ]
)
