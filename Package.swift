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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.59/MapLibre.xcframework.zip",
            checksum: "a9e4481d9434ca6af051d5d448f2fa334a6b8fcefb698ea281b065941dd42578")
    ]
)
