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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.26.0-traska.14/MapLibre.xcframework.zip",
            checksum: "6ed6305b0737de02fb9e2768cba7d3a04ba50187f622f61ffe00fdd255524f52")
    ]
)
