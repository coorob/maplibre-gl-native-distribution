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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.32/MapLibre.xcframework.zip",
            checksum: "6494ea9d05897977a7b1db8d7b18a02607d36593c935e7646f6c3dd9040c7840")
    ]
)
