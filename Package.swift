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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.26/MapLibre.xcframework.zip",
            checksum: "28cdc02eccf0bf4b009033ea81191e952e5ad846a305b4e32a8b3b4ba6ac5fd3")
    ]
)
