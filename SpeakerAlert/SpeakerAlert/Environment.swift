//
//  ApplicationAssembly.swift
//  SpeakerAlert
//
//  Created by Thomas Elliott on 7/26/15.
//  Copyright © 2015 The Other Tom Elliott. All rights reserved.
//

import UIKit

public class Environment {
    
    static var Default: Environment = Environment()
    
    var parameterManager: ParameterManager
    var configurationManager: ConfigurationManager
    var dataSeeder: DataSeeder
    var speechManager: SpeechManager
    var localNotificationManager: LocalNotificationManager
    var watchCommsManager: WatchComms
    var vibrationAlertManager: VibrationAlertManager
    var audioAlertManager: AudioAlertManager
    
    init() {
        parameterManager = ParameterManager()
        configurationManager = ConfigurationManager(defaults: NSUserDefaults.standardUserDefaults())
        dataSeeder = DataSeeder()
        speechManager = SpeechManager(parameterManager: parameterManager)
        localNotificationManager = LocalNotificationManager(
            configManager: configurationManager,
            speechManager: speechManager
        )
        
        if #available(iOS 9, *) {
            watchCommsManager = WatchCommsManager(
                configManager: configurationManager,
                speechManager: speechManager
            )
            watchCommsManager.activate()
        } else {
            watchCommsManager = NullWatchCommsManager()
        }
        
        vibrationAlertManager = VibrationAlertManager(
            configManager: configurationManager,
            speechManager: speechManager
        )
        audioAlertManager = AudioAlertManager(
            configManager: configurationManager,
            speechManager: speechManager
        )
    }
    
}

protocol ConfigurationManagerDependency {}
extension ConfigurationManagerDependency {
    static func _configurationManager() -> ConfigurationManager {
        return Environment.Default.configurationManager
    }
}

protocol DataSeederDependency {}
extension DataSeederDependency {
    static func _dataSeeder() -> DataSeeder { return Environment.Default.dataSeeder }
}

protocol SpeechManagerDependency {}
extension SpeechManagerDependency {
    static func _speechManager() -> SpeechManager { return Environment.Default.speechManager }
}

protocol AudioAlertManagerDependency {}
extension AudioAlertManagerDependency {
    static func _audioAlertManager() -> AudioAlertManager {
        return Environment.Default.audioAlertManager
    }
}
