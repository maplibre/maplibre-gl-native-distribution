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
            checksum: "c327b99e38d50ec1bdb1de032bcd9602cb4110ad36086b0684f021ce1f5b552d"),
        .binaryTarget(
            name: "MapboxMobileEvents",
            url: "https://github.com/maptiler/maptiler-gl-mobile/releases/download/ios-v5.9.0/MapboxMobileEvents-5.9.0.zip",
            checksum: "12c841742b6e3a0deab6078f15915a8d33cc08cb47d032c1e8bea1664d170e93")            
    ]
)
