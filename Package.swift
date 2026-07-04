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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.17/MapLibre.xcframework.zip",
            checksum: "d519c30e62289d16cba10191a438bbc47a67ab7e8a9b415fa2ed54442eef1676")
    ]
)
