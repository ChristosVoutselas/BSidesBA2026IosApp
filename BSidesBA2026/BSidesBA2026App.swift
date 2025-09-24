import Foundation
import SwiftUI
import BackgroundTasks
import GoogleMobileAds

@main
struct BSidesBA2026App: App {
    
    init() {
            // Start Google Mobile Ads SDK
        MobileAds.shared.start(completionHandler: nil)
        }
        

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    
        
    }
}
