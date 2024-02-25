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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.1.1/MapLibre.dynamic.xcframework.zip",
            checksum: "6f1b54c4d5138678dfcef736be98d673008ca217a0630e171faef58f578ef1e0")
    ]
)
