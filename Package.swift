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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.28/MapLibre.xcframework.zip",
            checksum: "7b32103e3f2bc1b82af100f9cc84efbdbd775047eb6f019c2bd4e3fc09bc8354")
    ]
)
