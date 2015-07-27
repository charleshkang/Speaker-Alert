//
//  ApplicationAssembly.swift
//  SpeakerAlert
//
//  Created by Thomas Elliott on 7/26/15.
//  Copyright © 2015 The Other Tom Elliott. All rights reserved.
//

import UIKit
import Typhoon

public class ApplicationAssembly: TyphoonAssembly {

    /*
    * This is the definition for our AppDelegate. Typhoon will inject the specified properties
    * at application startup.
    */
    public dynamic func appDelegate() -> AnyObject {
        return TyphoonDefinition.withClass(AppDelegate.self) {
            (definition) in
            NSLog("Loaded AppDelegate");
        }
    }
    
    public dynamic func groupTableViewController() -> AnyObject {
        return TyphoonDefinition.withClass(GroupTableViewController.self) {
            (definition) in
            NSLog("Loaded GroupTableViewController")
        }
    }
    
    public dynamic func timingViewController() -> AnyObject {
        return TyphoonDefinition.withClass(TimingViewController.self) {
            (definition) in
            NSLog("Loaded TimingViewController")
        }
    }
    
    public dynamic func speechViewController() -> AnyObject {
        return TyphoonDefinition.withClass(SpeechViewController.self) {
            (definition) in
            NSLog("Loaded SpeechViewController")
        }
    }
    
}