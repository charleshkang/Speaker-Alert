//
//  SpeechViewController.swift
//  SpeakerAlert
//
//  Created by Thomas Elliott on 7/11/15.
//  Copyright © 2015 The Other Tom Elliott. All rights reserved.
//

import UIKit
import Colours

class SpeechViewController: UIViewController,
                            SpeechManagerDelegate,
                            SpeechManagerDependency,
                            ConfigurationManagerDependency,
                            ParameterManagerDependency,
                            AccessibilityTrackerDependency {

    var speechMan: SpeechManager
    var configMan: ConfigurationManager
    var accessibilityTracker: AccessibilityTracker

    var demoMode: Bool = false
    var demoState: DemoSpeechState?

    var tickTimer: NSTimer = NSTimer()

    // Initializers for the app, using property injection
    required init?(coder aDecoder: NSCoder) {
        speechMan = SpeechViewController._speechManager()
        configMan = SpeechViewController._configurationManager()
        accessibilityTracker = SpeechViewController._accessibilityTracker()
        super.init(coder: aDecoder)
    }
    override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        speechMan = SpeechViewController._speechManager()
        configMan = SpeechViewController._configurationManager()
        accessibilityTracker = SpeechViewController._accessibilityTracker()
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    // Initializer for testing, using initializer injection
    init(
        speechManager: SpeechManager,
        configurationManager: ConfigurationManager,
        accessibilityTracker: AccessibilityTracker
        ) {
        self.speechMan = speechManager
        self.configMan = configurationManager
        self.accessibilityTracker = accessibilityTracker
        super.init(nibName: nil, bundle: nil)
    }
    
    // MARK: Demo mode

    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if motion == .MotionShake {
            self.demoNextPhase()
        }
    }

    func demoNextPhase() {
        if self.demoMode && self.demoState?.running == SpeechRunning.RUNNING {
            self.demoState?.nextPhase()
            self.updateDisplay()
        }
    }

    // MARK: End demo mode

    var state: SpeechState? {
        get {
            if self.demoMode {
                return demoState
            }
            return speechMan.state
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        if self.demoMode {
            self.demoState = DemoSpeechState()
        }

        // Configure speech manager if not in demo mode
        if let profile = speechMan.profile where !self.demoMode {
            speechMan.addSpeechObserver(self)
            self.title = profile.name
        }
        
        if configMan.isAutoStartEnabled {
            self.resumePressed(self)
        }
        
        self.updateDisplay()
    }
    
    override func viewWillAppear(animated: Bool) {
        self.setShowTime(configMan.timeDisplayMode != TimeDisplay.None)
        if tickTimer.valid {
            tickTimer.invalidate()
        }
        tickTimer = NSTimer.scheduledTimerWithTimeInterval(
            0.1,
            target: self,
            selector: #selector(SpeechViewController.doTick(_:)),
            userInfo: nil,
            repeats: true)
        self.updatePhase()
        self.updateDisplay()

        self.setTabBarVisible(false, animated: animated)
    }

    func doTick(timer: NSTimer) {
        self.updatePhase()
        self.updateDisplay()
    }

    override func viewWillDisappear(animated: Bool) {
        setNavSatusVisible(true, animated: animated)
        speechMan.removeSpeechObserver(self)
        if tickTimer.valid {
            tickTimer.invalidate()
        }
    }

    func setNavSatusVisible(visible: Bool, animated: Bool) {
        if configMan.isHideStatusEnabled {
            UIApplication.sharedApplication().setStatusBarHidden(
                !visible,
                withAnimation: animated ? UIStatusBarAnimation.Slide : UIStatusBarAnimation.None)
        }
        self.navigationController?.setNavigationBarHidden(!visible, animated: animated)
    }
    
    func setShowTime(isVisible: Bool) {
    }

    func setRunningMode(isRunning: Bool) {
        self.setNavSatusVisible(false, animated: true)
        self.updateDisplay()

        // Prevent the screen dimming or locking when idle
        UIApplication.sharedApplication().idleTimerDisabled = isRunning
    }

    @IBAction func pausePressed(sender: AnyObject) {
        if self.demoMode {
            return
        }
        speechMan.pause()
    }

    @IBAction func stopPressed(sender: AnyObject) {
        if self.demoMode {
            return
        }
        speechMan.stop()
    }

    @IBAction func resumePressed(sender: AnyObject) {
        if self.demoMode {
            return
        }
        if self.state?.running == .RUNNING {
            speechMan.pause()
        } else {
            speechMan.start()
        }
    }

    func updatePhase() {
    }

    func phaseChanged(state: SpeechState, timer: SpeechTimer) {
        self.updatePhase()
    }

    var lastSpeechRecord: Speech?
    func speechComplete(state: SpeechState, timer: SpeechTimer, record: Speech) {
        // Leave this speech
        lastSpeechRecord = record
        self.performSegueWithIdentifier("SpeechComplete", sender: self)
    }

    func updateDisplay() {
    }

    func runningChanged(state: SpeechState, timer: SpeechTimer) {
        self.setRunningMode(state.running == SpeechRunning.RUNNING)
        if state.running == SpeechRunning.RUNNING {
            self.phaseChanged(state, timer: timer)
        }
        self.updateDisplay()
    }

    // MARK: - Navigation
    override func prepareForSegue(
        segue: UIStoryboardSegue,
        sender: AnyObject?) {
        setNavSatusVisible(true, animated: false)
        self.setTabBarVisible(true, animated: true)
        
        if let scvc: SpeechCompleteViewController =
            segue.destinationViewController as? SpeechCompleteViewController {
            scvc.speechRecord = self.lastSpeechRecord
        }
    }

}
