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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.12.0/MapLibre.dynamic.xcframework.zip",
            checksum: "498ed9059d439bd4e905b9d8e2fa3ddcae554ea82117c2642735b539392f617b")
    ]
)
