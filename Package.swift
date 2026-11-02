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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v2026.11.2-globe/MapLibre.dynamic.xcframework.zip",
            checksum: "a4a63609e425190ad60b92a75fead3542ef578ffb53eeb9b92c1102ca83fdccc")
    ]
)
