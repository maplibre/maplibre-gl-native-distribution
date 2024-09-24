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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.7.0/MapLibre.dynamic.xcframework.zip",
            checksum: "217d8ea75807f6a3ba6bc99962d2ae2b7f5413fd069d99b7b936e4f609f1988b")
    ]
)
