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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.51/MapLibre.xcframework.zip",
            checksum: "1665db990c67cc1fa16a91f4807e4321f17b6cc08eca46d64a21c5d0097c99df")
    ]
)
