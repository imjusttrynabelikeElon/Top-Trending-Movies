//
//  AppDelegate.swift
//  MovieTrending
//
//  Created by Karon Bell on 4/13/23.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        let naviagationController = UINavigationController(rootViewController: MainViewController())
        
        window.rootViewController = naviagationController
        window.makeKeyAndVisible()
        
        self.window = window
        return true
    }

   


}

