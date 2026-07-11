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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.52/MapLibre.xcframework.zip",
            checksum: "49b47e6d9259496a2ffaf7b90766b17c0e5cad107119240988aa7d3640f1e9dc")
    ]
)
