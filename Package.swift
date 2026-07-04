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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.11/MapLibre.xcframework.zip",
            checksum: "25dc4a6a469e5d84f70a1d7617e593fae52e1763d176b1878fd8ccd315223abd")
    ]
)
