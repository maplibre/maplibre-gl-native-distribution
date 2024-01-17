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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.0.0/MapLibre.dynamic.xcframework.zip",
            checksum: "0ef9e1219d89094283b1cd94cc2cb8935e92699a22e8049d0e6ffa41b74c7317")
    ]
)
