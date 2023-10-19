import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    GMSServices.provideAPIKey('AIzaSyAv9UBEK1ZXUoSaycB5azXlRUGd1QKef4c')
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
