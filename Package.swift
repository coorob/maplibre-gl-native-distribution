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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.2/MapLibre.xcframework.zip",
            checksum: "ce4e0bd1fabb3f5edd7ff54e1cd7f7ff2d954e293e434d79e61b21199045ce25")
    ]
)
