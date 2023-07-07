//
//  AppDelegate.swift
//  Unity-swiftui-example
//
//  Created by 長政輝 on 2023/07/05.
//

import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
#if WITH_Unity
        Unity.shared.application(application, didFinishLaunchingWithOptions: launchOptions)
#endif
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
#if WITH_Unity
        Unity.shared.applicationWillResignActive(application)
#endif
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
#if WITH_Unity
        Unity.shared.applicationDidEnterBackground(application)
#endif
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
#if WITH_Unity
        Unity.shared.applicationWillEnterForeground(application)
#endif
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
#if WITH_Unity
        Unity.shared.applicationDidBecomeActive(application)
#endif
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
#if WITH_Unity
        Unity.shared.applicationWillTerminate(application)
#endif
    }
}
