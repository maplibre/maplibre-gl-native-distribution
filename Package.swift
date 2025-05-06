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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.13.0/MapLibre.dynamic.xcframework.zip",
            checksum: "30e7c281d494b9c6c53fe1aa52d54ce9053fefb7229450f12cecdafc4151a5d1")
    ]
)
