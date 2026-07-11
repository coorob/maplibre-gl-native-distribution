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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.62/MapLibre.xcframework.zip",
            checksum: "62db84cbed33f1e3181334a8d76636b7d2d1d22362a7459c1d62d588a247fc56")
    ]
)
