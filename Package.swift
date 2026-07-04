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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.6/MapLibre.xcframework.zip",
            checksum: "c1d41eb320e3e126372401906d11168d03ede760f8ea9aee8374fa5741f62bdb")
    ]
)
