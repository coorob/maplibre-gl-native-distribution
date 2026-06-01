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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.26.0-traska.3/MapLibre.xcframework.zip",
            checksum: "127bf1cae2b2a50c2e240fb0bb329657e3a6a91968046fb5c11b8885fc8e6f8c")
    ]
)
