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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.7.1/MapLibre.dynamic.xcframework.zip",
            checksum: "ddb982faace354f54a2086302ba3172761b0fd213943e3b7d2f5f0657301addf")
    ]
)
