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
            url: "https://github.com/maptiler/maptiler-gl-mobile/releases/download/ios-v5.9.0/Mapbox-5.9.0.zip",
            checksum: "0d823d29b3ec734796951f906884536adb8760b0f06a77fc8bae86e56232d283"),
        .binaryTarget(
            name: "MapboxMobileEvents",
            url: "https://github.com/maptiler/maptiler-gl-mobile/releases/download/ios-v5.9.0/MapboxMobileEvents-5.9.0.zip",
            checksum: "7b71798d4dfd326536fde5003857f5364173d8ab8b233e4f012a51100d22d5db")            
    ]
)
