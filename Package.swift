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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.12.1/MapLibre.dynamic.xcframework.zip",
            checksum: "fb1302974e9401f6c820e49418119c165d6f9c677d320b531712e7e2e79826bb")
    ]
)
