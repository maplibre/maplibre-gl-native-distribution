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
            url: "https://github.com/maplibre/maplibre-gl-native/releases/download/ios-v5.12.0-pre.1/Mapbox-5.12.0-pre.1.zip",
            checksum: "f559d1cb214b22427af4f2a2dc528bac4003b0fdeb239de0007ce4564535cc12"),
        .binaryTarget(
            name: "MetalANGLE",
            url: "https://github.com/maplibre/maplibre-gl-native/releases/download/ios-v5.12.0-pre.1/MetalANGLE-5.12.0-pre.1.zip",
            checksum: "0cdcb712dad68fcc3bf8eca457781fe1a0f783e4d7439efb5d9e5095c47c1e00")            
    ]
)
