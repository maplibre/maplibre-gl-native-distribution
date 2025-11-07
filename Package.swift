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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.18.0-patch0/MapLibre.dynamic.xcframework.zip",
            checksum: "22ec5dde3b66f077d99afe43b7a63c29dd5483ab099c265ed05b48ea7f518896")
    ]
)
