//
//  SpeechTimer.swift
//  SpeakerAlert
//
//  Created by Thomas Elliott on 6/13/15.
//  Copyright © 2015 The Other Tom Elliott. All rights reserved.
//

import Foundation

public class SpeechTimer : NSObject {
    
    var delegate : SpeechTimerDelegate?;
    
    var state : SpeechState {
        didSet {
            delegate?.phaseChanged(state, timer: self)
        }
    }
    
    private func setRunning(running : SpeechRunning){
        state = SpeechState(running: running, phase: self.state.phase, startTime: self.state.startTime, pauseInterval: self.state.pauseInterval)
    }
    
    private func setPhase(phase : SpeechPhase){
        state = SpeechState(running: self.state.running, phase: phase, startTime: self.state.startTime, pauseInterval: self.state.pauseInterval)
    }
    
    var timings : Profile;
    
    // Timers for tracking state changes
    var greenTimer : NSTimer?;
    var yellowTimer : NSTimer?;
    var redTimer : NSTimer?;
    var redBlinkTimer : NSTimer?;
    var tickTimer : NSTimer?
    
    init(withTimings timing : Profile){
        state = SpeechState()
        self.timings = timing;
    }
    
    /**
        Start this timer.

        If this timer was previously paused, start from the interval at which it was paused.
    */
    func start(){
        
        if(state.running != SpeechRunning.RUNNING){
            NSLog("Starting, pause interval = %g", self.state.pauseInterval);
            
            if(self.state.pauseInterval < NSTimeInterval(timings.green!)){
                greenTimer = NSTimer.scheduledTimerWithTimeInterval(NSTimeInterval(timings.green!) - self.state.pauseInterval, target: self, selector: "green:", userInfo: nil, repeats: false);
            }
            if(self.state.pauseInterval < NSTimeInterval(timings.yellow!)){
                yellowTimer = NSTimer.scheduledTimerWithTimeInterval(NSTimeInterval(timings.yellow!) - self.state.pauseInterval, target: self, selector: "yellow:", userInfo: nil, repeats: false);
            }
            if(self.state.pauseInterval < NSTimeInterval(timings.red!)){
                redTimer = NSTimer.scheduledTimerWithTimeInterval(NSTimeInterval(timings.red!) - self.state.pauseInterval, target: self, selector: "red:", userInfo: nil, repeats: false);
            }
            if(self.state.pauseInterval < NSTimeInterval(timings.redBlink!)){
                redBlinkTimer = NSTimer.scheduledTimerWithTimeInterval(NSTimeInterval(timings.redBlink!) - self.state.pauseInterval, target: self, selector: "redBlink:", userInfo: nil, repeats: false);
            }
            
            tickTimer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "tick:", userInfo: nil, repeats: true)
            
            self.state.startTime = NSDate();
            setRunning(SpeechRunning.RUNNING)
        }
    }
    
    /**
        Pause this timer.
    
        If the timer is not running, does nothing.
    
        When start() is next called, the timer will resume from the time at which it was paused.
    */
    func pause(){
        
        if(state.running == SpeechRunning.RUNNING){
            self.state.pauseInterval = self.state.pauseInterval + NSDate().timeIntervalSinceDate(self.state.startTime!);
            
            NSLog("Pausing with interval %g", self.state.pauseInterval);
            
            greenTimer?.invalidate();
            yellowTimer?.invalidate();
            redTimer?.invalidate();
            redBlinkTimer?.invalidate();
            tickTimer?.invalidate()
            setRunning(SpeechRunning.PAUSED)
        }
    }
    
    /**
        Stop this timer.
    
        If the timer is not running, does nothing.
    
        When start() is next called, the timer will start from zero.
    */
    func stop(){
        if(state.running != SpeechRunning.STOPPED){
            NSLog("Stopping");
            setRunning(SpeechRunning.STOPPED)

            greenTimer?.invalidate();
            yellowTimer?.invalidate();
            redTimer?.invalidate();
            redBlinkTimer?.invalidate();
            tickTimer?.invalidate()
            
            // Reset the timer
            self.state.pauseInterval = 0;
            self.state.startTime = nil;
        }
    }
    
    func green(timer: NSTimer!){
        setPhase(SpeechPhase.GREEN)
    }
    
    func yellow(timer: NSTimer!){
        setPhase(SpeechPhase.YELLOW)
    }
    
    func red(timer: NSTimer!){
        setPhase(SpeechPhase.RED)
    }
    
    func redBlink(timer: NSTimer!){
        setPhase(SpeechPhase.OVER_MAXIMUM)
    }
    
    func tick(timer: NSTimer!){
        delegate?.tick(SpeechState(running: state.running, phase: state.phase, startTime: state.startTime, pauseInterval: state.pauseInterval), timer: self)
    }
    
    func elapsed() -> NSTimeInterval {
        if let s : NSDate = self.state.startTime {
            return self.state.pauseInterval + NSDate().timeIntervalSinceDate(s)
        } else {
            return self.state.pauseInterval
        }
    }
    
}

protocol SpeechTimerDelegate {

    func phaseChanged(state: SpeechState, timer: SpeechTimer)
    func tick(state: SpeechState, timer: SpeechTimer)
    
}

