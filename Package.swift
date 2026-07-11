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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.49/MapLibre.xcframework.zip",
            checksum: "8fcd3ab1573190dcc67d74b3cc174f49ac9a9ddf617201fbc1e3cca23faeae00")
    ]
)
