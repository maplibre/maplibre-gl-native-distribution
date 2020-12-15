// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "maptiler-gl-mobile",
    products: [
        .library(
            name: "Mapbox",
            targets: ["Mapbox"]),
        .library(
            name: "MapboxMobileEvents",
            targets: ["MapboxMobileEvents"])            
    ],
    dependencies: [
    ],    
    targets: [
        .binaryTarget(
            name: "Mapbox",
            url: "https://github.com/maptiler/maptiler-gl-mobile/releases/download/ios-v5.9.3/Mapbox-5.9.3.zip",
            checksum: "8f7e81825b31f8dfd31e036d98d2da672c0bf6f4191682a396cf75c57284e395"),
        .binaryTarget(
            name: "MapboxMobileEvents",
            url: "https://github.com/maptiler/maptiler-gl-mobile/releases/download/ios-v5.9.3/MapboxMobileEvents-5.9.3.zip",
            checksum: "56527eda75d59ccf34ff576908be2ced3f76795225ff1b9c1c0f641a6e0b53de")            
    ]
)
