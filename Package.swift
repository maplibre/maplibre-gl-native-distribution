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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.0.0-pre9599200f2529de44ba62d4662cddb445dc19397d/MapLibre.dynamic.xcframework.zip",
            checksum: "ac5f26f343b3bb44ceaba8a3ce1b690c6a27fcc8ee5bfe9cfd154afb0c285aa0")
    ]
)
