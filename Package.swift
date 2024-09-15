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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.6.0/MapLibre.dynamic.xcframework.zip",
            checksum: "aab275a6961a0e5f522827e1dbe76347712073d9f58d27c97ba61fd87ff2da1b")
    ]
)
