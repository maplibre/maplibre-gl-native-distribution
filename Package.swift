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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.5.0/MapLibre.dynamic.xcframework.zip",
            checksum: "09bcfe6f2684193f07dc6213b880e4cd0e2fa4e2031a62123c6b5f519f49e0b1")
    ]
)
