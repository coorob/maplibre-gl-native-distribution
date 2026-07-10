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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.40/MapLibre.xcframework.zip",
            checksum: "51421a1a3361bea793f8590795b1b36741b5ac7fc7023d8f6172b77dcd6afae7")
    ]
)
