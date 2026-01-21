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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.23.0/MapLibre.dynamic.xcframework.zip",
            checksum: "8be74e22974283a43f0215901caeda1e404c663229cca1c6c5b5c996820c1857")
    ]
)
