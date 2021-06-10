//
//  WatchWorkoutsApp.swift
//  WatchWorkouts WatchKit Extension
//
//  Created by J S on 6/10/21.
//

import SwiftUI

@main
struct WatchWorkoutsApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                StartView()
            }
        }
        
        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
