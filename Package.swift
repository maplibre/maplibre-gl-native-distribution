// swift-tools-version:5.3

import PackageDescription
import Foundation

let binaryTarget: Target
let useLocalFramework = ProcessInfo.processInfo.environment["USE_MAPLIBRE_LOCAL_FRAMEWORK"] != nil

if useLocalFramework {
    binaryTarget = .binaryTarget(
        name: "MapLibre",
        path: "MapLibre.dynamic.xcframework.zip"
    )
} else {
    binaryTarget = .binaryTarget(
        name: "MapLibre",
        url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v6.8.1/MapLibre.dynamic.xcframework.zip",
        checksum: "7f7123f33ac8a7c134135b2c15bb973f046561db9dc445220f28530f1b0ac028"
    )
}

let package = Package(
    name: "MapLibre Native",
    products: [
        .library(
            name: "MapLibre",
            targets: ["MapLibre"])
    ],
    dependencies: [],    
    targets: [
        binaryTarget
    ]
)
