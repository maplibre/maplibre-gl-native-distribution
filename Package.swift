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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.9.0/MapLibre.dynamic.xcframework.zip",
            checksum: "3d185b89b824711d53f660f423a371c372c76dd779fc4ffc87b38f0b307099b2")
    ]
)
