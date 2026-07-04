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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.4/MapLibre.xcframework.zip",
            checksum: "448f651994d7413759a9e4de0a67e0cca499018ec2da307b96a56dee3a479a4f")
    ]
)
