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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.19.1/MapLibre.dynamic.xcframework.zip",
            checksum: "5ee0f678665b1b97ffeafedf171165f7f03e4c4d3be38f63a1f425144841ec00")
    ]
)
