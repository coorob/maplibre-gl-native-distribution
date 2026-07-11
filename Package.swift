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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.50/MapLibre.xcframework.zip",
            checksum: "167a073f0c331d8cf3b52b5937e88dfa04f9838e4508611ba446ee04c311ac30")
    ]
)
