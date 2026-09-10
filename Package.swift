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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.30.0/MapLibre.dynamic.xcframework.zip",
            checksum: "db5cd4baf7d0d319721bf3649bfe04896b00202a8a4f73d41d8669842fc83eeb")
    ]
)
