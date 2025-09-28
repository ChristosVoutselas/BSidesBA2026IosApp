import Foundation
import SwiftUI
import BackgroundTasks
import GoogleMobileAds

@main
struct BSidesBA2026App: App {
    
  

    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    init() {
        // Start Google Mobile Ads SDK
        MobileAds.shared.start(completionHandler: nil)
        
        // Request push notification permissions
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
            if granted {
                DispatchQueue.main.async {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
        

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    
        
    }
}
