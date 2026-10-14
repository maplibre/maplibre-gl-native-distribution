# MapLibre iOS

[![SPM compatible](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-FA7343.svg?style=flat&logo=Swift)](https://swiftpackageindex.com/maplibre/maplibre-gl-native-distribution)

This repository only exists for binary distribution of MapLibre iOS as a Swift package. Please use the [main MapLibre Native repository](https://github.com/maplibre/maplibre-native) to report issues or ask for help.

## MapLibre iOS distributions

MapLibre iOS is distributed as two Swift packages, both built from the same [MapLibre Native](https://github.com/maplibre/maplibre-native) releases. Use one of them per application.

| Distribution | Package URL | Framework |
| --- | --- | --- |
| MapLibre iOS | https://github.com/maplibre/maplibre-gl-native-distribution | Dynamic XCFramework |
| MapLibre iOS with plugin API | https://github.com/maplibre/maplibre-ios-with-plugin-api | Dynamic XCFramework |

## Add MapLibre to your project

In Xcode, select File > Add Package Dependencies and enter `https://github.com/maplibre/maplibre-gl-native-distribution`. See [Adding Package Dependencies to Your App](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app).
