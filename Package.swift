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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.3.1/MapLibre.dynamic.xcframework.zip",
            checksum: "f1bb31dfda2a17567d04b7b8feb416de23c5342a3421d470bcbbf1d3c5caf740")
    ]
)
