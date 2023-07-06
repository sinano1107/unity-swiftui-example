//
//  Unity_swiftui_exampleApp.swift
//  Unity-swiftui-example
//
//  Created by 長政輝 on 2023/07/04.
//

import SwiftUI

@main
struct Unity_swiftui_exampleApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
