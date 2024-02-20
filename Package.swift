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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.1.0/MapLibre.dynamic.xcframework.zip",
            checksum: "b7608b4155c51924481c1e8e5e6a923e515b4ad6decc367e704c5f6f2843e115")
    ]
)
