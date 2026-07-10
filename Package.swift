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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.29/MapLibre.xcframework.zip",
            checksum: "b55a1277dc0b9dd1f8a36f687a490d568325f113b461543eeba3fd5fe33cf7f1")
    ]
)
