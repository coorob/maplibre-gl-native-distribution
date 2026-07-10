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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.42/MapLibre.xcframework.zip",
            checksum: "6a151660a70572f1d2e12a32bd7d20449c9ffe91b7e51da7c5123e3d8dfd42e1")
    ]
)
