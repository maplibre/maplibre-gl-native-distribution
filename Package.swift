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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.3.0/MapLibre.dynamic.xcframework.zip",
            checksum: "cf58222e9afffd9efa1524c0c24d639cf143abbae1d2899df3ea1138d7772254")
    ]
)
