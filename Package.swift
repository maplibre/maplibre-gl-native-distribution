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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.21.0/MapLibre.dynamic.xcframework.zip",
            checksum: "d13ad9d7c7c65501b3a0b397e67dc1ffb67c33e9dab3f21ac7c4ea044f5dcadf")
    ]
)
