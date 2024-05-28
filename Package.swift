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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-vios-v6.4.3.pre1/MapLibre.dynamic.xcframework.zip",
            checksum: "9493bec9e82ea40ab84949199aaf7279e5072a5a975fe77f2ea817ce178605c6")
    ]
)
