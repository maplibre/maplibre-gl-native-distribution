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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.4.3-pre.1/MapLibre.dynamic.xcframework.zip",
            checksum: "dd075bf4e262a668f8ad500e44e523ba34d3c0ff16215c442f98b92d78dc869a")
    ]
)
