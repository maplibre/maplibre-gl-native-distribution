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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v2026.10.19-globe/MapLibre.dynamic.xcframework.zip",
            checksum: "ae9c967acf220111d8fb1c8f066d23cff0d91c5ec827c8f68770d4cd55f799e8")
    ]
)
