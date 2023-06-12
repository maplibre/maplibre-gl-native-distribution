# MapLibre Native for iOS

![Requires Xcode 12](https://img.shields.io/badge/Xcode-12-1575F9.svg?style=flat&logo=xcode&logoColor=1575F9)
[![Requires Swift 5.3](https://img.shields.io/badge/Swift-5.3-FA7343.svg?style=flat&logo=Swift)](https://swift.org/package-manager/)
[![SPM compatible](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-FA7343.svg?style=flat&logo=Swift)](https://swiftpackageindex.com/maplibre/maplibre-gl-native-distribution)

> **Note**  
> This repository only exists for the purpose of binary distribution of MapLibre Native for iOS on the Swift Package Index.
> Please use the [main MapLibre Native repository](https://github.com/maplibre/maplibre-native) to report issues or ask for help.

[MapLibre Native](https://github.com/maplibre/maplibre-native) is a community-led fork derived from [mapbox-gl-native](https://github.com/mapbox/mapbox-gl-native) before their switch to a non-OSS license. The fork also includes Maps SDK for iOS and macOS (forked from [mapbox-gl-native-ios](https://github.com/mapbox/mapbox-gl-native-ios)) and Android SDK (forked from [mapbox-gl-native-android](https://github.com/mapbox/mapbox-gl-native-android)).

---

## Add MapLibre to your Project

To add a package dependency to your Xcode project, select File > Swift Packages > Add Package Dependency and enter its repository URL. See [Adding Package Dependencies to Your App.](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app)

## Swift Packages Development

You can override the MapLibre package dependency and edit its content by adding it as a local package.  See [Editing a Package Dependency as a Local Package](https://developer.apple.com/documentation/swift_packages/editing_a_package_dependency_as_a_local_package).

For example, you can add this to `Package.swift`, if you are interested in testing the Mapbox framework with another framework.

```swift
products: [
    .library( name: "Mapbox", targets: ["Mapbox"]),
    .library( name: "MetalANGLE", targets: ["MetalANGLE"])
],
dependencies: [ ],
// target path should be relative to package root
targets: [
    .binaryTarget(name: "Mapbox", path: "Mapbox.xcframework"),
    .binaryTarget(name: "MetalANGLE", path: "MetalANGLE.xcframework")
]
```

Other Swift Packages documentation from developer.apple.com

* [Swift packages](https://developer.apple.com/documentation/xcode/swift-packages) "*bundle source files, binaries, and resources in a way that’s easy to use in your app’s project.*"
* [Distributing binary frameworks as Swift packages](https://developer.apple.com/documentation/xcode/distributing-binary-frameworks-as-swift-packages) to "*make binaries available to other developers by creating Swift packages that include one or more XCFrameworks.*"
* Find out if a package dependency references a binary and verify the binary’s authenticity.  See [Identifying Binary Dependencies.](https://developer.apple.com/documentation/swift_packages/identifying_binary_dependencies)
* WWDC20 [Distribute binary frameworks as Swift packages](https://developer.apple.com/wwdc20/10147), which describes several features of a binary targets.

---

## Test MapLibre with a Swift Playgrounds

When you download this repo there is a Swift Playground that allows you to change the style and play around with a very simple rendered map.  

* Download this repo
* Navigate to the folder where you `clone`d, and open `Package.swift` in at least Xcode 12.
* Run Playground by choosing `Editor` > `Run Playground` or `⇧-⌘-⏎`
* See issue [maplibre-gl-native-distribution#8](https://github.com/maplibre/maplibre-gl-native-distribution/issues/8) for screenshots of the MapLibre for Swift Playgrounds in action.
