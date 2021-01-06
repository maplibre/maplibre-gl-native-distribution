// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "maplibre-gl-native",
    products: [
        .library(
            name: "Mapbox",
            targets: ["Mapbox"]),
        .library(
            name: "MapboxMobileEvents",
            targets: ["MapboxMobileEvents"])            
    ],
    dependencies: [
    ],    
    targets: [
        .binaryTarget(
            name: "Mapbox",
            url: "https://github.com/maptiler/maplibre-gl-native/releases/download/ios-v5.10.0/Mapbox-5.10.0.zip",
            checksum: "edcca3b7b84ca50eeabe28e1a2d9ba3e34cee2ca7e8daa8ad9e67393457ed9f3"),
        .binaryTarget(
            name: "MapboxMobileEvents",
            url: "https://github.com/maptiler/maplibre-gl-native/releases/download/ios-v5.10.0/MapboxMobileEvents-5.10.0.zip",
            checksum: "78298810dc3c3370ad2cf8265b1e6ef3fc406565c447a5275d689a5f06cedfd9")            
    ]
)
