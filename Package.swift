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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v7.0.0-pre2/MapLibre.dynamic.xcframework.zip",
            checksum: "f81c0d8ffd20c7d1e647e34a18ce84005aea71536f8fb52e77be894f9f0f607c")
    ]
)
