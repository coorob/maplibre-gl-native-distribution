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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.26.0-traska.8/MapLibre.xcframework.zip",
            checksum: "be194a603955c1d6020f139aac7c5e2547da76f0e02053de977e8eda3d7d6ec5")
    ]
)
