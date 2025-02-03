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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.11.0/MapLibre.dynamic.xcframework.zip",
            checksum: "1af1a63e638c2dc655751d0fd4a804a691edb51ae738363c49b65d1b927eb348")
    ]
)
