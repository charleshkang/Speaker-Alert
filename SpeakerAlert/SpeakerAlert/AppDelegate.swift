//
//  AppDelegate.swift
//  SpeakerAlert
//
//  Created by Thomas Elliott on 6/10/15.
//  Copyright © 2015 The Other Tom Elliott. All rights reserved.
//

import UIKit
import CoreData
import MagicalRecord
import JVArgumentParser

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var localNotificationManager: LocalNotificationManager?
    var parameterManager: ParameterManager?

    func application(application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        // Set up Pyze for analytics
        if _isDebugAssertConfiguration() {
            Pyze.initialize("HkpiF7XpQaqgwGDidBvmzw")
        } else {
            Pyze.initialize("mkneZ7xjSjKM5Mdn0Mra_w")
        }
        
        if let p = parameterManager where p.isUITesting {
            NSLog("UI Testing!")
            MagicalRecord.setupCoreDataStackWithInMemoryStore()

            let appDomain = NSBundle.mainBundle().bundleIdentifier!
            NSUserDefaults.standardUserDefaults().removePersistentDomainForName(appDomain)
        } else {
            // Configure core data
            MagicalRecord.setupCoreDataStack()
        }
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
    }

    func applicationDidEnterBackground(application: UIApplication) {
        self.localNotificationManager?.enteredBackground()
    }

    func applicationWillEnterForeground(application: UIApplication) {
        NSLog("applicationWillEnterForeground")
    }

    func applicationDidBecomeActive(application: UIApplication) {
        NSLog("applicationDidBecomeActive")
    }

    func applicationWillTerminate(application: UIApplication) {
        MagicalRecord.saveWithBlock { (context: NSManagedObjectContext!) -> Void in
            NSLog("Saving context")
        }

        NSLog("Cleaning up")
        MagicalRecord.cleanUp()
    }

}
