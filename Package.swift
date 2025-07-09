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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.17.1/MapLibre.dynamic.xcframework.zip",
            checksum: "040fa2afc37b58ce4d565e99764250065c3a1208d74c523d6c18789861a1b3df")
    ]
)
