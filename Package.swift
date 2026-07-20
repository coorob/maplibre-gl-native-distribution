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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.79-rc1/MapLibre.xcframework.zip",
            checksum: "380d4c938a7a3883b5b09a3145446306614c674f899ba1658f2557a1ed64d385")
    ]
)
