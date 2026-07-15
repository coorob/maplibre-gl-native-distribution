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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.77/MapLibre.xcframework.zip",
            checksum: "27f49f10c0b0cace37b2b3d8f610b7f900952f6963203172a58794c7c75f97b8")
    ]
)
