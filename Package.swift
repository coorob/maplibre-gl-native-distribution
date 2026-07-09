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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.23/MapLibre.xcframework.zip",
            checksum: "5bc694c403f13d1fe8374fc0bbd0cb271d6d06e4761aecb2b6b52348788e2d9c")
    ]
)
