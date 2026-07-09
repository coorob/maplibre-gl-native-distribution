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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.25/MapLibre.xcframework.zip",
            checksum: "68c1cf4a5ff8c4fa5ce808485c4ed6cc57a1ca426e98d0a995a524486dc71763")
    ]
)
