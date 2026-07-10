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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.43/MapLibre.xcframework.zip",
            checksum: "870b4df12cf631bd5f448cf7cdbf3a06cc21fad0d217d4e73f9f5db51d8857a0")
    ]
)
