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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.5.2/MapLibre.dynamic.xcframework.zip",
            checksum: "b354148065ee493754f59ca52f68011a2ae18fbd7b4bb8df948782d6a13955b9")
    ]
)
