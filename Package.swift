// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MapLibre GL Native",
    products: [
        .library(
            name: "Mapbox",
            targets: ["Mapbox"])
    ],
    dependencies: [
    ],    
    targets: [
        .binaryTarget(
            name: "Mapbox",
            url: "https://github.com/maplibre/maplibre-gl-native/releases/download/ios-v5.11.0/Mapbox-5.11.0.zip",
            checksum: "3446a5ed2f8cc144ec9a6e474d59d4f803e227bac78201f0f6494d7f7251cb77")
    ]
)
