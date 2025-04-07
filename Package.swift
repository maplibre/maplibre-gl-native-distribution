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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.12.3/MapLibre.dynamic.xcframework.zip",
            checksum: "5008c501dc005ef06fe932c7bd61de921faa705771a9be59196688512e7e5165")
    ]
)
