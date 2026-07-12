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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.72/MapLibre.xcframework.zip",
            checksum: "a4700743ecef7f9083c97db77ba6e8e8d862e8b3cdfc0d11d139fdfb5b3b6af7")
    ]
)
