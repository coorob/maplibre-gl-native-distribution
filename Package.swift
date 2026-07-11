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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.45/MapLibre.xcframework.zip",
            checksum: "2f1d9c4aafae4a63efda41085df6fbcba8e3093ea5ab916a3c687bda962e5fe4")
    ]
)
