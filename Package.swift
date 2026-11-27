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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.109/MapLibre.xcframework.zip",
            checksum: "d5ead4d00ef71d5d449dcd7d9b952c4c77d03c23b4cc71f290dbab2ee7132e92")
    ]
)
