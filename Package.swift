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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.22.1/MapLibre.dynamic.xcframework.zip",
            checksum: "6f207083f9542dc9e7d071163533c1ec65012e333892cfc952ec9a3cae09c2d8")
    ]
)
