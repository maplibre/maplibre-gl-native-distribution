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
            url: "https://github.com/maplibre/maplibre-gl-native/releases/download/ios-v5.12.0/Mapbox-5.12.0.zip",
            checksum: "516a11d91748c94c457a955135c5637c53d21043c6611a7f1512b2ab3dbca2f8")
    ]
)
