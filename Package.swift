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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.18.0/MapLibre.dynamic.xcframework.zip",
            checksum: "4ccf54013003911b03e0680b7e643aebcf91f8f2665b3ae9e1fb9464aed698bc")
    ]
)
