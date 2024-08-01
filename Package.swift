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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.5.3/MapLibre.dynamic.xcframework.zip",
            checksum: "89493172b589a482106472ef4b94efeeac4326109c6ac8a9f03f7bbd4b773e9c")
    ]
)
