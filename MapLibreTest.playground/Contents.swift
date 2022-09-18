/*:
 * The MapLibre Test Playground demonstrates basic rendering of a Mapbox style using the current MapLibre binary.
 * Useful for testing the data in the`binaryTarget[]` in this Swift Package repo.
 * Downloads the MapLibre `.xcframework` and creates a simple map, thereby testing the Swift Package Manager workflow.
 * Add your style for basic rendering tests.
 * Using the same style, demonstrate how to use `MGLMapSnapshotter`.
 */

import UIKit
import PlaygroundSupport
import Mapbox

// Create a map set its dimensions
let width: CGFloat = 640
let height: CGFloat = 480

let mapView = MGLMapView(frame: CGRect(x: 0, y: 0, width: width, height: height))
mapView.frame = CGRect(x: 0, y: 0, width: width, height: height)

// Hide logo & attribution button
mapView.logoView.isHidden = true
mapView.attributionButton.isHidden = true

// enable debugging tile features
mapView.debugMask = MGLMapDebugMaskOptions(rawValue:
                                            MGLMapDebugMaskOptions.collisionBoxesMask.rawValue + // Edges of glyphs and symbols
                                            MGLMapDebugMaskOptions.timestampsMask.rawValue     + // shows a timestamp indicating when it was loaded.
                                            MGLMapDebugMaskOptions.tileBoundariesMask.rawValue + // Edges of tile boundaries
                                            MGLMapDebugMaskOptions.tileInfoMask.rawValue         // tile coordinate (x/y/z)
                                          )

// Set Style
var styleJSON = "https://demotiles.maplibre.org/style.json"

mapView.styleURL = URL(string: styleJSON)
mapView.setCenter(CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0), zoomLevel: 3, animated: false)

// MGLMapSnapshotter example code
var image: UIImage?
let camera = MGLMapCamera(lookingAtCenter: CLLocationCoordinate2D(latitude: 0, longitude: 0), altitude: 100, pitch: 75, heading: 45)

let options = MGLMapSnapshotOptions(styleURL: URL(string: styleJSON), camera: camera, size: CGSize(width: width, height: height))
options.zoomLevel = mapView.zoomLevel

let snapshotter = MGLMapSnapshotter(options: options)
snapshotter.start { (snapshot, error) in
    if let error = error {
        fatalError(error.localizedDescription)
    }
    
    image = snapshot?.image
}

PlaygroundPage.current.liveView = mapView
