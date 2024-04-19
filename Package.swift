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
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.4.0/MapLibre.dynamic.xcframework.zip",
            checksum: "431879052fc717c128df62647cb3b93a4df4a645a4833ac63220f91341457954")
    ]
)
