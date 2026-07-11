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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.56/MapLibre.xcframework.zip",
            checksum: "f315aa12cdc090549d1cd94109dad9d85910b725eb47163d6726a18ef7bb0787")
    ]
)
