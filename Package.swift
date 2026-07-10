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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.41/MapLibre.xcframework.zip",
            checksum: "56c32b872c12531407deb706c473f64565d3fcabdaa5226e1fb4b1d2bdf566d8")
    ]
)
