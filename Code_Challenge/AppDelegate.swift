//
//  AppDelegate.swift
//  Code_Challenge
//
//  Created by Austin Feight on 11/25/18.
//  Copyright © 2018 JOOR. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    window = UIWindow(frame: UIScreen.main.bounds)
    let root = MainNavigationController()
    window?.rootViewController = root
    window?.makeKeyAndVisible()
    return true
  }
    
}

