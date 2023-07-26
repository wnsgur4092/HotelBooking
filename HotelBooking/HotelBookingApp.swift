//
//  HotelBookingApp.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 12/6/2023.
//

import SwiftUI
import ParseSwift
import URLImage
import URLImageStore

@main
struct HotelBookingApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        let urlImageService = URLImageService(fileStore: nil, inMemoryStore: URLImageInMemoryStore())
        
        WindowGroup {
            ContentView()
                .environment(\.urlImageService, urlImageService)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        let configuration = ParseConfiguration(applicationId: "JeRsDN7ATt8Nn3WXIykj4aXgFAzujWUhOQg9kkGN",
//                                               clientKey: "lyL2Lz2YUX7qfVSQlE9YKQpnP4kn6sddMF2kiKGq",
//                                               serverURL: URL(string: "https://parseapi.back4app.com")!)
        
        ParseSwift.initialize(applicationId: "JeRsDN7ATt8Nn3WXIykj4aXgFAzujWUhOQg9kkGN", clientKey: "lyL2Lz2YUX7qfVSQlE9YKQpnP4kn6sddMF2kiKGq", serverURL: URL(string: "https://parseapi.back4app.com")!)

        return true
    }
}
