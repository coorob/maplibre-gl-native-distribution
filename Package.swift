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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.26.0-traska.15/MapLibre.xcframework.zip",
            checksum: "72b756a1eebd64c98ab33222335e2e30a53f9f9dbae956232805f0d9c8c3ee85")
    ]
)
