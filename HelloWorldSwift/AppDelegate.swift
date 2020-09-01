//
//  AppDelegate.swift
//  HelloWorldSwift
//
//  Created by Zhenying Zhang on 2020-09-01.
//  Copyright © 2020 Zhenying Zhang. All rights reserved.
//

import UIKit
import LoginSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Test loginID sdk start
        let clientId="7uxQrSqPTDvbHeMHYtMDhdhdaxHaZ8KqzW7AqTM1HZhZJJFoUNotGrTJmGAjQIwujn17A1VSu5Up_BRFUmCQWQ=="
        let baseURL="https://10e54340-e703-11ea-a09c-b971825988a5.sandbox-apse1.native-api.loginid.io"
        LoginApi.client.configure(clientId: clientId, baseURL: baseURL)
        // Test loginID sdk end
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

