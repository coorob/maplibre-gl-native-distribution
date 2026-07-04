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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.5/MapLibre.xcframework.zip",
            checksum: "32843a522ff8311037ebedba332c640c1d40392ac48db08d34fb59dfbc59cdc9")
    ]
)
