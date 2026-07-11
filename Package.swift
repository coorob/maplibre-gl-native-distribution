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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.57/MapLibre.xcframework.zip",
            checksum: "b5a50de00479e1fe5852fd22b4cbdf3031089d3556ba07970244c5a062b5f9fe")
    ]
)
