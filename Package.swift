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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.3.2-pre69190810301b8558cf87143b8e0846ce3bdf2152/MapLibre.dynamic.xcframework.zip",
            checksum: "a7e310ddb11f4677abc1d8832c314fec3e999a548d2ec171d9ece4c12e0ce735")
    ]
)
