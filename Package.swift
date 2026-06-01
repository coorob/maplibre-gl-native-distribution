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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.26.0-traska.2/MapLibre.xcframework.zip",
            checksum: "91c43fd072e4e90f8943e7b8aa27a36544e11cd67c36032b0464de63ee2bf8f5")
    ]
)
