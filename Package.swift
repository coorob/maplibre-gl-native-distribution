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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.98/MapLibre.xcframework.zip",
            checksum: "1a65e9bc83b5d2c9104cced1e008ba3303511224832fd64e897a3805c9521e7b")
    ]
)
