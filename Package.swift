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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.16.0/MapLibre.dynamic.xcframework.zip",
            checksum: "0a4713fb93fc6d611fb2d79198272719eaf19795bcca63aae8e8040daef67f78")
    ]
)
