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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.20/MapLibre.xcframework.zip",
            checksum: "00097b20022507ec14295ed5ab30eeccc95e934ee257a6d637fdfc248fd1cb74")
    ]
)
