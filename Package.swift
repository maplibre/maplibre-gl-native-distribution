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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.5.1/MapLibre.dynamic.xcframework.zip",
            checksum: "eba9d933228277439a36c7312343cbe403a2d53440e2a1b503a3be4a5e1cd17e")
    ]
)
