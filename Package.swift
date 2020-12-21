// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "maplibre-gl-native",
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
            url: "https://github.com/maptiler/maplibre-gl-native/releases/download/ios-v5.9.0/Mapbox-5.9.0.zip",
            checksum: "6257635af06d78e674a599d45bbb8d97e9ae6a3b95e6175130116b06b4a9a027"),
        .binaryTarget(
            name: "MapboxMobileEvents",
            url: "https://github.com/maptiler/maplibre-gl-native/releases/download/ios-v5.9.0/MapboxMobileEvents-5.9.0.zip",
            checksum: "ab1a84fc78c0637ab462365e79f959ec7ea6464f70493381a7b0e4fe73e19298")            
    ]
)
