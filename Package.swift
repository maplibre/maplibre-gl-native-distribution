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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v7.0.0-pre-globe.0/MapLibre.dynamic.xcframework.zip",
            checksum: "9d36599b0b92effb45c9d01ba2a8b5aaccc5cc57fcd3f7ee3fb28d357a2774cf")
    ]
)
