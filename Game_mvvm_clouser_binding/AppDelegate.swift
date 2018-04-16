//
//  AppDelegate.swift
//  Game_mvvm_clouser_binding
//
//  Created by 123 on 16.04.2018.
//  Copyright © 2018 123. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // networking
        let gameLibrary: GameLibrary = InMemoryGameLibrary()
        
        let rootViewController: HomeViewController = window?.rootViewController as! HomeViewController
        rootViewController.gameLibrary = gameLibrary
        
        return true
    }
    
}

