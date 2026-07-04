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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.10/MapLibre.xcframework.zip",
            checksum: "8805cb423d0a75308f0b082a21ad8ce4097e543e44d28bf64857869e2c56c57b")
    ]
)
