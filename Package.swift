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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.63/MapLibre.xcframework.zip",
            checksum: "a038c83c45b8ee67dba2e88c5a60e2eb9399288592888cd4521b849e925fd28f")
    ]
)
