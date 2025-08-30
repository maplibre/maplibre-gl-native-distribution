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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.18.1/MapLibre.dynamic.xcframework.zip",
            checksum: "a4f80667f38fcd24db859061e5cf9a2dab068f41ce63da3305e73b5322606a5c")
    ]
)
