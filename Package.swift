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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.54/MapLibre.xcframework.zip",
            checksum: "2e95b4be27ce3a080f5b0a9a1f1e3f535451cf56a530aca6f7e2bbb67cc784e4")
    ]
)
