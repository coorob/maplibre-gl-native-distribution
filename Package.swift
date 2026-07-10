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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.39/MapLibre.xcframework.zip",
            checksum: "d2f587fc8b45ab50a51845e8fe72524d6030a9cec5929f27dfb326dcb0306098")
    ]
)
