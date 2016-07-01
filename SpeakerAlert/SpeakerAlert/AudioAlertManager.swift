//
//  AudioAlertManager.swift
//  SpeakerAlert
//
//  Created by Thomas Elliott on 6/30/16.
//  Copyright © 2016 The Other Tom Elliott. All rights reserved.
//

import Foundation
import AudioToolbox

class AudioAlertManager: NSObject, SpeechManagerDelegate {
    
    override init() {
        if let filePath = NSBundle.mainBundle().pathForResource("beep-xylo", ofType: "aif") {
            soundURL = NSURL(fileURLWithPath: filePath)
            if let url = soundURL {
                AudioServicesCreateSystemSoundID(url, &soundID)
            }
        } else {
            print("Sound file not found")
        }
    }

    var configMan: ConfigurationManager?
    
    var speechMan: SpeechManager? {
        didSet {
            speechMan?.addSpeechObserver(self)
        }
    }
    
    func phaseChanged(state: SpeechState, timer: SpeechTimer) {
        if let cm = configMan where cm.isAudioEnabled {
            playSound()
        }
    }
    
    func runningChanged(state: SpeechState, timer: SpeechTimer) {}
    
    func speechComplete(state: SpeechState, timer: SpeechTimer) {
    }
    
    var soundURL: NSURL?
    var soundID: SystemSoundID = 0
    
    func playSound() {
        // Sound from: http://raisedbeaches.com/octave/
        // Add attribution to About screen
        if soundID != 0 {
                AudioServicesPlaySystemSound(soundID)
        }
    }

}