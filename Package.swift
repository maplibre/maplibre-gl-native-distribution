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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.4.1/MapLibre.dynamic.xcframework.zip",
            checksum: "67759f7fb590ac0875734be589fb62cde2e11063dca6a8449cce7171ce21791e")
    ]
)
