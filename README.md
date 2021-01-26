# MapLibre GL Native SDK for iOS

![Requires Xcode 12](https://img.shields.io/badge/Xcode-12-1575F9.svg?style=flat&logo=xcode&logoColor=1575F9)
[![Requires Swift 5.3](https://img.shields.io/badge/Swift-5.3-FA7343.svg?style=flat&logo=Swift)](https://swift.org/package-manager/)
![SPM compatible](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-FA7343.svg?style=flat&logo=Swift)

[MapLibre GL Native](https://github.com/maptiler/maplibre-gl-native) is a community led fork derived from [mapbox-gl-native](https://github.com/mapbox/mapbox-gl-native) prior to their switch to a non-OSS license. The fork also includes Maps SDK for iOS and macOS (forked from [mapbox-gl-native-ios](https://github.com/mapbox/mapbox-gl-native-ios)) and Android SDK (forked from [mapbox-gl-native-android](https://github.com/mapbox/mapbox-gl-native-android)).

---

## Add MapLibre to your Project

To add a package dependency to your Xcode project, select File > Swift Packages > Add Package Dependency and enter its repository URL. See [Adding Package Dependencies to Your App.](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app)

## Swift Packages Development

You can override the MapLibre package dependency and edit its content by adding it as a local package.  See [Editing a Package Dependency as a Local Package](https://developer.apple.com/documentation/swift_packages/editing_a_package_dependency_as_a_local_package).

You can add this to `Package.swift`

```swift
.binaryTarget(
  name: "Mapbox",
  path: "build/output/Mapbox.xcframework"),
```

Other References from developer.apple.com

* Find out if a package dependency references a binary and verify the binary’s authenticity.  See [Identifying Binary Dependencies.](https://developer.apple.com/documentation/swift_packages/identifying_binary_dependencies)
