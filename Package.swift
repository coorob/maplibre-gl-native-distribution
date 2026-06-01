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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.26.0-traska.7/MapLibre.xcframework.zip",
            checksum: "0012bd0c0b73c2efedce04979f4fa6fa8433fbadb18a01f10b00389c9b884944")
    ]
)
