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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.8.0/MapLibre.dynamic.xcframework.zip",
            checksum: "4cf05ff6992aa9daa349e16076bf7d3bdc7a709e2072477549b3bc1c7edfa32f")
    ]
)
