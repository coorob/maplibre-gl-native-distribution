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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.46/MapLibre.xcframework.zip",
            checksum: "47769bf1b7e1fa3f8004f51c3951bb89552d6c4d5201374c799fb65a9f5d0922")
    ]
)
