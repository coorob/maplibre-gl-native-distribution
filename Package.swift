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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.31/MapLibre.xcframework.zip",
            checksum: "7a6f16ac75d806e61242e04338ce0b092dcea24b51538c7afd0892e30f6d8510")
    ]
)
