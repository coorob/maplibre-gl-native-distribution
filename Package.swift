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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.48/MapLibre.xcframework.zip",
            checksum: "b0079ac7f5f7d844ed697ea05d10fcb55094b768e47721b88b8ea451c50f8cc9")
    ]
)
