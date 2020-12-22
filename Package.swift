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
            url: "https://github.com/maptiler/maplibre-gl-native/releases/download/ios-v5.9.0/Mapbox-5.9.0.zip",
            checksum: "ee0dc76aadf19a43df658e34fa6ce8c82a4c35d059d42621907f303e53724046"),
        .binaryTarget(
            name: "MapboxMobileEvents",
            url: "https://github.com/maptiler/maplibre-gl-native/releases/download/ios-v5.9.0/MapboxMobileEvents-5.9.0.zip",
            checksum: "a96842857465adc2f2f3eeaa94dff25e58875bddd871e1a9edeef325591d111a")            
    ]
)
