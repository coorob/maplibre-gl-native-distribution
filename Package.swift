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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.64/MapLibre.xcframework.zip",
            checksum: "22098feb4e47ddecafd2b2208b35a6c1639c7ece05f6e00bc7a12ccea2d477b5")
    ]
)
