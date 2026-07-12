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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.69/MapLibre.xcframework.zip",
            checksum: "39478dc618fb266edf6b51c22dc6709ce07c113a97bd63f5e848d81752259430")
    ]
)
