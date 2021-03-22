//
//  AppDelegate.swift
//  moviesExample
//
//  Created by everis on 22/03/21.
//  Copyright © 2021 everis. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    public func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        let navigation = UINavigationController(rootViewController: UIViewController())
        self.window?.rootViewController = navigation

        window!.makeKeyAndVisible()
        navigation
        
        return true
    }

}

