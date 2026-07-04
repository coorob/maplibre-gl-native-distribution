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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.13/MapLibre.xcframework.zip",
            checksum: "116bc3877aa6b1919cd17972af28eb45f279cc1d62175ff7fd7ab97ed9fea929")
    ]
)
