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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.44/MapLibre.xcframework.zip",
            checksum: "fcf070916f3ff9fdeb41b3bddbb0311fa5287a6082e8f28f6555bd4fa336fd36")
    ]
)
