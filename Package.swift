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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.4.2/MapLibre.dynamic.xcframework.zip",
            checksum: "681b80e58b9961579c4a25fd87dd02687c19957d361a5f4d5abef5949c3722c0")
    ]
)
