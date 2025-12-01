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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.21.2/MapLibre.dynamic.xcframework.zip",
            checksum: "53c4f80dca4c3827502093268895e94129280e10094a954406f8d78604af0e0d")
    ]
)
