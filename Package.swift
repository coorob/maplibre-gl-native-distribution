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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.73/MapLibre.xcframework.zip",
            checksum: "cb491c30adff89af08ee0d5d88c4156b289a9219195642e2cb26ded70f03f886")
    ]
)
