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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.12.2/MapLibre.dynamic.xcframework.zip",
            checksum: "eba7cabfd264608c40af5776377d0b21958b017a635a6bdfe21b4b09868143ce")
    ]
)
