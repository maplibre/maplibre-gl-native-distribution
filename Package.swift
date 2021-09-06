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
            url: "https://github.com/maplibre/maplibre-gl-native/releases/download/ios-v5.12.1/Mapbox-5.12.1.zip",
            checksum: "109914e33ab57341cefc3075756e6afcf54b790ea7a9ff64b759e362f540d8ce")
    ]
)
