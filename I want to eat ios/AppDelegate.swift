//
//  AppDelegate.swift
//  I want to eat ios
//
//  Created by Anton Pavlov on 19.03.2018.
//  Copyright © 2018 Anton Pavlov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    let storage = UserStorage()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let rootVC: UIViewController
        
        print(storage.isGenderExist())
        print(storage.isAgeExist())
        print(storage.isWeightExist())
        print(storage.isHeightExist())
        print(storage.isTargetWeightExist())
        print(storage.isActivityExist())
        
        if (
            storage.isGenderExist() &&
                storage.isAgeExist() &&
                storage.isWeightExist() &&
                storage.isHeightExist() &&
                storage.isTargetWeightExist() &&
                storage.isActivityExist()
            ) {
            rootVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SettingsViewController")
        } else {
            rootVC = UIStoryboard.init(name: "Start", bundle: nil).instantiateViewController(withIdentifier: "StartViewContoller")
        }
        
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window!.rootViewController = rootVC
        self.window!.makeKeyAndVisible()
        
        return true
    }
    
}







