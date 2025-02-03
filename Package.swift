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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.10.0-pree7bca286e2890ef4ee82809a4ede5fd817750b8f/MapLibre.dynamic.xcframework.zip",
            checksum: "04ca1f9f761db474454a1497896e5a513ae3fb30ad1bc54f14d800b03840c868")
    ]
)
