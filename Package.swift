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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.28.0/MapLibre.dynamic.xcframework.zip",
            checksum: "72c20a6d4ed3a35fcb5c824c43b048c4281183d189fd1244ef56600d4d6588e2")
    ]
)
