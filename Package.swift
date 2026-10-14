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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.103/MapLibre.xcframework.zip",
            checksum: "21df33b5d18ab58502cbe5e38a3d6edf096d69bebd5aef9067af334db229d07b")
    ]
)
