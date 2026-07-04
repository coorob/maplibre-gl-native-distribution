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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.7/MapLibre.xcframework.zip",
            checksum: "f1fc8e4c705c7d07dbbe38aedb90bd29bbc7cbfcfe96296add80175251e08706")
    ]
)
