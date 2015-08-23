//
//  DataSeeder.swift
//  SpeakerAlert
//
//  Created by Thomas Elliott on 8/21/15.
//  Copyright © 2015 The Other Tom Elliott. All rights reserved.
//

import Foundation
import MagicalRecord

class DataSeeder: NSObject {
    
    private let seedVersion = 1
    private let seedVersionKey = "seedVersion"

    private func doSeeding(){
        NSLog("Seeding data")
        
        // Toastmasters speech timings
        
        MagicalRecord.saveWithBlock { (localContext: NSManagedObjectContext!) -> Void in
            // This block runs in background thread
            
            // Toastmasters
        
            let groupToastmasters : Group = Group.MR_createEntityInContext(localContext)
            groupToastmasters.name = "Toastmasters"

            let tableTopic : Profile = Profile.MR_createEntityInContext(localContext)
            tableTopic.name = "Table Topic"
            tableTopic.green = 1*60
            tableTopic.yellow = 1*60 + 30
            tableTopic.red = 2*60
            tableTopic.redBlink = 2*60 + 30
            
            let speechEvaluation : Profile = Profile.MR_createEntityInContext(localContext)
            speechEvaluation.name = "Speech Evaluation"
            speechEvaluation.green = 2*60
            speechEvaluation.yellow = 2*60 + 30
            speechEvaluation.red = 3*60
            speechEvaluation.redBlink = 3*60 + 30
            
            let fourToSix : Profile = Profile.MR_createEntityInContext(localContext)
            fourToSix.name = "Speech: Four to Six Minutes"
            fourToSix.green = 4*60
            fourToSix.yellow = 5*60
            fourToSix.red = 6*60
            fourToSix.redBlink = 6*60 + 30
            
            let fiveToSeven : Profile = Profile.MR_createEntityInContext(localContext)
            fiveToSeven.name = "Speech: Five to Seven Minutes"
            fiveToSeven.green = 5*60
            fiveToSeven.yellow = 6*60
            fiveToSeven.red = 7*60
            fiveToSeven.redBlink = 7*60 + 30
            
            let eightToTen : Profile = Profile.MR_createEntityInContext(localContext)
            eightToTen.name = "Speech: Eight to Ten Minutes"
            eightToTen.green = 8*60
            eightToTen.yellow = 9*60
            eightToTen.red = 10*60
            eightToTen.redBlink = 10*60 + 30
            
            let generalEval : Profile = Profile.MR_createEntityInContext(localContext)
            generalEval.name = "General Evaluation"
            generalEval.green = 8*60
            generalEval.yellow = 9*60
            generalEval.red = 10*60
            generalEval.redBlink = 10*60 + 30
            
            groupToastmasters.childTimings = [tableTopic, speechEvaluation, fourToSix, fiveToSeven, eightToTen, generalEval]
            
            // General timings
            
            let fiveMinutes : Profile = Profile.MR_createEntityInContext(localContext)
            fiveMinutes.name = "Five Minutes"
            fiveMinutes.green = 4*60
            fiveMinutes.yellow = 4*60 + 30
            fiveMinutes.red = 5*60
            fiveMinutes.redBlink = 5*60 + 30
            
            let tenMinutes : Profile = Profile.MR_createEntityInContext(localContext)
            tenMinutes.name = "Ten Minutes"
            tenMinutes.green = 8*60
            tenMinutes.yellow = 9*60
            tenMinutes.red = 10*60
            tenMinutes.redBlink = 10*60 + 30
            
            let twentyMinutes : Profile = Profile.MR_createEntityInContext(localContext)
            twentyMinutes.name = "Twenty Minutes"
            twentyMinutes.green = 18*60
            twentyMinutes.yellow = 19*60
            twentyMinutes.red = 20*60
            twentyMinutes.redBlink = 20*60 + 30
            
            let thirtyMinutes : Profile = Profile.MR_createEntityInContext(localContext)
            thirtyMinutes.name = "Thirty Minutes"
            thirtyMinutes.green = 25*60
            thirtyMinutes.yellow = 27*60 + 30
            thirtyMinutes.red = 30*60
            thirtyMinutes.redBlink = 30*60 + 30
            
            let oneHour : Profile = Profile.MR_createEntityInContext(localContext)
            oneHour.name = "One Hour"
            oneHour.green = 50*60
            oneHour.yellow = 55*60
            oneHour.red = 60*60
            oneHour.redBlink = 60*60 + 30
            
            // TODO: Make this debug only
            let debug : Profile = Profile.MR_createEntityInContext(localContext)
            debug.name = "Debug (5 second intervals)"
            debug.green = 5
            debug.yellow = 10
            debug.red = 15
            debug.redBlink = 20

        }
    }
    
    func seedAsRequired(){
        
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        var shouldSeed : Bool = true;
        
        if let seedVersion : Int = defaults.integerForKey(seedVersionKey)
        {
            if seedVersion >= self.seedVersion {
                shouldSeed = false
            }
        }
        
        if shouldSeed {
            self.doSeeding()
            defaults.setInteger(self.seedVersion, forKey: self.seedVersionKey)
        }
    
    }
    
    
}
