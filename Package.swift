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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.4.3-pre0/MapLibre.dynamic.xcframework.zip",
            checksum: "3c063c5f3b1a470d8372fb6e7b1a2704af4c4c4ccc172ff81324e59a3fac8acb")
    ]
)
