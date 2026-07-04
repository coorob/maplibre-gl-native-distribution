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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.14/MapLibre.xcframework.zip",
            checksum: "b4b22a4a691811c495898d50582c3605cb5e317020bda09e3492d0a8629dc653")
    ]
)
