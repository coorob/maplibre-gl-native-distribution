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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.61/MapLibre.xcframework.zip",
            checksum: "a8d556885a3333c3448130c36cd8f4cad600170f7c2560a2062d14ff1b0f5235")
    ]
)
