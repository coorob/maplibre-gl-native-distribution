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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.22/MapLibre.xcframework.zip",
            checksum: "a6a1df9eea48addf94173125969ac785a4ea26e828b71fa8825657e4ae8c5a6e")
    ]
)
