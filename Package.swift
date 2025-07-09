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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.17.0/MapLibre.dynamic.xcframework.zip",
            checksum: "781f6a90853551cf11db006c504b00d5acdf3b40d264281bda09d96097d44f2b")
    ]
)
