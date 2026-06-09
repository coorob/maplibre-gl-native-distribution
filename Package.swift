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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.26.0-traska.13/MapLibre.xcframework.zip",
            checksum: "9afc247151c08ddb03b260d52a7cb8e19b5a4db4283a80983f7bead280b19a56")
    ]
)
