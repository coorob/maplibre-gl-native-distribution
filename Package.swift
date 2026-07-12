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
            url: "https://github.com/coorob/maplibre-gl-native-distribution/releases/download/6.27.0-traska.74/MapLibre.xcframework.zip",
            checksum: "632b513cf1fd76b8bd494de07aaee875d282293dc8e46fd53ed070de0c413836")
    ]
)
