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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.16b/MapLibre.xcframework.zip",
            checksum: "8f81b74f078f3bc97d1c679b31cdd99245fa89389410cd87c867b812640b3c05")
    ]
)
