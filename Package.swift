// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MapLibre Native",
    products: [
        .library(name: "MapLibre", targets: ["MapLibre"]),
        .library(name: "MapLibreWithPlugins", targets: ["MapLibreWithPlugins"])
    ],
    targets: [
        .binaryTarget(
            name: "MapLibre",
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v7.0.0-pre0/MapLibre.dynamic.xcframework.zip",
            checksum: "918fac40b32b1f3b66dca7cdf91e5d09202ad9baa860bf5d8c8700c797364a37"),
        .binaryTarget(
            name: "MapLibreWithPlugins",
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v7.0.0-pre0/MapLibre.dynamic.plugins.xcframework.zip",
            checksum: "a8ea5927328a4109762e919541244fcae967503d98c882a505feaeaf281a0011")
    ]
)
