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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.3.3/MapLibre.dynamic.xcframework.zip",
            checksum: "9778f285a68ae48188c4155a81f293de65c23b48a682b3da28dd50fe42d1535e")
    ]
)
