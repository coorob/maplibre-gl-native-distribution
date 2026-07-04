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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.15/MapLibre.xcframework.zip",
            checksum: "3b12c3c6a456620fb8c84401323bb5656b49753ed513ad946f9ff3c2345927c7")
    ]
)
