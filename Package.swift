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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.19.2/MapLibre.dynamic.xcframework.zip",
            checksum: "323c8c864a18c62b03c343a2582ca1fc7dbf66557fd5b482ef2164ae08db85f3")
    ]
)
