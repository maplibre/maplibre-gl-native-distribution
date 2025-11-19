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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.20.1/MapLibre.dynamic.xcframework.zip",
            checksum: "d5c3bfbd6b62196f3bb3b31b66570769d4e586170a02e39134bf665538f55d7d")
    ]
)
