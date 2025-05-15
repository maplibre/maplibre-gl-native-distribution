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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.14.0/MapLibre.dynamic.xcframework.zip",
            checksum: "2af8a5e52252265835500c5b575e64107dbc5867de6e849fab2d91fa4e416920")
    ]
)
