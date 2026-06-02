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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.26.0-traska.9/MapLibre.xcframework.zip",
            checksum: "c83fb2b92e7c36298f9d1c4021715fdbc833080e6f37731a5d0dbd26d81394d7")
    ]
)
