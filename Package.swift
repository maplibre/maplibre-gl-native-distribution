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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.2.0/MapLibre.dynamic.xcframework.zip",
            checksum: "afb494eb3c382dda525b83088020c0dd450e4de12d9d63b20dd004e2d06e1913")
    ]
)
