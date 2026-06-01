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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.26.0-traska.6/MapLibre.xcframework.zip",
            checksum: "6a251f1d54c98f7c140c9249b45340c94dcdeb1fb6273d4f8a9a11ef30cbbe5a")
    ]
)
