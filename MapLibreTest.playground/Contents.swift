/*:
 * The MapLibre Test Playground demonstrates basic rendering of a Mapbox style using the current MapLibre binary.
 * Useful for testing the data in the`binaryTarget[]` in this Swift Package repo.
 * Downloads the MapLibre `.xcframework` and creates a simple map, thereby testing the Swift Package Manager workflow.
 * Add your style for basic rendering tests
 */

import UIKit
import PlaygroundSupport
import Mapbox

// Create a map set its dimensions
let width: CGFloat = 600
let height: CGFloat = 400

let mapView = MGLMapView(frame: CGRect(x: 0, y: 0, width: width, height: height))
mapView.frame = CGRect(x: 0, y: 0, width: width, height: height)

// Hide logo & attribution button
mapView.logoView.isHidden = true
mapView.attributionButton.isHidden = true

PlaygroundPage.current.liveView = mapView

// Set Style
let styleJSON = "https://raw.githubusercontent.com/roblabs/openmaptiles-ios-demo/master/OSM2VectorTiles/styles/geography-class.GitHub.json"

mapView.styleURL = URL(string: styleJSON)
mapView.setCenter(CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0), zoomLevel: 2, animated: false)
