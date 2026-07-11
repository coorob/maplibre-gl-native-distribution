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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.55/MapLibre.xcframework.zip",
            checksum: "ae7eb477461a9658e1124358ae62d6af6cddf8164e54593ea3445b5f19d6f6b4")
    ]
)
