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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.26.0-traska.16/MapLibre.xcframework.zip",
            checksum: "a30b3f8f9abc2138e54cd9688aa47ecc5e2d27c4e1eb975c50492c5188930bd9")
    ]
)
