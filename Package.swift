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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v7.1.0/MapLibre.dynamic.xcframework.zip",
            checksum: "a1b648c78f3a226fbf3c615da67a1abcafa793f7f66cf9835c51808499647e6b")
    ]
)
