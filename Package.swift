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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.29.0/MapLibre.dynamic.xcframework.zip",
            checksum: "0963b9cebd9e3b670b1a39f82e4ffa5ab6a6343352a0fd3430b3cbce4fac9bd8")
    ]
)
