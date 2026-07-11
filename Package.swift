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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.47/MapLibre.xcframework.zip",
            checksum: "0db91b5721f7f1617746f60370976d2cddfe4d90140ec38e92149bfefb40642a")
    ]
)
