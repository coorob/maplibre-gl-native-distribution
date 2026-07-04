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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.3/MapLibre.xcframework.zip",
            checksum: "37d7ed7a55e5ef36867e4a7556de6a59da689eeeb7076691bd7c942681f6a80a")
    ]
)
