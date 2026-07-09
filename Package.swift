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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.21/MapLibre.xcframework.zip",
            checksum: "f7015ca7b8ca4ef60a10e931ba6676509b8aa20aa530f2f3e74f8d225ada8847")
    ]
)
