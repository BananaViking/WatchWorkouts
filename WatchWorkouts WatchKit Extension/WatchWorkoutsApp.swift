//
//  WatchWorkoutsApp.swift
//  WatchWorkouts WatchKit Extension
//
//  Created by J S on 6/10/21.
//

import SwiftUI

@main
struct WatchWorkoutsApp: App {
    @StateObject var workoutManager = WorkoutManager()
    
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                StartView()
            }
            .sheet(isPresented: $workoutManager.showingSummaryView) {
                SummaryView()
            }
            .environmentObject(workoutManager)
        }
        
        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
