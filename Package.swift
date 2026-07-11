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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.67/MapLibre.xcframework.zip",
            checksum: "8e84096d9db73bcc31567a0c70805d1df0f6024db50c86808e4c48fae8024094")
    ]
)
