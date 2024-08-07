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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.5.4/MapLibre.dynamic.xcframework.zip",
            checksum: "d6ca0f39cad5cec04d9560f50c272bbb23bd6499918be3adee15921c531dcd95")
    ]
)
