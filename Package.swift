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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.19.3/MapLibre.dynamic.xcframework.zip",
            checksum: "955f24409fac4ee72b2b8fc9b0232d1a39c7b8aaee1ce8bb7b410e36905e3cc5")
    ]
)
