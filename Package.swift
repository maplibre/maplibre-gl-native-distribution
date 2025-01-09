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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.10.0/MapLibre.dynamic.xcframework.zip",
            checksum: "20ba58c701e66e767a09beb2ef1e8f97825c3b3411451993a5ab80ecf54e9f25")
    ]
)
