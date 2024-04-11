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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.3.2/MapLibre.dynamic.xcframework.zip",
            checksum: "0939ed7e429a93d6bdc264f1421489c88c27117710ea3029a580e754ece48578")
    ]
)
