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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.4.3-pre2/MapLibre.dynamic.xcframework.zip",
            checksum: "830313e5fc96807bd513e1ebe744f8c4881a235ef10ea818f701131a937025fd")
    ]
)
