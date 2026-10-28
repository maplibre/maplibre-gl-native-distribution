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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v7.0.0/MapLibre.dynamic.xcframework.zip",
            checksum: "64f2472ab7e1f76cea2b77c09fc9920668f9b3727938e0f6944263d292bf1734")
    ]
)
