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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.35/MapLibre.xcframework.zip",
            checksum: "af597ed6f00891e3045bff333945c5b3ea916e842c3dc190104d9b7ba8dc6595")
    ]
)
