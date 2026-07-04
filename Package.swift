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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.12/MapLibre.xcframework.zip",
            checksum: "a923298ab2353845be9c8f7f6bcd3517eb3adecbf6b998e730871836e52950a5")
    ]
)
