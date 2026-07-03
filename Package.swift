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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.1/MapLibre.xcframework.zip",
            checksum: "efe73d09435207e8045b6910cb51a9c76790ea5e0c0b9c2da85249692c494997")
    ]
)
