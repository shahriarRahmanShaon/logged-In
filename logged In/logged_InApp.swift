//
//  logged_InApp.swift
//  logged In
//
//  Created by sergio shaon on 27/4/21.
//

import SwiftUI

@main
struct logged_InApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}
extension NSTextField {
    open override var focusRingType: NSFocusRingType {
        get { .none }
        set { }
    }
}
