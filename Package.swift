// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MapLibre GL Native",
    products: [
        .library(
            name: "Mapbox",
            targets: ["Mapbox"]),
        .library(
            name: "MetalANGLE",
            targets: ["MetalANGLE"])            
    ],
    dependencies: [
    ],    
    targets: [
        .binaryTarget(
            name: "Mapbox",
            url: "https://github.com/maplibre/maplibre-gl-native/releases/download/ios-v5.13.0-pre.1/Mapbox-5.13.0-pre.1.zip",
            checksum: "7023b6012943803a03a0cee6e3c1bff9621e075e865132f378bdc519e36b99f3"),
        .binaryTarget(
            name: "MetalANGLE",
            url: "https://github.com/maplibre/maplibre-gl-native/releases/download/ios-v5.13.0-pre.1/MetalANGLE-5.13.0-pre.1.zip",
            checksum: "3c250c9b3b268911470cf80b2ff74020d287753dd4e72df5bc4543108bb62e9c")            
    ]
)
