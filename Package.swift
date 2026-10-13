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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.99/MapLibre.xcframework.zip",
            checksum: "f93f6851ce31f72eff2cd25f4df0075935fc84519054504d6a2e332bdba3fb02")
    ]
)
