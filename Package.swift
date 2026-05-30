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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.26.0-traska.1/MapLibre.xcframework.zip",
            checksum: "cabf860b9a86c52499ea5c878d2661b4697cc092494b07218393494b2e45f8d1")
    ]
)
