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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.37/MapLibre.xcframework.zip",
            checksum: "212377cc897823d7b43d8ae38461d60edc40d512e069b47a70c8bd6513fb9903")
    ]
)
