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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.20.0/MapLibre.dynamic.xcframework.zip",
            checksum: "968195779b2112c74dd53c0dc5ae42e8a3703a4f2a1550ccdf43a0c872d81656")
    ]
)
