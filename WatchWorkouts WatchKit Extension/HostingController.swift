//
//  HostingController.swift
//  WatchWorkouts WatchKit Extension
//
//  Created by J S on 6/9/21.
//

import WatchKit
import Foundation
import SwiftUI

class HostingController: WKHostingController<StartView> {
    override var body: StartView {
        return StartView()
    }
}
