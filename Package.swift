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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.15.0/MapLibre.dynamic.xcframework.zip",
            checksum: "0dd25b60d322ce31e17b0e86f1799952f8c673f7ce15b898a3c4f028eb61e15f")
    ]
)
