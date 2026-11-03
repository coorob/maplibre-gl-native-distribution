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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.105/MapLibre.xcframework.zip",
            checksum: "6e01e48ef5b8fd6b9e75ee6665484a257524dfb7200de076762777e8ab2ec17e")
    ]
)
