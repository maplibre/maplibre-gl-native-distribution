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
            url: "https://github.com/maplibre/maplibre-gl-native/releases/download/ios-v5.12.2/Mapbox-5.12.2.zip",
            checksum: "348453495bad198b380e033a6bc6e6134bf71be27116904a25152b93a2d77491")
    ]
)
